//
//  LocalNotificationBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 16.07.2022.
//

import SwiftUI
import UserNotifications
import CoreLocation

class NotifitaionManager {
    static let instance = NotifitaionManager()
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(
            options: options) { success, error in
                if let error = error {
                    print("ERROR: \(error)")
                } else {
                    print("SUCCESS")
                }
            }
    }
    
    func sheduleNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification!"
        content.subtitle = "This was sooooo easy!"
        content.sound = .default
        content.badge = 1
        
        // MARK: Time
        // after 10 seconds
        let timeTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
        
        // MARK: Calendar
        // every week on saturday in 14:14
        /*
         sunday - 1
         monday - 2
         tuesday - 3
         wednesday - 4
         thursday - 5
         friday - 6
         saturday - 7
         */
        var dateComponents = DateComponents()
        dateComponents.hour = 14
        dateComponents.minute = 14
        dateComponents.weekday = 7
        let calendarTrigger = UNCalendarNotificationTrigger(
            dateMatching: dateComponents,
            repeats: true)
        
        // MARK: Location
        let coordinates = CLLocationCoordinate2D(
            latitude: 40.00,
            longitude: 50.00)
        let region = CLCircularRegion(
            center: coordinates,
            radius: 100,
            identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = true
        let locationTrigger = UNLocationNotificationTrigger(region: region, repeats: true)
        
        // MARK: Notification request
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: calendarTrigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

struct LocalNotificationBootcamp: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Request permission") {
                NotifitaionManager.instance.requestAuthorization()
            }
            Button("Shedule notification") {
                NotifitaionManager.instance.sheduleNotification()
            }
            Button("Cancel notification") {
                NotifitaionManager.instance.cancelNotification()
            }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotificationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationBootcamp()
    }
}
