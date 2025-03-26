//
//  NetworkableDefaultClient.swift
//  Networkable
//
//  Created by Mehmet Tarhan on 22.03.2025.
//

import Foundation

public class NetworkableDefaultClient: NetworkableClient {
    private let session: URLSession
    private let decoder: JSONDecoder

    public init(session: URLSession = .shared) {
        self.session = session

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        self.decoder = decoder
    }

    public func handleDataTask<T: Decodable>(from url: URL) async throws -> T {
        let (data, _) = try await session.data(from: url)
        return try decoder.decode(T.self, from: data)
    }
}
