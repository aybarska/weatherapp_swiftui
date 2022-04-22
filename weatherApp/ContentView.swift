//
//  ContentView.swift
//  weatherApp
//
//  Created by Ayberk Mogol on 4.02.2022.
//  aybarska

import SwiftUI

struct ContentView: View {
    @State private var GeceModu = false
    
    var body: some View {
        ZStack{
            BackgroundView(ustRenk: GeceModu ? .black : .blue,
                           altRenk: GeceModu ? .gray : Color("lightblue"))

            VStack {
                
                CityTextView(sehirAdi: "Bursa, TR")
                
                MainWeatherStatusView(havaDurumuIcon: GeceModu ? "moon.stars.fill" :"cloud.sun.fill", derece: GeceModu ? 14 : 17)
                
                HStack {
                    WheatherDayView(gunler: "Pzt", havaDurumuIcon: "wind.snow", derece: GeceModu ? 14 :18)
                    WheatherDayView(gunler: "Sali", havaDurumuIcon: GeceModu ? "cloud.moon.fill" : "sunset.fill", derece: GeceModu ? 12 : 15)
                    WheatherDayView(gunler: "Car", havaDurumuIcon: GeceModu ? "sparkles" : "cloud.rain.fill", derece: GeceModu ? 10 : 14)
                    WheatherDayView(gunler: "Per", havaDurumuIcon: GeceModu ? "cloud.moon.rain.fill" :  "cloud.sun.rain.fill", derece: GeceModu ? 15 : 16)
                    WheatherDayView(gunler: "Cum", havaDurumuIcon: GeceModu ? "moon.fill" : "sun.max.fill", derece: GeceModu ? 17 : 22)
                }
                
                Spacer()
                
                Button {
                    GeceModu.toggle()
                } label: {
                    TimeButtonView(Baslik: GeceModu ? "Gündüzü göster." : "Geceyi göster.", YaziRengi: .blue, ArkaRenk: .white)
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

struct BackgroundView: View {
    var ustRenk: Color
    var altRenk: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ustRenk,altRenk]), startPoint: .topTrailing, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var sehirAdi: String
    var body: some View {
        Text(sehirAdi).font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var havaDurumuIcon: String
    var derece: Int
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: havaDurumuIcon).renderingMode(.original)
                .resizable()
                .frame(width: 180, height: 180)
                .aspectRatio(contentMode: .fit)
            Text("\(derece) °C")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}

