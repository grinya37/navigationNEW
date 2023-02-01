//
//  PostViewController.swift
//  Navigation
//
//  Created by Николай Гринько on 31.01.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Grinya37"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        makeBarItem()
    }
    
    private func setupView() {
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = titlePost
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(barItemAction))
        navigationItem.rightBarButtonItem = barItem
    }
    
    @objc private func barItemAction() {
        let infoVC = InfoViewController()
        infoVC.title = "info VC"
        infoVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(infoVC, animated: true)
    }
}
