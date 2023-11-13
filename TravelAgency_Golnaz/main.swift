//
//  main.swift
//  TravelAgency_Golnaz
//
//  Created by Golnaz Chehrazi on 2023-05-23.
//

import Foundation

var fl1: Flight = Flight(flightNumber: "NAC100", distance: 5000.25, departure: "CDG", arrival: "NRT")
print("*** Flight trip Information saved in the system ***\n")
fl1.getTripDetails()
print("___________________________________________\n")

var tr1: Train = Train(days: 5, carriageType: CarriageType.SEATING, departure: "Seattle", arrival: "New Orleans")
print("*** Train trip Information saved in the system ***\n")
tr1.getTripDetails()
print("___________________________________________\n")

var tr2: Train = Train(days: 5, carriageType: CarriageType.SLEEPER, departure: "Seattle", arrival: "New Orleans")
print("*** Train trip Information saved in the system ***\n")
tr2.getTripDetails()
print("___________________________________________\n")

var tr3: Train = Train(days: 2, carriageType: CarriageType.SEATING, departure: "New York", arrival: "Washington DC")
print("*** Train trip Information saved in the system ***\n")
tr3.getTripDetails()
print("___________________________________________\n")

var traveller1: Traveller = Traveller(name: "Golnaz", phoneNumber: "9057260572")
var traveller2: Traveller = Traveller(name: "Arya", passportNumber: 123, phoneNumber: "543765987")
var traveller3: Traveller = Traveller(name: "Arad", passportNumber: 8000, phoneNumber: "123456789")

var mahanTravelAgency: TravelAgency = TravelAgency()

if(mahanTravelAgency.makeReservation(for: traveller1, date: "2023-05-07", trip: fl1)){
    print("*** The reservation was successfully done!\n")
    traveller1.reservationsList.last?.display()
}
print("___________________________________________\n")

if(mahanTravelAgency.makeReservation(for: traveller2, date: "2023-06-05", trip: fl1)){
    print("*** The reservation was successfully done! ***\n")
    traveller2.reservationsList.last?.display()
}
print("___________________________________________\n")

if(mahanTravelAgency.makeReservation(for: traveller3, date: "2023-06-05", trip: fl1)){
    print("*** The reservation was successfully done! ***\n")
    traveller3.reservationsList.last?.display()
}
print("___________________________________________\n")

if(mahanTravelAgency.makeReservation(for: traveller1, date: "2023-08-09", trip: tr2)){
    print("*** The reservation was successfully done! ***\n")
    traveller1.reservationsList.last?.display()
}
print("___________________________________________\n")

if(mahanTravelAgency.makeReservation(for: traveller3, date: "2023-12-09", trip: tr3)){
    print("*** The reservation was successfully done! ***\n")
    traveller3.reservationsList.last?.display()
}
print("___________________________________________\n")

//● Output the total number of reservations for Traveller 2 and the amount of money owed.
//● Output the total number of reservations for Traveller 3 and the amount of money owned.

print("""
        The traveller #2 info is: the number of reservations \(traveller2.reservationsList.count),
        and the amount of money owed is : $\(traveller2.balance)
        ___________________________________________\n
     """)

print("""
        The traveller #3 info is: the number of reservations \(traveller3.reservationsList.count),
        and the amount of money owed is : $\(traveller3.balance)
        ___________________________________________\n
     """)

