//
//  ViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var admin: UIButton!
    @IBOutlet weak var employee: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        style()
    }

    func style(){
        
        Utilities.styleFilledButton(admin)
        Utilities.styleHollowButton(employee)
    }

}

