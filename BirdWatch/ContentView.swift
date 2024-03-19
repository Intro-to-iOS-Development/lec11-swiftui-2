//
//  ContentView.swift
//  BirdWatch
//
//  Created by Vin Bui on 11/13/23.
//

import SwiftUI

struct ContentView: View {

    @State private var count: Int = 0
    @State private var name: String = ""
    @State private var location: String = ""

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

                addBirdButton
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
                TextField("Name", text: $name)
                TextField("Location", text: $location)
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

    private var addBirdButton: some View {
        Button {
            birds.append(Bird(name: name, location: location, image: "newbie", count: count))
            name = ""
            location = ""
            count = 0
        } label: {
            Text("Add Bird")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(.orange)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }

}

#Preview {
    ContentView()
}
