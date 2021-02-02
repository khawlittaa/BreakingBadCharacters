//
//  CharacterView.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import SwiftUI

struct CharacterView: View {
    let character: Character
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ImageView(withURL: character.img)
                    .aspectRatio(contentMode: .fill)
                    .frame(width:200, height:300)

                    Text(character.name)
                        .fontWeight(.regular)
                   
                HStack{
                    Text("Status: ")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    Text(character.status)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
                .padding(.all,10)
                
                HStack{
                    Text("Main Occupation : ")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    Text(character.occupation[0])
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
                
                HStack{
                    Text("Birthday: ")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    Text(character.birthday)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
                .padding(.all,10)
                
                HStack{
                    Text("Portrayed By: ")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    Text(character.portrayed)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
                .padding(.all,10)
                
            
              
            }
            .navigationTitle(character.nickname)
            
        }
     
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(character: Character.example)
    }
}
