//
//  GameObject.swift
//  Exercise1
//
//  Created by Shirin Mansouri on 2022-01-20.
//

 import GameplayKit
 import SpriteKit

class GameObject :SKSpriteNode , GameProtocol
{
        var horizontalSpeed: CGFloat?
        var verticalSpeed: CGFloat?
        var width: CGFloat?
        var height: CGFloat?
        var halfWidth: CGFloat?
        var halfHeight: CGFloat?
        var scale: CGFloat? // uniform scale
        var isCollding: Bool?
        var randomSource: GKARC4RandomSource?
        var randomDist: GKRandomDistribution?
    init(imageString : String ,initialScale :CGFloat)
    {
                let texture = SKTexture(imageNamed: imageString)
                let color = UIColor.clear
                super.init(texture: texture, color: color, size: texture.size())
                
                scale = initialScale
                setScale(scale!)
                width = texture.size().width * scale!
                height = texture.size().height * scale!
                halfWidth = width! * 0.5
                halfHeight = height! * 0.5
                isCollding = false
                name = imageString
                randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func checkBounds() {
        
    }
    
    func Reset() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    
    
}

