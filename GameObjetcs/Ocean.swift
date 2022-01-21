//
//  Ocean.swift
//  Exercise1
//
//  Created by Shirin Mansouri on 2022-01-20.
//

import GameplayKit
import SpriteKit

 class Ocean : GameObject
{
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func checkBounds ()
       {
           if(position.y <= -773)
           {
               position.y = 773
           }
       }
      
       override func Start()
       {
           zPosition = 0
           verticalSpeed = 5.0
       }
       
       override func Update()
       {
           Move()
           checkBounds()
       }
       
       func Move()
       {
           position.y -= verticalSpeed!
       }
}
