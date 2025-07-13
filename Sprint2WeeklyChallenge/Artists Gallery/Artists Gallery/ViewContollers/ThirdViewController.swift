//
//  ThirdViewController.swift
//  Artists Gallery
//
//  Created by Aliaksandr Zuyeu on 11.07.25.
//
import UIKit

class ThirdViewController: UIViewController {
    let imageView = UIImageView()
    let labelView = UIView()
    let headerLabel = UILabel()
    let mainLabel = UITextView()
    let expandButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 375),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .blue
        imageView.clipsToBounds = true
        
        
        view.addSubview(labelView)
        labelView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelView.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            labelView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
        
        labelView.addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: labelView.topAnchor, constant: 24),
            headerLabel.leadingAnchor.constraint(equalTo: labelView.leadingAnchor),
            headerLabel.trailingAnchor.constraint(equalTo: labelView.trailingAnchor),
            headerLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
        headerLabel.text = "Some text"
        headerLabel.textAlignment = .left
        headerLabel.numberOfLines = 1
        headerLabel.font = .systemFont(ofSize: 20, weight: .bold)
        headerLabel.lineBreakMode = .byTruncatingTail
                
        labelView.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor),
            mainLabel.leadingAnchor.constraint(equalTo: labelView.leadingAnchor),
            mainLabel.trailingAnchor.constraint(equalTo: labelView.trailingAnchor),
            mainLabel.bottomAnchor.constraint(equalTo: labelView.bottomAnchor, constant: -46)
        ])
        mainLabel.text = "Some textas adasd as dasd sad"
        mainLabel.textAlignment = .left
        mainLabel.font = .systemFont(ofSize: 16, weight: .regular)
        mainLabel.textColor = .darkGray
        mainLabel.textContainer.lineFragmentPadding = 0
               
        expandButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        labelView.addSubview(expandButton)
        expandButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            expandButton.topAnchor.constraint(equalTo: mainLabel.bottomAnchor),
            expandButton.leadingAnchor.constraint(equalTo: labelView.leadingAnchor),
            expandButton.trailingAnchor.constraint(equalTo: labelView.trailingAnchor),
            expandButton.bottomAnchor.constraint(equalTo: labelView.bottomAnchor)
        ])
        expandButton.layer.cornerRadius = 10
        expandButton.configuration = .filled()
        expandButton.tintColor = .black
        expandButton.setTitle("Развернуть", for: .normal)
        expandButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        let vc = FourthViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

