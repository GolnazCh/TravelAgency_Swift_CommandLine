//
//  Trip.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

protocol Trip{
    var departure:String {get set}
    var arrival:String {get set}
    var cost:Double {get}
    
    func getTripDetails()
    
}
