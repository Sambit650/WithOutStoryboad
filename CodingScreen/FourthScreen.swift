//
//  FourthScreen.swift
//  CodingScreen
//
//  Created by Sidhartha Das on 29/07/19.
//  Copyright © 2019 super7. All rights reserved.
//

import UIKit

class FourthScreen: UIViewController {

    
    let finalText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        view.backgroundColor = .darkGray
        // Do any additional setup after loading the view.
    }
    
    func setLabel(){
        
        finalText.textColor = .blue
        finalText.text = "Final Screen"
        finalText.backgroundColor = .white
        finalText.frame = CGRect(x: 120, y: 200, width: 200, height: 40)
        finalText.textAlignment = .center
        
        view.addSubview(finalText)
    }
}
