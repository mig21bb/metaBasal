//
//  Persona.swift
//  metaBasal
//
//  Created by user128125 on 5/15/17.
//  Copyright © 2017 user128125. All rights reserved.
//

import Foundation

class Persona{
    
    var Nombre:String?
    var Peso:Float?
    var Altura:Int?
    var Hombre:Bool=true
    var Edad:Int?
    var MetaBasal:Float?
    
    init(Nombre:String,
         Peso:Float,
         Altura:Int,
         Hombre:Bool,
         Edad:Int) {
        self.Nombre=Nombre
        self.Peso=Peso
        self.Altura=Altura
        self.Hombre=Hombre
        self.Edad=Edad
        
        if(Hombre){
        self.MetaBasal=(66,4730+((13,751*Peso)+5,0033*Altura)+(6,75*Edad))
        }else{
            self.MetaBasal=(655,1+((9,463*Peso)+1,8*Altura)-(4,6756*Edad))
        }
        
    }
    
    
    
    
    
    
    
    
}

