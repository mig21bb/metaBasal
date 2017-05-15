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
    var Peso:Float=0
    var Altura:Float=0
    var Hombre:Bool=true
    var Edad:Float=0
    var MetaBasal:Float=0
    
    init(Nombre:String,
         Peso:Float,
         Altura:Float,
         Hombre:Bool,
         Edad:Float) {
        self.Nombre=Nombre
        self.Peso=Peso
        self.Altura=Altura
        self.Hombre=Hombre
        self.Edad=Edad
        
        if(Hombre){
            self.MetaBasal=66.4730+(13.751*Peso)
            self.MetaBasal+=5.0033*Altura
            self.MetaBasal+=(6.75*Edad)
        }else{
            self.MetaBasal=655.1+(9.463*Peso)
            self.MetaBasal+=1.8*Altura
            self.MetaBasal-=4.6756*Edad
        }
        
    }
    
    
    
    
    
    
    
    
}

