//
//  ContentView.swift
//  ClassBookingApp
//
//  Created by MacBookAir on 26.03.2020.
//  Copyright © 2020 iOSHomeProjects. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var rooms: [String] = ["1401", "1402", "1403", "1404", "1405", "1406", "1407", "1408", "1409", "1410", "1411", "1412"]
    
    var body: some View {
        NavigationView {
            Collection(data: $rooms, cols: 2, spacing: 20) { room in
                VStack {
                    Spacer()
                    NavigationLink(destination: RoomDescriptionView(roomNumber: self.$rooms)) {
                        Text(room.description)
                            .bold()
                            .padding(10)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color.white)
                    }
                }
                .frame(height: 120)
                .background(Color.blue)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.2), lineWidth: 1))
            }
            .padding()
            .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
            .navigationBarTitle("")
            .navigationBarHidden(true)
        } //NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
