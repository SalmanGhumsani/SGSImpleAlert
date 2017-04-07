//
//  ViewController.swift
//  SGSimpleAlert
//
//  Created by AppsInvo  on 07/04/17.
//  Copyright © 2017 AppsInvo . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.hideDescriptionAlert(0.5)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func tapShowAlert(sender: AnyObject) {
        self.showDescriptionInAlert("This is simple alert extention based on the custom configuration. If you want to do something more fancy you can perform changes in SGSimpleAlert.swift or you can write me here salmanghumsani@gmail.com",title: "Description", animationDuration: 0.5, descFont: UIFont.systemFontOfSize(12))
    }
}

