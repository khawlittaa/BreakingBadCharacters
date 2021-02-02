//
//  APIClient.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import Alamofire
import Combine

class APIClient {
    
    static func getAllCharacters() ->  Future<[Character], Error>{
        return NetworkPublisher.publish(APICaractersRouter.getAllcharacters)
    }
}
