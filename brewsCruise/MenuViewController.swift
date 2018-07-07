//
//  MenuViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/2/18.
//

import UIKit

class MenuViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Downtown Sounds HyperLink
    @IBAction func websiteButton1(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.downtownbellingham.com/downtown-sounds")! as URL, options: [:], completionHandler: nil)
    }
    
    //Twin Sisters Hyperlink
    @IBAction func websiteButton2(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.twinsistersbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Schweinhaus Hyperlink
    @IBAction func websiteButton3(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/dasschweinhaus/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Email Subscription Button Link
    
    //Logout Button
    @IBAction func logoutButton(_ sender: UIButton) {
        performSegue(withIdentifier: "logoutSegue", sender: self)
    }
    
    
    

}