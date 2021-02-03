//
//  ContentView.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewModel = CharactersViewModel()
    //    @State private var shouldAnimate = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Characters") .HeaderStyle())
                {
                    ForEach(viewModel.characters){ character in
                        CharacterCell(character: character)
                    }
                }
            }
            .onAppear(perform: viewModel.getCharacters)
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
