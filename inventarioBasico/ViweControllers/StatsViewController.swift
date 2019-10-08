//
//  StatsViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    
    
    //botones, etc.
    
    @IBOutlet weak var MejorVendidoLabel: UILabel!
    
    @IBOutlet weak var PeorVendidoLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MejorVendidoLabel.alpha = 0
        PeorVendidoLable.alpha = 0
        
                let controller: AgregarNuevoViewController = AgregarNuevoViewController()
        
        let tupla = controller.stats()
        
        MejorVendidoLabel.text = "The best selling product is \(tupla.0), with \(tupla.1) sales"
        
        PeorVendidoLable.text = "The worst selling product is \(tupla.2) with \(tupla.3) sales"
        
        MejorVendidoLabel.alpha = 1
        PeorVendidoLable.alpha = 1
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
