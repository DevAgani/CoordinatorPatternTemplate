//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by George  on 20/01/2021.
//

import UIKit
/**
 Firstly we need a Coordinator protocol that all our coordinators will conform to.
 Although there are alot of things you could do with this, we'll stick to the bare minimum
 - A property to store any child coordinators
 - A property to store the navigation controller that's being used to present view controllers. Even if you don't
 show the navigation bar at the top, using a navigation controller is the easiest way to present view controllers
 - A start() method to make the coordinator take control. This allows us to create a coordinator fully and activate it only when we're ready
 */

protocol Coordinator {
    
    var childCoordinators : [Coordinator]  { get set }
    
    var navigationController : UINavigationController {get set}
    
    func start()
}
