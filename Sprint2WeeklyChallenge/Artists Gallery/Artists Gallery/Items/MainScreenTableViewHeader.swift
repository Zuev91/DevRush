//
//  ScrollViewItem.swift
//  Artists Gallery
//
//  Created by Aliaksandr Zuyeu on 9.07.25.
//

import UIKit

class MainScreenTableViewHeader: UITableViewCell {
    
    static let identifier = "MainScreenHeader"
    
//    let self.contentView.layoutMarginsGuide : UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .horizontal
//        stack.alignment = .center
//        return stack
//    }()
    
    let artistsLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 24)!
        return label
    }()
    
    let addButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus.circle")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.imageView?.tintColor = .black
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with labelText: String) {
        self.artistsLabel.text = labelText
    }
    
    private func setupUI() {
        
        self.contentView.addSubview(artistsLabel)
        self.contentView.addSubview(addButton)
        
        artistsLabel.translatesAutoresizingMaskIntoConstraints = false
        addButton.translatesAutoresizingMaskIntoConstraints = false
       
                NSLayoutConstraint.activate([
                    artistsLabel.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor),
                    artistsLabel.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor),
                    artistsLabel.widthAnchor.constraint(equalToConstant: 80),
                    artistsLabel.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor)
                ])
                
                NSLayoutConstraint.activate([
                    addButton.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor, constant: 4),
                    addButton.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.trailingAnchor, constant: -24),
                    addButton.trailingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.trailingAnchor),
                    addButton.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor, constant: -4),
                ])
        
        
        
    }
}
