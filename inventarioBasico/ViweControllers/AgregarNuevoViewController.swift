//
//  AgregarNuevoViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class AgregarNuevoViewController: UIViewController {
    
    // variables
    var inventario:[(producto: String,
        cantidad: Int, ventas: Int)] = [
            (producto: "queso", cantidad: 10, ventas: 200),
            (producto: "pizza", cantidad: 23, ventas: 37),
            (producto: "caramelos", cantidad: 50, ventas: 25),
            (producto: "leche", cantidad: 267,ventas: 150),
            (producto: "carne", cantidad:30, ventas: 30 )
    ]
    
    var nuevoProductoNombre = ""
    
    var nuevoProductoCantidadStr = ""
    
    var nuevoProductoCantidadInt: Int?
    
    
    
    
    //Botones, etc.
    
    @IBOutlet weak var NombreProducto: UITextField!
    
    @IBOutlet weak var CantidadProducto: UITextField!
    
    
    @IBOutlet weak var GuardarButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
        
        ErrorLabel.alpha = 0
        style()
    }
    
    func style (){
        
        Utilities.styleTextField(NombreProducto)
        Utilities.styleTextField(CantidadProducto)
        Utilities.styleFilledButton(GuardarButton)
        
    }
    
    
    
    @IBAction func GuardarButton(_ sender: UIButton) {
        
        nuevoProductoNombre = NombreProducto.text!
        
        nuevoProductoCantidadStr = CantidadProducto.text!
        
        if let nuevoProductoCantidadInt = Int(nuevoProductoCantidadStr){
            
            inventario.append((producto: nuevoProductoNombre, cantidad: nuevoProductoCantidadInt, ventas: 0))
            
            if ErrorLabel.alpha == 1{
                
                ErrorLabel.alpha = 0
            }
            
        }else {
            
            ErrorLabel.alpha = 1
        }
        
    }
    

    public func busqueda(nombreProducto: String) -> Int {
        
 
        
        for productos in inventario{
            
            if productos.producto == nombreProducto {
                
                return productos.cantidad
            }
            
        }
        
        return -1
    }
    
    
    public func stats() -> (mejor: String, mCantidad: Int, peor: String, pCantidad: Int ) {
        
        var nomMejor = ""
        var cantMejor = 0
        
        for productos in inventario{
            
            if productos.ventas > cantMejor {
                cantMejor = productos.ventas
                nomMejor = productos.producto
            }
            
        }
        
        var nomPeor = ""
        var cantPeor = cantMejor
           
        for productos in inventario{
            
            if productos.ventas < cantPeor {
                cantPeor = productos.ventas
                nomPeor = productos.producto
            }
            
            
           }
            
        return (nomMejor, cantMejor, nomPeor, cantPeor)
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
