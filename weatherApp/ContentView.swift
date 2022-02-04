//
//  ContentView.swift
//  weatherApp
//
//  Created by Ayberk Mogol on 4.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topTrailing, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Istanbul, TR").font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white)
                    .padding()
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
