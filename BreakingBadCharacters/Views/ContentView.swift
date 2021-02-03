//
//  ContentView.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import SwiftUI
import Combine

struct ContentView: View {
   @StateObject var viewModel = CharactersViewModel()
    
    private var bindings = Set<AnyCancellable>()
    
    @State var items: [Character]  = [Character]()
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            Text("Characters")
                            .foregroundColor(.black))
                {
                    ForEach(viewModel.characters, content: CharacterCell.init)
                }
            }
            .onAppear(perform: viewModel.getCharacters)
            .listStyle(GroupedListStyle())
            .navigationTitle("Breaking Bad")
        }
        Spacer()
        
    }
    
    private func setUpBindings() {
    }
    
    
//    eventFitersVM.$items
//        .receive(on: RunLoop.main)
//        .sink(receiveValue: FilterviewModelValueHandler)
//        .store(in: &bindings)
    
//    let stateValueHandler: (ListViewModelState) -> Void = { [weak self] state in
//        switch state {
//        case .loading:
//            print("starting loading indicator")
//            hideActivityIndicatory()
//        case .finishedLoading:
//            print("stopping loading indicator")
//            hideActivityIndicatory()
//        case .error(let error):
//            print("stopping loading indicator && show error ")
//            hideActivityIndicatory()
//            //                self?.showError(error)
//        }
//    }
//
//    eventsVM.$state
//        .receive(on: RunLoop.main)
//        .sink(receiveValue: stateValueHandler)
//        .store(in: &bindings)
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
