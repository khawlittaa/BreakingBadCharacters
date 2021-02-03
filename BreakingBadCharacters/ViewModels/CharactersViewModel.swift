//
//  DataController.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import Foundation
import SwiftUI
import Combine

final class CharactersViewModel: ObservableObject {
    @Published var characters: [Character] = [Character]()
    @Published var isLoading = true
    @Published var errorCode: String = ""
    @Published var showAlert: Bool = false
    
    var  task :  AnyCancellable?  =  nil
    
    init() {
        getCharacters()
    }

    func getCharacters() {
        self.task = APIClient.getAllCharacters()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("got all characters")
                case let .failure(error):
                    print(error)
                    self.errorCode = error.localizedDescription
                    self.showAlert = true
                }
            },
            receiveValue: { data in
                self.characters = data
                self.errorCode = ""
                self.showAlert = false
            })
    }
}

