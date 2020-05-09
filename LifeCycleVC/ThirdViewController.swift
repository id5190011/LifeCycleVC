//
//  ThirdViewController.swift
//  LifeCycleVC
//
//  Created by Valeriy Pokatilo on 09.05.2020.
//  Copyright © 2020 Valeriy Pokatilo. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
     override func viewDidLayoutSubviews() {
        printMessage()
    }
    
     override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        printMessage()
    }
    
     override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }

    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
