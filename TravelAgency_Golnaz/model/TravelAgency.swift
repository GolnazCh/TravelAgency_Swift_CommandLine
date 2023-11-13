//
//  TravelAgency.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

class TravelAgency{
    func makeReservation(for traveller:Traveller, date:String, trip:Trip) -> Bool{
        
        if(trip is Train){
            let newReserve:Reservation = Reservation(date: date, trip: trip)
            traveller.reservationsList.append(newReserve)
            return true
        }
        else if(trip is Flight) {
            if (traveller.passportNumber == nil)
            {
                print("The reservation FAILED! The traveller must have passport number for reserving flight trips")
                return false
            }
            else{
                let pn:Int = traveller.passportNumber!
                if(pn >= 1000 && pn <= 9999){
                    let newReserve:Reservation = Reservation(date: date, trip: trip)
                    traveller.reservationsList.append(newReserve)
                    return true
                }
                else{
                    print("The reservation FAILED! Invalid passport number: \(pn)")
                    return false
                }
            }
        }else{
            print("The reservation FAILED! Invalid data")
            return false
        }
        
    }
}
