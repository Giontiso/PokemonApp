//
//  DataStoreProtocol.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 04/10/2023.
//

import CoreData

enum DataStoreErrors: Error {
    case deleteError
    case fetchError
    case saveError
    case persistentContainerError
}

protocol DataStoreManagerProtocol {
    associatedtype Entity: NSManagedObject
    associatedtype Model

    func save(model: Model) async throws
    func save(models: [Model]) async throws

    func load(identifier: String?) async throws -> Model?
    func load(offset: Int, limit: Int) async throws -> [Model]
}

protocol ConvertibleEntity {
    associatedtype ModelType

    func configure(with model: ModelType)
    func toModel() -> ModelType?
}
