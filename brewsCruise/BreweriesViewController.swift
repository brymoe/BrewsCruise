//
//  BreweriesViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/2/18.
//

import UIKit

class BreweriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Aslan Button Link
    @IBAction func aslanLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://aslanbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Boundary Bay Link
    @IBAction func boundaryBayLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.bbaybrewery.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Chuckanut Link
    @IBAction func chuckanutLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://chuckanutbreweryandkitchen.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Gruff Link
    @IBAction func gruffLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://www.gruff-brewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Illuminati Link
    @IBAction func illuminatiLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/IlluminatiBeer/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Kulshan Link
    @IBAction func kulshanLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://kulshanbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Menace Link
    @IBAction func menaceLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.menace-industries.com/brewery/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Stones Throw Link
    @IBAction func stonesLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://www.stonesthrowbrewco.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Structures Link
    @IBAction func structuresLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://www.structuresbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    //Wander Link
    @IBAction func wanderLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://wanderbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    
    
    

}
