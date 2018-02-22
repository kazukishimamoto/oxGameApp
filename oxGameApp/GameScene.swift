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
    
    func tranceform(w: CGFloat) -> CGFloat {
        switch w {
        case let w where 0 < w && w < 80:
                return 0
        case let w where 80 < w && w < 160:
            return 80
        case let w where 160 < w && w < 240:
            return 160
        default:
            return -80
        }
    }
}
