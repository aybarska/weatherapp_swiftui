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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topTrailing, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
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
                HStack {
                    WheatherDayView()
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
    var body: some View {
        VStack {
            Text("Tue").font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
            Image(systemName: "cloud.sun.fill").renderingMode(.original)
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fit)
            Text("27 °C")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
