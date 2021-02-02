//
//  ContentView.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import SwiftUI

struct ContentView: View {
    let dataController = DataController()
    
    var items: [Character] {
        return dataController.characters
    }
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text("Characters")
                            .foregroundColor(.black))
                {
                    ForEach(items, content: CharacterCell.init)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Breaking Bad")
            
            
        }
        Spacer()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
