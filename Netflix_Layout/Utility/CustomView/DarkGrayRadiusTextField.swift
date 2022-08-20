//
//  DarkGrayRadiusTextField.swift
//  Netflix_Layout
//
//  Created by Seokjune Hong on 2022/08/19.
//

import UIKit

class DarkGrayRadiusTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        backgroundColor = .darkGray
        textAlignment = .center
        borderStyle = .none
        textColor = .white
        layer.cornerRadius = 5
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        font = .boldSystemFont(ofSize: 16)
    }
}
