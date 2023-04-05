//
//  SettingsViewController.swift
//  PokerBlindsTimer
//
//  Created by Sergey Kolesnikov on 05.04.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    @objc func saveAction() {
        dismiss(animated: true)
    }

}

// MARK: - Private Methods

private extension SettingsViewController {
    func configureAppearance() {
        setConstraints()
        view.backgroundColor = .white
        saveButton.addTarget(self, action: #selector(saveAction), for: .touchUpInside)
    }
    
    func setConstraints() {
        view.addSubview(saveButton)
        NSLayoutConstraint.activate([
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
