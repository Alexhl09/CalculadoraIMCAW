//
//  Valor.swift
//  CalculadoraIMCAW
//
//  Created by Alejandro on 15/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var descripcion : String = ""
    var valorIMC : Float = 0
    
    init (d : String , v: Float)
    {
        descripcion = d
        valorIMC = v    }

}
