//
//  UIStackView+.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 01/10/2023.
//

import UIKit

extension UIStackView {
    func addArrangeSubviews(_ views: UIView...) {
        views.forEach { view in
            self.addArrangedSubview(view)
        }
    }
}
