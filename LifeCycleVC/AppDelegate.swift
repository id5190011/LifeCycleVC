//
//  AppDelegate.swift
//  LifeCycleVC
//
//  Created by Valeriy Pokatilo on 09.05.2020.
//  Copyright © 2020 Valeriy Pokatilo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?

    // Самый первый метод
    // Загрузка приложения завершена
    // Срабатывает после загрузки приложения в момент когда приложение уже активно
    // Тут делают первичную настройку приложения, например:
    // - определить интерфейс в зависимости от устройства (iPhone / iPad)
    // - определять стартовый ViewController (без Сториборд)
    // - инициализация Push-уведомлений
    // - загрузка первичных данных из базы (первый запуск)
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Проверка вызова
        print(#function)

        // Переопределение RootViewController делается в SceneDelegate

        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Проверка вызова
        print(#function)

        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    // Завершение приложения
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Проверка вызова
        print(#function)

        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

