//
//  BlindViewController.swift
//  PokerBlindsTimer
//
//  Created by Sergey Kolesnikov on 05.04.2023.
//

import UIKit

class BlindViewController: UIViewController {
    
    private var settingsButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "gear"), for: .normal)
        button.imageView?.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
//        button.addTarget(BlindViewController.self, action: #selector(settingsButtonPresed), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    @objc func settingsButtonAction() {
        let settingVC = SettingsViewController()
        present(settingVC, animated: true)
    }
}

// MARK: - Private Methods

private extension BlindViewController {
    
    func configureAppearance() {
        view.backgroundColor = .white
        setConstraints()
        settingsButton.addTarget(self, action: #selector(settingsButtonAction), for: .touchUpInside)
    }
    
    func setConstraints() {
        view.addSubview(settingsButton)
        NSLayoutConstraint.activate([
            settingsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            settingsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            settingsButton.widthAnchor.constraint(equalToConstant: 50),
            settingsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}


