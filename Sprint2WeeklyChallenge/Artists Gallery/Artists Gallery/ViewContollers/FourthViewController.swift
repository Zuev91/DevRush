//
//  FourthViewController.swift
//  Artists Gallery
//
//  Created by Aliaksandr Zuyeu on 11.07.25.
//

import UIKit

class FourthViewController: UIViewController {
    let imageView = UIImageView()
    let closeButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 272),
            imageView.heightAnchor.constraint(equalToConstant: 373),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .blue
        imageView.clipsToBounds = true
        
        closeButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 304),
            closeButton.widthAnchor.constraint(equalToConstant: 50),
            closeButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        let image = UIImage(systemName: "xmark.circle")
        closeButton.setImage(image, for: .normal)
        closeButton.imageView?.tintColor = .black
        closeButton.imageView?.clipsToBounds = true
        closeButton.imageView?.contentMode = .scaleAspectFill
        closeButton.contentHorizontalAlignment = .fill
        closeButton.contentVerticalAlignment = .fill
        closeButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func buttonTapped() {
        let vc = ThirdViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
