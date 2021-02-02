//
//  CharacterCell.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import SwiftUI

struct CharacterCell: View {
    
    let character: Character
    
    var body: some View {
        NavigationLink(
            destination: CharacterView(character: character),
            label: {
                HStack{
                    ImageView(withURL: character.img)
                     .aspectRatio(contentMode: .fit)
                     .frame(width:100, height:100)
                    
                    VStack{
                        Text(character.name)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text(character.nickname)
                            .fontWeight(.medium)
                            .foregroundColor(.green)
                    }.padding(.all,10)
                
                }
                .padding(.all,0)
                .shadow(radius: 0.4 )
            })
   
        
    }
}

struct CharacterCell_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCell(character: Character.example)
    }
}
