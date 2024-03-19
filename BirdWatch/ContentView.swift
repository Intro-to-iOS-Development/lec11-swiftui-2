//
//  ContentView.swift
//  BirdWatch
//
//  Created by Vin Bui on 11/13/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack(spacing: 50) {
            profileView

            viewBirdsButton
        }
    }

    private var profileView: some View {
        VStack {
            Image("newbie")
                .resizable()
                .frame(width: 200, height: 200)

            Group {
                Text("Name: ")
                Text("Location: ")
                Text("Count: ")
            }
            .font(.title)
        }
    }

    private var viewBirdsButton: some View {
        Text("View Birds")
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }

}

#Preview {
    ContentView()
}
