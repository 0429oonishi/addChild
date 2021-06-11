//
//  FirstViewController.swift
//  addChild
//
//  Created by 大西玲音 on 2021/03/27.
//

import UIKit

final class FirstViewController: UIViewController {

    @IBOutlet private weak var firstView: UIView!
    
    @IBAction private func secondVCButtonDidTapped(_ sender: Any) {
        firstView.subviews.forEach { $0.removeFromSuperview() }
        let secondVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.addChild(secondVC)
        secondVC.view.translatesAutoresizingMaskIntoConstraints = false
        firstView.addSubview(secondVC.view)
        secondVC.didMove(toParent: self)
        NSLayoutConstraint.activate([
            secondVC.view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            secondVC.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        firstView.backgroundColor = .systemPink
    }
    
    @IBAction private func thirdVCButtonDidTapped(_ sender: Any) {
        firstView.subviews.forEach { $0.removeFromSuperview() }
        let thirdVC = storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        self.addChild(thirdVC)
        firstView.addSubview(thirdVC.view)
        thirdVC.didMove(toParent: self)
    }
    
}



