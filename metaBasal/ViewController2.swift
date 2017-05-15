//
//  ViewController2.swift
//  metaBasal
//
//  Created by user128125 on 5/15/17.
//  Copyright © 2017 user128125. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var subject:Persona!
    
    
    @IBOutlet weak var nombreLabel: UILabel!
    
    @IBOutlet weak var resultadoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultadoLabel.text=subject.Nombre
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
