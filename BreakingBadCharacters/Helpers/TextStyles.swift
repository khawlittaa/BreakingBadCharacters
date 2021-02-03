//
//  TextStyles.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 3/2/2021.
//

import SwiftUI

extension Text{
    func HeaderStyle() -> some View{
        self
            .font(.title2)
            .foregroundColor(.secondary)
            .fontWeight(.black)
            .textCase(.uppercase)    }
    
    func mainStyle() -> some View{
        self
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.black)
        
    }
    
    func accentStyle() -> some View{
        self
            .font(.caption2)
            .fontWeight(.medium)
            .foregroundColor(.green)
        
    }
    
    func TitleStyle() -> some View{
        self
            .font(.title)
            .foregroundColor(.primary)
            .fontWeight(.black)
            .textCase(.uppercase)    }
    
    func labelStyle() -> some View{
        self
            .font(.caption)
            .fontWeight(.regular)
            .foregroundColor(.black)   }
    
    func secondaryStyle() -> some View{
        self
            .font(.callout)
            .fontWeight(.medium)
            .foregroundColor(.gray)
            .textCase(.lowercase)
    }
}
