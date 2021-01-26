//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by George  on 20/01/2021.
//
/**
 This lets one create view controllers from a storyboard. This helps getting all the storyboard code in a separate protocol
 and makes the code cleaner and gives one flexibility incase they change their minds later on.
 
 First, when you use NSStringFromClass(self) to find the class name of whatever view controller you requested, you'll get back YourAppName.YourViewController. We need to write a little code to split that string on the dot in the center, then use the second part as the actual class name
 
 Second, Whenever you add a view controller to your Storyboard, make sure you set its storyboard identifier to whatever class name you gave it.
 */

import UIKit

protocol Storyboarded {
    //This will return an instance of whatever class you call it on
   static func instantiate() -> Self
}


extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
       let id = String(describing: self)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
}
