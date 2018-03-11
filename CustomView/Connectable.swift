//
//  Connectable.swift
//  CustomView
//
//  Created by Farhad on 3/11/18.
//  Copyright © 2018 Farhad. All rights reserved.
//

import UIKit

protocol Connectable {}

extension Connectable where Self: UIView {
    func commit() {
        let nib = UINib(nibName: String(describing: Self.self), bundle: nil)
        let views = nib.instantiate(withOwner: self, options: nil)
        guard let view = views.first as? UIView else {return}
        view.frame = bounds
        addSubview(view)
    }
}
