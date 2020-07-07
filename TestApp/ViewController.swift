//
//  ViewController.swift
//  TestApp
//
//  Created by Дмитрий Данилин on 07.07.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Скрываем текст Lable и кнопу Button
        textLabel.isHidden = true
        button.isHidden = true
        
        // Указываем параметры лейбла
        
        textLabel.font = textLabel.font.withSize(35)
        
        // Назначаем цвет кнопкам в массиве actionButtons
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        
        // Указываем параметры кнопки
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        textLabel.isHidden = false
        button.isHidden = false
        
        if sender.tag == 1 {
            textLabel.text = "Hello, World!"
            textLabel.textColor = .red
        } else if sender.tag == 2 {
            textLabel.text = "Hi  there!"
            textLabel.textColor = .blue
        } else if sender.tag == 0 {
            textLabel.isHidden = true
            button.isHidden = true
        }
    }
    
    



}

