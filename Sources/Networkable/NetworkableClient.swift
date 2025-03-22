//
//  NetworkableClient.swift
//  Networkable
//
//  Created by Mehmet Tarhan on 22.03.2025.
//

import Foundation

public protocol NetworkableClient {
    /// Handles HTTP call and retrieve a response for given url with no authorization
    /// - Parameter url: The url HTTP call should be pointed to
    /// - Returns: Returns a response of given type
    func handleDataTask<T: Decodable>(from url: URL) async throws -> T
}
