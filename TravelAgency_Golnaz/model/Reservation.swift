//
//  Reservation.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

class Reservation{
    
    var date: String
    var trip:Trip
    
    var reservationId: String{
        if self.trip is Train{
            return "\(Int.random(in: 500...700))-T"
        }
        else{
            return "\(Int.random(in: 500...700))-F"
        }
    }
    
    init(date: String, trip: Trip) {
        self.date = date
        self.trip = trip
    }
    
    func display(){
        if self.trip is Train{
            print("Reservation ID: \(self.reservationId)")
            print("Date of Departure: \(self.date)")
            self.trip.getTripDetails()
        }
        if self.trip is Flight{
            print("Reservation ID: \(self.reservationId)")
            print("Date of Departure: \(self.date)")
            self.trip.getTripDetails()
        }
    }
    
    
}
