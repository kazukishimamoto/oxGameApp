//
//  GameScene.swift
//  oxGameApp
//
//  Created by shima on 2018/02/22.
//  Copyright © 2018年 shima. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var turn_o = true
    
    required init(coder aDecoder: NSCoder){
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize){
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 0)
        
        let background = SKSpriteNode(imageNamed: "bg")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(background)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    
}
