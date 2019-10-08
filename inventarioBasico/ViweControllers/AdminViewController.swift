//
//  AdminViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class AdminViewController: UIViewController {
    
    @IBOutlet weak var addNew: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var stats: UIButton!
    @IBOutlet weak var exit: UIButton!
    @IBOutlet weak var search: UIButton!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        style()
    }
    
    func style(){
        
        Utilities.styleFilledButton(addNew)
        Utilities.styleHollowButton(add)
        Utilities.styleFilledButton(stats)
        Utilities.styleHollowButton(exit)
        Utilities.styleFilledButton(search)
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
