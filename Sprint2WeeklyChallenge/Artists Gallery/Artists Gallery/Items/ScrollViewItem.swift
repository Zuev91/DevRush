//
//  ScrollViewItem.swift
//  Artists Gallery
//
//  Created by Aliaksandr Zuyeu on 9.07.25.
//

import UIKit

class ScrollViewItem: UIView {
    var stack = UIStackView()
    var labelStack = UIStackView()
    var image = UIImageView()
    var topLabel = UILabel()
    var bottomLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.topAnchor.constraint(equalTo: topAnchor),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor),
            stack.heightAnchor.constraint(equalToConstant: 96),
            stack.widthAnchor.constraint(equalTo: widthAnchor)
        ])
        stack.axis = .horizontal

        
        stack.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: stack.leadingAnchor),
            image.topAnchor.constraint(equalTo: stack.topAnchor),
            image.bottomAnchor.constraint(equalTo: stack.bottomAnchor),
            image.trailingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 96)
        ])
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        
        stack.addSubview(labelStack)
        labelStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelStack.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            labelStack.topAnchor.constraint(equalTo: stack.topAnchor),
            labelStack.bottomAnchor.constraint(equalTo: stack.bottomAnchor),
            labelStack.trailingAnchor.constraint(equalTo: stack.trailingAnchor)
        ])
        labelStack.axis = .vertical
        
        labelStack.addSubview(topLabel)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topLabel.leadingAnchor.constraint(equalTo: labelStack.leadingAnchor),
            topLabel.topAnchor.constraint(equalTo: labelStack.topAnchor, constant: 8),
            topLabel.heightAnchor.constraint(equalToConstant: 20),
            topLabel.trailingAnchor.constraint(equalTo: labelStack.trailingAnchor)
        ])
        topLabel.textColor = .systemGray
        topLabel.font = UIFont(name: "Inter-Regular", size: 14)
        
        
        labelStack.addSubview(bottomLabel)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomLabel.leadingAnchor.constraint(equalTo: labelStack.leadingAnchor),
            bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: labelStack.bottomAnchor),
            bottomLabel.trailingAnchor.constraint(equalTo: labelStack.trailingAnchor)
        ])
//        bottomLabel.textColor = .black
        bottomLabel.font = UIFont.boldSystemFont(ofSize: 16)
        bottomLabel.numberOfLines = 2
        bottomLabel.textAlignment = .left
        bottomLabel.lineBreakMode = .byTruncatingTail
        
    }
    
    func setupUI(imageName: String, topLabelText: String, bottomLabelText: String) {
        image.image = UIImage(imageLiteralResourceName: imageName)
        topLabel.text = topLabelText
        bottomLabel.text = bottomLabelText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
