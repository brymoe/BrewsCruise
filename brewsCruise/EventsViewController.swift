//
//  EventsViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/9/18.
//

import UIKit

class EventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Downtown Sounds Hyperlink
    @IBAction func dtsoundsButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.downtownbellingham.com/downtown-sounds")! as URL, options: [:], completionHandler: nil)
    }
    
    //Twin Sisters Hyperlink
    @IBAction func twinsisButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.twinsistersbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    //SchweinHaus Hyperlink
    @IBAction func schweinButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/dasschweinhaus/")! as URL, options: [:], completionHandler: nil)
    }
    
    
}
