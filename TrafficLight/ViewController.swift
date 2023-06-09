//
//  ViewController.swift
//  TrafficLight
//
//  Created by Юрий Емелин on 21.04.2023.
//

import UIKit

enum PossibleLight {
    case red, yellow, green
}

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    private var currentLight = PossibleLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func switchButtonTapped() {
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        changeAlpfa(for: currentLight)
    }
    
    private func changeAlpfa(for possibleLight: PossibleLight) {
        switch possibleLight {
        case .red:
            greenView.alpha = 0.3
            redView.alpha = 1
            currentLight = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            currentLight = .green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentLight = .red
        }
    }
}

