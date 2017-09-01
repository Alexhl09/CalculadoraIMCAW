//
//  InterfaceController.swift
//  CalculadoraIMCAW WatchKit Extension
//
//  Created by Alejandro on 15/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var pesoActual : Float = 1
    var alturaActual : Float = 1
    @IBOutlet var valorPeso: WKInterfaceLabel!
    @IBOutlet var valorAltura: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    
    @IBAction func calculo() {
        
        let resultado = calcuoIMC(p: pesoActual, e: alturaActual)
        let valorContexto = Valor(d : " Peso normal ", v: resultado)
        pushController(withName: "IdentificadorValor", context: valorContexto)
        print (resultado)
    }
    
    func calcuoIMC (p : Float, e : Float) -> Float {
        let IMC = p/(e*e)
        return IMC
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevoValorPeso(_ value: Float) {
        pesoActual = value
        valorPeso.setText(String(value))
    }
    @IBAction func nuevoValorAltura(_ value: Float) {
        alturaActual = (value/100)
        valorAltura.setText(String(value/100))
    }
}
