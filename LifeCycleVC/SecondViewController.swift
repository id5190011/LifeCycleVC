//
//  SecondViewController.swift
//  LifeCycleVC
//
//  Created by Valeriy Pokatilo on 09.05.2020.
//  Copyright © 2020 Valeriy Pokatilo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // Свойства загружаются в память раньше чем View
    var someProperty: String! {
        didSet {
            print("Инициализация someProperty = \(someProperty ?? "nil")")
        }
    }
    
    @IBOutlet var openThirdVC: UIButton! {
        didSet {
            print("Инициализация кнопки openThirdVC = \(openThirdVC.currentTitle ?? "nil")")
        }
    }

    
    // Срабатывает после загрузки View
    // В этом методе можно делать большинство визуальных настроек для элементов
    // Кроме некоторых настроек касающихся размеров,
    // так как тут еще не измеcтен размер экрана (например CornerRadius)
    // а так же мотодов которые должны отработаться после загрузки представления
    // ViewDidLoad срабатывает всего 1 раз когда View загружается в память
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second VC"
        
        printMessage()
    }
    
    // Срабатывает перед отображением View на экране (Вью сейчас появится - пер.)
    // Требует обязательного вызова родительского метода (через super)
    // Вызывается многоратно, например при возврате с другого VC
    // Тут можно обновлять методы пользовательского интефейса
    // Например обновить вид после изменения настроек приложения на другом экране
    // После этого метода становятся известры геометрические размеры элементов
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Срабатывает перед тем, как размер View поменяется под размер экрана
    // РАЗМЕРЫ ИЗВЕСТНЫ НО НЕ ЗАДАНЫ
    // Вызвается 2 раза в зависимости от ориентации экрана
    // Если не используется Auto Layout (Storyboard) то все размеры и положения можно задать тут
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    
    // Тут срабатывает Auto Layout
    
    
    // Срабатывает после того, как размер View изменился под размер экрана
    // РАЗМЕРЫ УЖЕ ЗАДАНЫ
    // Вызвается 2 раза в зависимости от ориентации экрана
    // Тут можно сохранять последние состояния элементов
    // например положение ScrollView или или выделение ячейки в TableView
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    
    // Срабатывает после появления View на экране
    // Требует обязательного вызова родительского метода (через super)
    // Срабатывает каждый раз когда появляется View (неоднократно)
    // Не лучшее место для хранения каких-либо свойств (возможна утечка памяти)
    // Можно размещать ресурсоемкие операции связанные с получением данных
    // Используется редко
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    
    // Срабатывает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        printMessage()
    }
    
    
    // Срабатывает перед тем как View закроется
    // Тут убирают статус FirstResponder, ставят на паузу выполняемые действия,
    // отменяют стиль и ориентацию - все что задаеься в методе viewWillAppear
    // Можно почистить данные, обнулить кэш
    // Вызывается ПЕРЕД анимацией закрытия View
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    
    // Срабатывает после закрытия View
    // Удаление View из иерархии, факт исчезновения экрана произошел
    // Удаляются ненужные данные, приложения ставятся на паузу
    // Вызывается ПОСЛЕ анимацией закрытия View
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}

// Вывод названия метода из которого функция вызывается
extension UIViewController {
    func printMessage(line: Int = #line, function: String = #function, file: String = #file) {
        print("------------------------------------------------")
        print("Title:    \(title ?? "nil title")")
        print("Function: \(function)")
        print("Line:     \(line)")
        //print("File:     \(file)!")
    }
}
