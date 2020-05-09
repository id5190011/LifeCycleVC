//
//  ViewController.swift
//  LifeCycleVC
//
//  Created by Valeriy Pokatilo on 09.05.2020.
//  Copyright © 2020 Valeriy Pokatilo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Проверка вызова
        printMessage()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let dvc = segue.destination as! SecondViewController
            dvc.someProperty = "someProperty"
        }
    }
}

