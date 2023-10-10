//
//  NetworkResponse.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 04/10/2023.
//

import Foundation

public protocol NetworkResponse: Codable, Encodable {}

extension Array: NetworkResponse where Element: NetworkResponse {}
