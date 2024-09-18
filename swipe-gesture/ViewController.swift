//
//  ViewController.swift
//  swipe-gesture
//
//  Created by Rahul Sharma on 12/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.isUserInteractionEnabled = true
        
        
        var singleTap = UITapGestureRecognizer(target: self, action: #selector(tapForSingle))
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(singleTap)
        
        singleTap = UITapGestureRecognizer(target: self, action: #selector(tapForTwo))
       singleTap.numberOfTapsRequired = 1
       singleTap.numberOfTouchesRequired = 2
       self.view.addGestureRecognizer(singleTap)
        
        
        var swipe = UISwipeGestureRecognizer(target: self, action: #selector(tapForSwipe))
        swipe.direction = .down
        swipe.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(swipe)
        
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(tapForSwipe))
        swipe.direction = .up
        swipe.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(tapForSwipe))
        swipe.direction = .left
        swipe.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(tapForSwipe))
        swipe.direction = .right	
        swipe.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(swipe)
    }
    
    @objc private func tapForSingle(){
        //print("Single Tap")
    }
    
    @objc private func tapForTwo(){
       // print("Two Tap")
    }
    
    @objc private func tapForSwipe(sender : UISwipeGestureRecognizer){
        if sender.direction == .down
        {
            print("Swipe down")
        }
        else if sender.direction == .up
        {
            print("Swipe UP")
        }
        else if sender.direction == .left
        {
            print("Swipe left")
        }
        else if sender.direction == .right
        {
            print("Swipe right")
        }
        
    }

}

