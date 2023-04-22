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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = cornerRadius
        yellowView.layer.cornerRadius = cornerRadius
        greenView.layer.cornerRadius = cornerRadius
        switchButton.layer.cornerRadius = cornerRadius - 55
    }

    @IBAction func switchButtonTapped() {
        switchButton.setTitle("NEXT", for: .normal)
        
    }
}

