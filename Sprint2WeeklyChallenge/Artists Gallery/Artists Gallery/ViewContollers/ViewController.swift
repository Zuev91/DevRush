//
//  ViewController.swift
//  Artists Gallery
//
//  Created by Aliaksandr Zuyeu on 9.07.25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView : UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: MainScreenTableViewHeader.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    private func setupUI() {
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        tableView.separatorStyle = .none
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: MainScreenTableViewHeader.identifier, for: indexPath) as! MainScreenTableViewHeader
//        return cell
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let tableViewHeader = MainScreenTableViewHeader()
        return tableViewHeader
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainScreenTableViewHeader.identifier, for: indexPath) as! MainScreenTableViewHeader
            return cell
    }
    
}
    
    
    
    
    
//    let mainStack = UIStackView()
//    
//    let headingStack = UIStackView()
//    let searchBarView = UIView()
//    let searchBar = UISearchBar()
//    let scrollView = UIScrollView()
//    let scrollViewStack = UIStackView()
//    let scrollViewItem = ScrollViewItem()
//    let artists = Array(repeating: ("0", "Pablo Picasso", "Pablo Ruiz y Picasso adasda sdasdasdasd asadasdasdasdasd asdasdasdasd asdasdasdasdasda sdasdadasd"), count: 10)
//    
//    
//    
//    
//    let artistsLabel = UILabel()
//    let addButton = UIButton()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.addSubview(mainStack)
//        mainStack.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            mainStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            mainStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            mainStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            mainStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ])
//        mainStack.axis = .vertical
////        mainStack.spacing = 20
//
//        
//        //MARK: HEADER UI
//        mainStack.addSubview(headingStack)
//        headingStack.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            headingStack.topAnchor.constraint(equalTo: mainStack.topAnchor),
//            headingStack.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor),
//            headingStack.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor),
//            headingStack.heightAnchor.constraint(equalToConstant: 32)
//        ])
//        headingStack.axis = .horizontal
//        headingStack.alignment = .center
//        
//        headingStack.addSubview(artistsLabel)
//        headingStack.addSubview(addButton)
//        
//        artistsLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            artistsLabel.topAnchor.constraint(equalTo: headingStack.topAnchor),
//            artistsLabel.leadingAnchor.constraint(equalTo: headingStack.leadingAnchor),
//            artistsLabel.widthAnchor.constraint(equalToConstant: 80),
//            artistsLabel.bottomAnchor.constraint(equalTo: headingStack.bottomAnchor)
//        ])
//        artistsLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 24)!
//        artistsLabel.text = "Artists"
//        
//        headingStack.addSubview(addButton)
//        addButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            addButton.topAnchor.constraint(equalTo: headingStack.topAnchor, constant: 4),
//            addButton.leadingAnchor.constraint(equalTo: headingStack.trailingAnchor, constant: -24),
//            addButton.trailingAnchor.constraint(equalTo: headingStack.trailingAnchor),
//            addButton.bottomAnchor.constraint(equalTo: headingStack.bottomAnchor, constant: -4),
//        ])
//        addButton.setImage(UIImage(systemName: "plus.circle")?.withRenderingMode(.alwaysTemplate), for: .normal)
//        addButton.imageView?.tintColor = .black
//        
//        // MARK: Search Bar UI
//        mainStack.addSubview(searchBarView)
//        searchBarView.addSubview(searchBar)
//        searchBarView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            searchBarView.topAnchor.constraint(equalTo: headingStack.bottomAnchor, constant: 15),
//            searchBarView.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor),
//            searchBarView.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor),
//            searchBarView.heightAnchor.constraint(equalToConstant: 56)
//        ])
//        searchBarView.layer.cornerRadius = 12
//        searchBarView.layer.backgroundColor = UIColor(red: 0.46, green: 0.46, blue: 0.5, alpha: 0.12).cgColor
//        
//        searchBar.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            searchBar.topAnchor.constraint(equalTo: searchBarView.topAnchor),
//            searchBar.leadingAnchor.constraint(equalTo: searchBarView.leadingAnchor, constant: 16),
//            searchBar.trailingAnchor.constraint(equalTo: searchBarView.trailingAnchor),
//            searchBar.bottomAnchor.constraint(equalTo: searchBarView.bottomAnchor)
//        ])
//        
//        searchBar.placeholder = "Search"
//        searchBar.searchTextPositionAdjustment.horizontal = 24
//        searchBar.searchBarStyle = .minimal
//        searchBar.searchTextField.translatesAutoresizingMaskIntoConstraints = false
//        searchBar.searchTextField.backgroundColor = .white
//        NSLayoutConstraint.activate([
//            searchBar.searchTextField.topAnchor.constraint(equalTo: searchBar.topAnchor),
//            searchBar.searchTextField.leadingAnchor.constraint(equalTo: searchBar.leadingAnchor),
//            searchBar.searchTextField.trailingAnchor.constraint(equalTo: searchBar.trailingAnchor),
//            searchBar.searchTextField.bottomAnchor.constraint(equalTo: searchBar.bottomAnchor)
//        ])
//        
//        // MARK: ScrollView UI
//        mainStack.addSubview(scrollView)
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: searchBarView.bottomAnchor, constant: 19),
//            scrollView.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: mainStack.bottomAnchor)
//        ])
//        
//        
//        scrollView.addSubview(scrollViewStack)
//        scrollViewStack.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            scrollViewStack.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            scrollViewStack.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            scrollViewStack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            scrollViewStack.topAnchor.constraint(equalTo: scrollView.topAnchor)
//        ])
//        scrollViewStack.axis = .vertical
//        scrollViewStack.spacing = 10
//        
////        var previousItem = UIView()
//        artists.forEach {
//            scrollViewStack.addArrangedSubview(scrollViewItem)
//            scrollViewItem.translatesAutoresizingMaskIntoConstraints = false
//            scrollViewItem.setupUI(imageName: $0.0, topLabelText: $0.1, bottomLabelText: $0.2)
//        }
//        scrollViewStack.addSubview(scrollViewItem)
//        scrollViewItem.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            scrollViewItem.leadingAnchor.constraint(equalTo: scrollViewStack.leadingAnchor),
//            scrollViewItem.trailingAnchor.constraint(equalTo: scrollViewStack.trailingAnchor),
//            scrollViewItem.bottomAnchor.constraint(equalTo: scrollViewStack.bottomAnchor),
//            scrollViewItem.topAnchor.constraint(equalTo: scrollViewStack.topAnchor)
//        ])
        
        
        
                // Do any additional setup after loading the view.
//    }
//
//
//}

