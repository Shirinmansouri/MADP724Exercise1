//
//  Plane.swift
//  Exercise1
//
//  Created by Shirin Mansouri on 2022-01-20.
//

import GameplayKit
import SpriteKit

class Plane : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func checkBounds() {
        
        if (position.x <= -310)
        {
            position.x = -310
        }
        if (position.x >= 310)
        {
            position.x = 310
        }
    
    }
    override func Start() {
    zPosition = 2
        
    }
    override func Update() {
        
        checkBounds()
    }
    func TouchMove(newPos: CGPoint)
        {
            position = newPos
        }
}
