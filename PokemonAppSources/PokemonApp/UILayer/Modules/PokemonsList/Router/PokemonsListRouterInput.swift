//
//  PokemonsListRouterInput.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 30/09/2023.
//  Copyright © 2023 Innowise Group. All rights reserved.
//

import UIKit

protocol PokemonsListRouterInput: AnyObject {
    func showPokemonDetailFor(id: Int, from: UIViewController)
}
