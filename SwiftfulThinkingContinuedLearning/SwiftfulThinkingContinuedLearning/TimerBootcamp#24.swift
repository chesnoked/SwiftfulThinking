//
//  TimerBootcamp#24.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 29.07.2022.
//

import SwiftUI

struct TimerBootcamp_24: View {
    
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    
    // Current Time
    /*
    @State var currentDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        //formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
     */
    
    // Countdown
    /*
    @State var count: Int = 10
    @State var finishedText: String? = nil
     */
    
    // Countdown to date
    /*
    @State var timeRemaining: String = ""
    let futureDate: Date = Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date()
    
    func updateTimeRemaining() {
        let remaining = Calendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: futureDate)
        let hour = remaining.hour ?? 0
        let minute = remaining.minute ?? 0
        let second = remaining.second ?? 0
        timeRemaining = "\(hour):\(minute):\(second)"
    }
     */
    
    // Animation counter
    @State var count: Int = 1
    
    var body: some View {
        
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.indigo, Color.purple]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
            .ignoresSafeArea()
            
            TabView(selection: $count) {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .tag(1)
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .tag(2)
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.pink)
                    .tag(3)
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.purple)
                    .tag(4)
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.indigo)
                    .tag(5)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 250)
            //.shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
            .padding(.horizontal, 30)
            .tabViewStyle(PageTabViewStyle())
            
//            VStack {
////                Text("\(count)")
////                    .font(.system(size: 100, weight: .semibold, design: .rounded))
////                    .foregroundColor(.white)
//
//                HStack(spacing: 15) {
//                    Circle()
//                        .offset(y: count == 1 ? -20 : 0)
//                    Circle()
//                        .offset(y: count == 2 ? -20 : 0)
//                    Circle()
//                        .offset(y: count == 3 ? -20 : 0)
//                }
//                .frame(width: 200)
//                .foregroundColor(.white)
//            }
            
//            Text(dateFormatter.string(from: currentDate))
//            Text(timeRemaining)
//                .font(.system(size: 100, weight: .semibold, design: .rounded))
//                .foregroundColor(.white)
//                .lineLimit(1)
//                .minimumScaleFactor(0.1)
        }
//        .onReceive(timer) { value in
//            currentDate = value
//        }
        
//        .onReceive(timer) { _ in
//            if count <= 1 {
//                finishedText = "WoW!"
//            } else {
//                count -= 1
//            }
//        }
        
//        .onReceive(timer) { _ in
//            updateTimeRemaining()
//        }
//        .onReceive(timer) { _ in
//            withAnimation(.easeInOut(duration: 1.0)) {
//                count = count == 3 ? 0 : count + 1
//            }
//
////            if count == 3 {
////                count = 0
////            } else {
////                count += 1
////            }
//        }
        .onReceive(timer) { _ in
            withAnimation(.easeInOut(duration: 1.0)) {
                count = count == 5 ? 1 : count + 1
            }
        }
    }
}

struct TimerBootcamp_24_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp_24()
    }
}
