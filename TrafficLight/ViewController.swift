//
//  ViewController.swift
//  TrafficLight
//
//  Created by Юрий Емелин on 21.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var switchButton: UIButton!
    private var cornerRadius: CGFloat = 65
    
    enum PossibleLight {
        case red
        case yellow
        case green
    }
    
    private var currentLight = PossibleLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = cornerRadius
        yellowView.layer.cornerRadius = cornerRadius
        greenView.layer.cornerRadius = cornerRadius
        switchButton.layer.cornerRadius = cornerRadius - 55
    }
    
    @IBAction func switchButtonTapped() {
        switchButton.setTitle("NEXT", for: .normal)
        
        
        func changeAlpfa(for possibleLight: PossibleLight) {
            switch possibleLight {
            case .red:
                greenView.alpha = 0.3
                redView.alpha = 1
                currentLight = PossibleLight.yellow
            case .yellow:
                redView.alpha = 0.3
                yellowView.alpha = 1
                currentLight = PossibleLight.green
            case .green:
                yellowView.alpha = 0.3
                greenView.alpha = 1
                currentLight = PossibleLight.red
            }
        }
        changeAlpfa(for: currentLight)
    }
}

