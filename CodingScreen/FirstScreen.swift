//
//  FirstScreen.swift
//  CodingScreen
//
//  Created by Sambit Das on 28/07/19.
//  Copyright © 2019 super7. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        setFirstButton()
        view.backgroundColor = .green
    }
    

    func setFirstButton(){
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("next", for: .normal)
        nextButton.frame = CGRect(x: 120, y: 200, width: 150, height: 50)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        //nextButtonConstraints()
    }
    
    @objc func nextButtonTapped(){
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
//    func nextButtonConstraints(){
//
//        nextButton.translatesAutoresizingMaskIntoConstraints = false
//        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        nextButton.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: -20).isActive = true
//        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        nextButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    }

}
