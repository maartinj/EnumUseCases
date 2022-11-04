//
//  ContentView.swift
//  EnumUses
//
//  Created by Stewart Lynch on 2021-02-16.
//

import SwiftUI

struct ContentView: View {
    @State private var resources = Resource.starterResources
    var body: some View {
        NavigationView {
            List {
                ForEach(resources) { resource in
                    HStack {
                        Text(resource.resourceType.rawValue)
                            .frame(width: 75)
                        VStack(alignment: .leading) {
                            Text(resource.name)
                                .font(.title2)
                            Text(resource.url)
                        }
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Edit")
                                .foregroundColor(.accentColor)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .onDelete(perform: { indexSet in
                    resources.remove(atOffsets: indexSet)
                })
            }
            .navigationTitle("Resources")
            .navigationBarItems(trailing:
                                    Button {
                                        
                                    } label: {
                                        Text("New")
                                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
