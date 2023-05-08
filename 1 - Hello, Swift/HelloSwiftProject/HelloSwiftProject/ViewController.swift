//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by Dahye Choi on 2023/03/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func ChangeLabel(_ sender: Any) {
        lbl.text = "Hello, Swift"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

