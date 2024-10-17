//
//  AddButtonView.swift
//  Dding
//
//  Created by 이지은 on 10/11/24.
//

import UIKit

class AddButtonView: UIView {
    
    let addButton = UIButton()
    let newTodoView = NewTodoView()
    var buttonTapped: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAddButton()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAddButton() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setTitle("+", for: .normal)
        addButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        addButton.backgroundColor = .brown
        addButton.layer.cornerRadius = 25
        addButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            addButton.widthAnchor.constraint(equalToConstant: 50),
            addButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc private func buttonPressed() {
        buttonTapped?()
    }
}


