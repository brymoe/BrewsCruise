//
//  BoundaryBayViewController.swift
//  brewsCruise
//
//  Created by Bryan Moore on 7/12/18.
//

import UIKit

class BoundaryBayViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var journalView: UIView!
    @IBOutlet weak var eventsView: UIView!
    
    @IBAction func goBackButton(_ sender: UIButton) {
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
    
    @IBAction func viewSwitch(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            aboutView.isHidden = true;
            journalView.isHidden = true;
            eventsView.isHidden = false;
        case 1:
            aboutView.isHidden = true;
            journalView.isHidden = false;
            eventsView.isHidden = true;
        case 2:
            aboutView.isHidden = false;
            journalView.isHidden = true;
            eventsView.isHidden = true;
        default:
            break
        }
    }
    

}
