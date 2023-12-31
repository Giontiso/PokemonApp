//
//  PokemonDetailPresenter.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 03/10/2023.
//  Copyright © 2023 Innowise Group. All rights reserved.
//

import UIKit

class PokemonDetailPresenter {
    weak var view: PokemonDetailViewInput!
    weak var output: PokemonDetailModuleOutput?
    var interactor: PokemonDetailInteractorInput!
    var router: PokemonDetailRouterInput!
    var id: Int!

    private var closeView: (() -> Void)?
    private var closeImage: UIImage?
}

// MARK: - Present

extension PokemonDetailPresenter {
    func present(from vc: UIViewController) {
//        closeImage = UIImage(named: "back_arrow_black")
//        closeView = { [weak self] in
//            self?.view.viewController.navigationController?.popViewController(animated: true)
//        }
        view.present(from: vc, animated: true)
    }

    func presentAsNavController(from _: UIViewController) {
//        closeImage = UIImage(named: "close_black")
//        closeView = { [weak self] in
//            self?.view.viewController.navigationController?.dismiss(animated: true)
//        }
//        view.presentAsNavController(from: vc)
    }
}

// MARK: - PokemonDetailViewOutput

extension PokemonDetailPresenter: PokemonDetailViewOutput {
    func viewIsReady() async {
        DispatchQueue.main.async {
            self.view.setupNavigationBar(title: "PokemonsList")
        }

        try? await interactor.getPokemonDetailFor(id: id)
    }

    func tapNavigationLeftBarButton() {
        closeView?()
    }
}

// MARK: - PokemonDetailInteractorOutput

extension PokemonDetailPresenter: PokemonDetailInteractorOutput {
    func getPokemonDetailSuccess(model: DetailPokemonInfo?) {
        guard let model else { return }
        DispatchQueue.main.async {
            self.view.configureViewWith(model: model, imageDelegate: self)
        }
    }

    func getPokemonDetailFail(error: String) {
        debugPrint(error)
    }
}

extension PokemonDetailPresenter: ImageDownloaderDelegate {
    func setImageForImageView(_ imageView: UIImageView, imageURL: URL) {
        //            imageView.showRotationLoader(constantY: 0)
        imageView.loadImageAsynchronouslyFrom(url: imageURL) { _ in }
        //                imageView.hideRotationLoader()
    }
}
