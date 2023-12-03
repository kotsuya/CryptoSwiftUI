//
//  NetworkingManager.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/25.
//

import Foundation
import Combine

class NetworkingManager  {
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)            
            .tryMap( { try handleURLResponse(output: $0, url: url) })
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200, response.statusCode < 300 else { throw CoinError.serverError(url: url) }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
