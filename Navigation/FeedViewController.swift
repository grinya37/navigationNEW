//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Николай Гринько on 30.01.2023.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        makeBarItem()
    }
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(barItemAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func barItemAction() {
        let feedVC = FeedViewController()
        feedVC.title = "Third VC"
        feedVC.modalPresentationStyle = .fullScreen

        navigationController?.pushViewController(feedVC, animated: true)
    }
}
