//
//  GameViewController.swift
//  oxGameApp
//
//  Created by shima on 2018/02/22.
//  Copyright © 2018年 shima. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print("tapped at \(location.x), \(location.y) \n")
        scene.mark(location: location)
    }
}
