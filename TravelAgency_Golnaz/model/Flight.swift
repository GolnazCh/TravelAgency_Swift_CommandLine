//
//  Flight.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

class Flight: Trip{
    var flightNumber: String
    var distance: Double
    var departure: String
    
    var arrival: String
    
    var cost: Double{
        return 1000 + distance * 0.75
    }
    
    
    init(flightNumber: String, distance: Double, departure: String, arrival: String) {
        self.flightNumber = flightNumber
        self.distance = distance
        self.departure = departure
        self.arrival = arrival
        
    }
    
    func getTripDetails(){
        print("Flight \(self.flightNumber), Departing \(self.departure) and arriving \(self.arrival)")
    }
}
