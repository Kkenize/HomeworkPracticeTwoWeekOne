//
//  ContentView.swift
//  HomeworkPracticeTwoWeekOne
//
//  Created by Zhejun Zhang on 1/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var image = ""
    @State private var message = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'bout")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.purple)
                .frame(width:300, height:100)
            
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    image = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    image = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    image = "lightbulb"
                    message = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
