//
//  ContentView.swift
//  SchoolSpirit
//
//  Created by Wang Sige on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.thin)
            
            Spacer()
            
            HStack {
                Button("Who Are We?", systemImage: "graduationcap") {
                    message = "We Are BC!"
                    imageName = "eagleLogo"
                    
                }
                // use Button(action:label:)
                //            label:{
                //                Label("", systemImage:"")
                //              //Text()
                //              //Image()
                //            }
                Spacer()
                Button ("🦅 How is Baldwin?"){
                    message = "Flying High!"
                    imageName = "baldwin"
                }
            }
            .buttonStyle(.glassProminent)
            .bold()
            .tint(.goldBC)
            .foregroundStyle(.maroonBC)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
