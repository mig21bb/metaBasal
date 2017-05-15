//
//  ViewController.swift
//  metaBasal
//
//  Created by user128125 on 5/15/17.
//  Copyright © 2017 user128125. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var subject:Persona!

    @IBOutlet weak var fieldNombre: UITextField!
    
    @IBOutlet weak var fieldPeso: UITextField!
    
    @IBOutlet weak var fieldAltura: UITextField!
    
    @IBOutlet weak var fieldEdad: UITextField!
    
    @IBOutlet weak var fieldSexo: UISegmentedControl!
    
    @IBOutlet weak var fieldShowName: UISwitch!
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fieldEdad.text="18"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doCalcular(_ sender: Any) {
        let nombre:String = fieldNombre.text!
        print("nombre= "+nombre)
        let sub:Persona = Persona.init(Nombre: fieldNombre.text!,
                                       Peso: Float.init(fieldPeso.text!)!,
                                       Altura: Float.init(fieldAltura.text!)!,
                                       Hombre: true,
                                       Edad: Float.init(fieldEdad.text!)!
          )
        
        subject=sub;
        
        /*subject.Nombre=fieldNombre.text
        subject.Peso=Float.init(fieldPeso.text!)!
        subject.Altura=Float.init(fieldAltura.text!)!
        subject.Edad=Float.init(fieldEdad.text!)!
        */
        performSegue(withIdentifier: "calculaBasal", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculaBasal" {
            
            //Siendo bas, un objeto de la clase Basal, tanto en ViewController como
            // en ViewController2
            let destinationViewController=segue.destination as! ViewController2
            destinationViewController.subject=subject
        }
}
}
