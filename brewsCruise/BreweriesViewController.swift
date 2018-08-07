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
    
    //Aslan Button Links
    @IBAction func aslanButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://aslanbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func aslanSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "aslanSegue", sender: self)
    }
    
    //Boundary Bay Links
    @IBAction func boundaryButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.bbaybrewery.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func boundarySegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "boundarybaySegue", sender: self)
    }
    
    //Chuckanut Link
    @IBAction func chuckanutButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://chuckanutbreweryandkitchen.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func chuckanutSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "chuckanutSegue", sender: self)
    }
    
    //Gruff Link
    @IBAction func gruffButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://www.gruff-brewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func gruffSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "gruffSegue", sender: self)
    }
    
    //Illuminati Link
    @IBAction func illuminatiButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/IlluminatiBeer/")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func illuminatiSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "illuminatiSegue", sender: self)
    }
    

    //Kulshan Link
    @IBAction func kulshanButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://kulshanbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func kulshanSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "kulshanSegue", sender: self)
    }
    
    //Menace Link
    @IBAction func menaceButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.menace-industries.com/brewery/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func menaceSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "menaceSegue", sender: self)
    }
    
    //Stones Throw Link
    @IBAction func stonesthrowButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://www.stonesthrowbrewco.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func stonesthrowSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "stonesthrowSegue", sender: self)
    }
    

    //Structures Link
    @IBAction func structuresButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://www.structuresbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func structuresSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "structuresSegue", sender: self)
    }
    
    //Wander Link
    @IBAction func wanderButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://wanderbrewing.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func wanderSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "wanderSegue", sender: self)
    }

}
