//
//  ViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/1/18.
//  Copyright © 2018 Bryan Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

