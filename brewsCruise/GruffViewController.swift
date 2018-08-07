//
//  GruffViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/31/18.
//

import UIKit

class GruffViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var journalView: UIView!
    @IBOutlet weak var bioView: UIView!
    @IBOutlet weak var aboutView: UIView!
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchControl(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            aboutView.isHidden = false;
            bioView.isHidden = true;
            journalView.isHidden = true;
        case 1:
            aboutView.isHidden = true;
            bioView.isHidden = false;
            journalView.isHidden = true;
        case 2:
            aboutView.isHidden = true;
            bioView.isHidden = true;
            journalView.isHidden = false;
        default:
            break
        }
    }
    
}
