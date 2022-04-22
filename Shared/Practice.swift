//
//  Practice.swift
//  SwiftUIStacks
//
//  Created by Oluwabusayo Adebayo on 4/21/22.
//

import SwiftUI

struct Practice: View {
    var body: some View {
        ZStack {
            SampleView(icon: "burst.fill", title: "Basic", price: "$9", textColor: .white, backgroundColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0, y: -180)
            
            SampleView(icon: "dial", title: "Pro", price: "$19", textColor: .white, backgroundColor: Color(red: 255/255, green: 183/255, blue: 37/255))
                .padding()
                .scaleEffect(0.95)
            
            SampleView(icon: "wand.and.rays", title: "Team", price: "$299", textColor: .white, backgroundColor: .purple)
                .padding()
                .scaleEffect(1)
                .offset(x: 0, y: 180)
        }
    }
}

struct SampleView: View {
    var icon: String?
    var title: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        VStack {
            icon.map ({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(32)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice()
    }
}
