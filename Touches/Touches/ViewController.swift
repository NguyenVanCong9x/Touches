//
//  ViewController.swift
//  Touches
//
//  Created by Nguyen Van Cong on 12/28/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var ball: UIImageView!
    @IBOutlet weak var RedView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
    }
//   Touch Event and View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
//            let currentPointofView = touch.location(in: view)
//            print("View point (\(currentPointofView.x),\(currentPointofView.y))")
//
//            let currentPointofRedView = touch.location(in: RedView)
//            print("RedView point (\(currentPointofRedView.x),\(currentPointofRedView.y))")
            if touch.view == RedView {
                print("inside View")
            } else {
                print("outside View")
            }
        }
    }
// ToucheMoved(di chuyen doi tuong)
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if touch.view == ball {
                let location = touch.location(in: view)
                ball.center = location
                
            }
        }
    }
}


