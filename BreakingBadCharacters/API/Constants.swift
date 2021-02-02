//
//  Constants.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import Foundation

  enum ApiError: Error {
      case badRequest               //Status code 400
      case notFound                //Status code 404
      case unAuthorized           //Status code 401
      case limiteReached         //Status code 429
      case internalServerError   //Status code 500
  }

struct Constants {
    //The API's base URL
    static let baseURL = "https://www.breakingbadapi.com/api"
    
    //The parameters (Queries) that we're gonna use
    struct Parameters {
        static let episodes = "episodes "
        static let name = "name"
        static let character = "character"
        static let category = "category"
    }
    
    //The header fields
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    //The content type (JSON)
    enum ContentType: String {
        case json = "application/json"
        case multipart = "multipart/form-data"
        case text = "text/html; charset=utf-8"
    }
  
}


