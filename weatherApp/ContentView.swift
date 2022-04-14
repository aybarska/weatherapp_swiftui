//
//  ContentView.swift
//  weatherApp
//
//  Created by Ayberk Mogol on 4.02.2022.
//  aybarska

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightblue")]), startPoint: .topTrailing, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Bursa, TR").font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill").renderingMode(.original)
                        .resizable()
                        .frame(width: 180, height: 180)
                        .aspectRatio(contentMode: .fit)
                    Text("18 °C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    WheatherDayView(gunler: "Pzt", havaDurumuIcon: "cloud.sun.fill", derece: 18)
                    WheatherDayView(gunler: "Sali", havaDurumuIcon: "cloud.sun.rain.fill", derece: 15)
                    WheatherDayView(gunler: "Car", havaDurumuIcon: "cloud.rain.fill", derece: 14)
                    WheatherDayView(gunler: "Per", havaDurumuIcon: "cloud.sun.rain.fill", derece: 16)
                    WheatherDayView(gunler: "Cum", havaDurumuIcon: "sun.max.fill", derece: 22)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WheatherDayView: View {
    var gunler: String
    var havaDurumuIcon: String
    var derece: Int
    
    var body: some View {
        VStack {
            Text(gunler).font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
            Image(systemName: havaDurumuIcon).renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
            Text("\(derece) °C")
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
