//
//  Traveller.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

class Traveller{
    var name: String
    var passportNumber: Int?
    var phoneNumber: String
    var reservationsList : [Reservation] = [Reservation]()
    var customerBalance: Double
    
    var balance: Double{
        get{
            if reservationsList.isEmpty{
            return 0.0
        }
            
            var bal: Double = 0.0
            for reserve in self.reservationsList{
                bal += reserve.trip.cost
            }
            return bal
        }
        set{
            customerBalance = newValue + customerBalance
        }
    }
    
    init(name: String, phoneNumber: String) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.customerBalance = 0.0
    }
    
    init(name: String, passportNumber: Int? = nil, phoneNumber: String) {
        self.name = name
        self.passportNumber = passportNumber
        self.phoneNumber = phoneNumber
        self.customerBalance = 0.0
    }
}
