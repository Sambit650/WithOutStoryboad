//
//  SecondScreen.swift
//  CodingScreen
//
//  Created by Sidhartha Das on 28/07/19.
//  Copyright © 2019 super7. All rights reserved.
//

import UIKit

class SecondScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setSecondButton()
        view.backgroundColor = .yellow
        
        
    }
    
    
    func setSecondButton(){
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("next", for: .normal)
        nextButton.frame = CGRect(x: 120, y: 200, width: 150, height: 50)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        //nextButtonConstraints()
    }
    
    @objc func nextButtonTapped(){
        let nextScreen = ThirdScreen()
        nextScreen.title = "Third Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    

}
