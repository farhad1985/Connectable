//
//  CustomView.swift
//  CustomView
//
//  Created by Farhad on 3/11/18.
//  Copyright © 2018 Farhad. All rights reserved.
//

import UIKit

class CustomView: UIView, Connectable {
    
    @IBOutlet weak var lblFooter: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commit()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commit()
        setup()
    }
    
    func setup() {
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        
        lblFooter.text = "farhad faramarzi"
    }

}
