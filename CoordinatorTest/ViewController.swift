//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by George  on 20/01/2021.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Amazing App"
    }

    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
}

