//
//  NetworkableError.swift
//  Networkable
//
//  Created by Mehmet Tarhan on 22.03.2025.
//

import Foundation

enum NetworkableError: Error {
    case badURL
    case wrongDataFormat
}

extension NetworkableError: CustomStringConvertible {
    var description: String {
        switch self {
        case .badURL:
            return "The given URL is not valid"

        case .wrongDataFormat:
            return "The received data format does not match serialized JSON"
        }
    }
}
