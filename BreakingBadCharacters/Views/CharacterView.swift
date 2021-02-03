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
                    .mainStyle()
                   
                HStack{
                    Text("Status: ")
                        .labelStyle()
                    
                    Text(character.status)
                        .secondaryStyle()
                }
                .padding(.all,10)
                
                HStack{
                    Text("Main Occupation : ")
                        .labelStyle()
                    
                    Text(character.occupation[0])
                        .secondaryStyle() 
                }
                
                HStack{
                    Text("Birthday: ")
                        .labelStyle()
                    
                    Text(character.birthday)
                        .secondaryStyle()
                }
                .padding(.all,10)
                
                HStack{
                    Text("Portrayed By: ")
                        .labelStyle()
                    
                    Text(character.portrayed)
                        .secondaryStyle() 
                }
                .padding(.all,10)
                
            
              
            }
            .navigationTitle(character.nickname)
            
        }
     
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(character: example)
    }
}
