//
//  SecondViewController.swift
//  PassData
//
//  Created by Илья Гайворонский on 10.12.2020.
//

import UIKit

class SecondViewController: UIViewController {

    var login : String?
    
    @IBOutlet weak var label: UILabel!
    @IBAction func backToAuthTap(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        label.text = "Hello, \(login)!"
    }
    
}
