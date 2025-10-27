//
//  RgbStat.swift
//  pokedex2
//
//  Created by Aluno Mack on 23/10/25.
//
import Foundation


func rgbStat(stat: Int)-> [Double]{

    var aux = Double(stat)
    var x: Double = 0.00
    var r = 193.00
    var g = 38.00
    var b = 38.00

    if(aux <= 62){

        x = (100*aux/250)
        g += x * (465/100)
        return [r,g,b]
    }else if(aux <= 124){
        
        g += 155
        aux = aux - 62
        x = (100*aux/250)
        r = r - (x*(465/100))
        return[r,g,b]
    }else if (aux <= 186) {

        g += 155
        r -= 155
        aux -= 124
        x = (100*aux/250)
        b += x*(465/100)
        return [r,g,b]
    }else{

        aux -= 186
        x = (100*aux/250)
        g = 193 - (b)*(465/100)
        b = 193
        r = 38
        return [r,g,b]
    }
}
