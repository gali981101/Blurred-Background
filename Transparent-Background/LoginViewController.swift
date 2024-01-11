//
//  ViewController.swift
//  Transparent-Background
//
//  Created by Terry Jason on 2024/1/11.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let imageSet = ["img1", "img2", "img3", "img4", "img5"]
    private var blurEffectView: UIVisualEffectView?
    
    // MARK: - @IBOulet
    
    @IBOutlet var backgroundImageView: UIImageView!
}

// MARK: - Life Cycle

extension LoginViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let selectedImageIndex = Int.random(in: 0..<imageSet.count)
        
        backgroundImageView.image = UIImage(named: imageSet[selectedImageIndex])
        
        let blurEffect = UIBlurEffect(style: .light)
        
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView?.frame = view.bounds
        
        guard let blurEffectView = blurEffectView else { fatalError() }
        
        backgroundImageView.addSubview(blurEffectView)
    }
    
}

// MARK: - Trait Collection

extension LoginViewController {
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        blurEffectView?.frame = view.bounds
    }
    
}
