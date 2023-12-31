//
//  NetworkRequest.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 04/10/2023.
//

import Foundation

public struct NetworkRequest<ResponseType: NetworkResponse> {
    public let method: HTTPMethod
    public let url: URL
    public var headers: [String: String]?
    public var body: Data?

    public init(
        method: NetworkRequest<ResponseType>.HTTPMethod,
        url: URL,
        headers: [String: String]? = nil,
        body: Data? = nil
    ) {
        self.method = method
        self.url = url
        self.headers = headers
        self.body = body
    }
}

public extension NetworkRequest {
    enum HTTPMethod: String {
        case get = "GET"
        case post = "POST"
    }
}
