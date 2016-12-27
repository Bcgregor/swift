//
//  AppDelegate.swift
//  Msg-Notification
//
//  Created by 이재백 on 2016. 12. 26..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 경고창, 배지, 사운드를 사용하는 알림 환경 정보를 생성하고, 이를 애플리케이션에 저장
        let setting = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
        // 매개 변수로 전달받지 않을 경우 let application = UIApplication.shared 를 통해 불러온다. 
        // 앱 하나당 하나의 UIApplication 인스턴스만 존재(싱글턴)하기 떄문에 이런 방법이 가능하다.
        application.registerUserNotificationSettings(setting)
        return true
    }

    // 앱이 활성화 상태를 잃었을 때 실행되는 메소드. 
    // 앱 사용하는 도중에 전화가 오거나, SMS가 도착하는 경우, 사용자가 홈 버튼을 눌러 앱을 백그라운드로 내렸을 경우 등
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        if #available(iOS 10.0, *) {
            // iOS 10 버전에서 돌아갈 새로운 방식의 로컬 알림 구현 코드가 들어갈 예정
            // 새로운 방식과 구 방식의 로컬 알림을 둘 다 적용시킬 수 있는데, 이는 개발자의 선택 사항이다.
            
            // 알림 설정 내용을 확인
            let setting = application.currentUserNotificationSettings
            guard setting?.types != .none else {
                print("Can't Schedule")
                return
            }
            
            // 알림 콘텐츠 객체
            let nContent = UNMutableNotificationContent()
            
            nContent.badge = 1
            nContent.body = "어서어서 들어오세요!!"
            nContent.title = "로컬 알림 메시지[타이틀]"
            nContent.subtitle = "서브 타이틀"
            nContent.sound = UNNotificationSound.default()
            
            // 알림 발송 조건 객체
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            // 알림 요청 객체
            let request = UNNotificationRequest(identifier: "wakeup", content: nContent, trigger: trigger)

            // 노티피케이션 센터에 추가
            UNUserNotificationCenter.current().add(request)
            
        } else {
            // 구 방식의 로컬 알림
            
            // 알림 설정 확인
            let setting = application.currentUserNotificationSettings
            
            // 알림 설정이 되어 있지 않다면 로컬 알림을 보내도 받을 수 없으므로 종료함
            guard setting?.types != .none else {
                print("Can't Schedule")
                return
            }
            
            // 로컬 알람 인스턴스 설정
            let noti = UILocalNotification()
            
            noti.fireDate = Date(timeIntervalSinceNow: 10) // 10초 후 발송
            noti.timeZone = TimeZone.autoupdatingCurrent // 현재 위치에 따라 타임존 설정
            noti.alertBody = "얼른 다시 접속하세요!!" // 표시될 메시지
            noti.alertAction = "학습하기" // 잠금 상태일 때 표시될 액션
            noti.applicationIconBadgeNumber = 1 // 앱 아이콘 모서리에 표시될 배지
            noti.soundName = UILocalNotificationDefaultSoundName // 로컬 알람 도착시 사운드
            noti.userInfo = ["name": "홍길동"] //로컬 알람 실행시 함께 전달하고 싶은 값. 화면에는 표시되지 않음
            
            // 생성된 알람 객체를 스케쥴러에 등록
            application.scheduleLocalNotification(noti)
        }
    }

    func applicationxzEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

