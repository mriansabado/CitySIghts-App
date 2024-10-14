//
//  ContentView.swift
//  CitySIghts App
//
//  Created by Onpoint on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $query)
            Button {
                //TODO: Implement query
            } label: {
                Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .onAppear(perform: {
            print(Bundle.main.infoDictionary?["API_KEY"] as? String)
        })
    }
}

#Preview {
    ContentView()
}
