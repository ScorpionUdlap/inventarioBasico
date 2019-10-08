//
//  EmpleadoViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class EmpleadoViewController: UIViewController {

    @IBOutlet weak var search: UIButton!
    @IBOutlet weak var exit: UIButton!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        style()
    }
    
    func style(){
        Utilities.styleFilledButton(search)
        Utilities.styleHollowButton(exit)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
