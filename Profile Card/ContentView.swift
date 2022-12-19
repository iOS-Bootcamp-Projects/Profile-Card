//
//  ContentView.swift
//  Profile Card
//
//  Created by Aamer Essa on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = "Osama Ahmad"
    @State var email: String = "osama.Ah12@gmail.com"
    @State var location: String = "Madinah,Saudi Arabia"
    @State var bDate: String = "10/10/1998"
    @State var phoneNumber: String = "0549249975"
    
    var body: some View {
       
        ZStack {
            Color.gray.ignoresSafeArea()
       
        VStack {
            Image("avatar")
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 150)
                .clipShape(Circle())
            
            
            Text("My Account")
                .font(Font.custom("SignPainter", size: 40))
                
            
            HStack {
                Image("personIcon")
                TextField("Name", text: $name)
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            
            
            HStack {
                Image(systemName: "mail")
                TextField("Email", text: $email)
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            
            
            HStack {
                Image("location")
                TextField("Location", text: $location)
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            
            
            HStack {
                Image("date")
                TextField("Birthdate", text: $bDate)
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            
            
            HStack {
                Image(systemName: "phone")
                TextField("PhoneNumber", text: $phoneNumber)
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
