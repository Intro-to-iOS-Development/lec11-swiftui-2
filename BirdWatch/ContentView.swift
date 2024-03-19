//
//  ContentView.swift
//  BirdWatch
//
//  Created by Vin Bui on 11/13/23.
//

import SwiftUI

struct ContentView: View {

    @State private var count: Int = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                profileView

                HStack {
                    addCountButton

                    NavigationLink {
                        BirdListView()
                    } label: {
                        viewBirdsButton
                    }
                }
            }
            .navigationTitle("Bird Watch")
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
                Text("Count: \(count)")
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

    private var addCountButton: some View {
        Button {
            count += 1
        } label: {
            Text("Add Count")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(.green)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }

}

#Preview {
    ContentView()
}
