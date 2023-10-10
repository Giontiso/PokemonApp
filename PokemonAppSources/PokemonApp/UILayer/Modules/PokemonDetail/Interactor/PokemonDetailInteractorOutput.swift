//
//  PokemonDetailInteractorOutput.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 03/10/2023.
//  Copyright © 2023 Innowise Group. All rights reserved.
//

import Foundation

protocol PokemonDetailInteractorOutput: AnyObject {
    func getPokemonDetailSuccess(model: DetailPokemonInfo?)
    func getPokemonDetailFail(error: String)
}
