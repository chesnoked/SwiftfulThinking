//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 01.07.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
 
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        
        ZStack {
            
            switch onboardingState {
            case 0:
                welcomeSection
                    .transition(transition)
            case 1:
                addNameSection
                    .transition(transition)
            case 2:
                addAgeSection
                    .transition(transition)
            case 3:
                addGenderSection
                    .transition(transition)
            default:
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.green)
            }

            VStack {
                
                Spacer()
                bottomButton
            }
            .padding()
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
 
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal, 50)
            .background(Color.black)
            .cornerRadius(25.0)
            .shadow(color: .black, radius: 10, x: 0, y: 0)
            .frame(maxWidth: .infinity)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        
        VStack {
            
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.white.opacity(0.7))
                .padding()
            
            Text("Find your match".uppercased())
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                //.padding()
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            
            Text("This is #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .foregroundColor(.white)
                .fontWeight(.medium)
                .padding(15)
            
            Spacer()
        }
        .padding()
        .padding(.vertical, 30)
    }
    
    private var addNameSection: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
            
            Text("What is your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
    
    private var addAgeSection: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
            
            Text("What is your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
        }
        .padding()
    }
    
    private var addGenderSection: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
            
            Text("What is your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker(
                selection: $gender,
                label:
                    Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                ,
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-binary").tag("Non-Binary")
                })
            .pickerStyle(MenuPickerStyle())
            
            Spacer()
        }
        .padding()
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long!😘")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward!")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
