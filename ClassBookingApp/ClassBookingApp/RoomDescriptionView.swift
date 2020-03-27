//
//  RoomDescriptionView.swift
//  ClassBookingApp
//
//  Created by MacBookAir on 27.03.2020.
//  Copyright © 2020 iOSHomeProjects. All rights reserved.
//

import SwiftUI

struct RoomDescriptionView: View {
    
    @State private var bookingDate = Date()
    
    @Binding var roomNumber: [String]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let mainColor = Color("LightBlueColor")


    var body: some View {
        Form {
            Section(header: Text("Floor 14").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .font(.title)) {
                Text("Room: \(self.roomNumber[0])")
                    .foregroundColor(.blue)
                Text("Status: Free")
            } // Section 1
            
            Section(header: Text("Timetable for today:")) {
                List {
                    DatePicker("Информатика", selection: $bookingDate, displayedComponents: .hourAndMinute)
                    DatePicker("Мат. Анализ", selection: $bookingDate, displayedComponents: .hourAndMinute)
                    DatePicker("Базы данных", selection: $bookingDate, displayedComponents: .hourAndMinute)
                    DatePicker("Английский", selection: $bookingDate, displayedComponents: .hourAndMinute)
                    DatePicker("Философия", selection: $bookingDate, displayedComponents: .hourAndMinute)

                }
            } // section
            
            Section(header: Text("Pick a date for booking:")) {
                DatePicker("Booked date:", selection: $bookingDate,
                       displayedComponents: [.date, .hourAndMinute])
                .padding(.horizontal, 28)
                .background(RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(mainColor))
                .padding(.horizontal)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Save")
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            
            Section() {
                Button("Go back.", action: { self.presentationMode.wrappedValue.dismiss() }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
        } // Form
        .navigationBarTitle("")
        .navigationBarHidden(true)
    } // body
}


//struct RoomDescriptionView_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomDescriptionView()
//    }
//}
