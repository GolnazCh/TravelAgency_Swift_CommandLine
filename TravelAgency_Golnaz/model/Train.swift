//
//  Train.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

enum CarriageType{
    case SEATING
    case SLEEPER
}

class Train: Trip{
    
    var days: Int
    var carriageType: CarriageType = CarriageType.SEATING
    
    var departure: String
    
    var arrival: String
    
    var costPerDay: Double{
        if(self.carriageType == CarriageType.SLEEPER){
            return  Double(((100 * self.days) + (200 * self.days)))
        }
        else{
            return  Double(200 * self.days)
        }
            
    }
    
    var cost: Double{
        return (self.costPerDay * Double(self.days))
     }
    
    init(days: Int, departure: String, arrival: String) {
        self.days = days
        self.departure = departure
        self.arrival = arrival
    }
    
    init(days: Int, carriageType: CarriageType, departure: String, arrival: String) {
        self.days = days
        self.carriageType = carriageType
        self.departure = departure
        self.arrival = arrival
    }
    
    func getTripDetails() {
        print("Departing: \(self.departure), Arriving: \(self.arrival), Carriage Type: \(self.carriageType)")
    }
    
    
}
