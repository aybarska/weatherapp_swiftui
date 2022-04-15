//
//  button.swift
//  weatherApp
//
//  Created by Ayberk Mogol on 15.04.2022.
//

import SwiftUI

struct TimeButtonView: View {
    var Baslik: String
    var YaziRengi: Color
    var ArkaRenk: Color
    var body: some View {
        Text(Baslik)
            .frame(width: 280, height: 50)
            .background(ArkaRenk)
            .foregroundColor(YaziRengi)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10.0)
    }
}
