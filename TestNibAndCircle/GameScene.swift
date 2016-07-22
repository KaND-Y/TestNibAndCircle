//
//  GameScene.swift
//  TestNibAndCircle
//
//  Created by Kai Drayton-Yee on 7/22/16.
//  Copyright (c) 2016 Kai Drayton-Yee. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	override func didMoveToView(view: SKView) {
		
		let theNibsArray = ["blackNibSetOne", "blackNibSetTwo", "blackNibSetThree", "blackNibSetFour", "blackNibSetFive"]
		let theCirclesArray = ["blackRingSetOne", "blackRingSetTwo", "blackRingSetThree", "blackRingSetFour", "blackRingSetFive"]
		var touchCounter = 0
		
		
		//blackringsettwo was flipped horizontally
		for ringCreationNum in 0...4{
			var r = random() % 40
			//r = 30
			var rSpeed = Double(r) / 10.0 + 4.0
			//rSpeed = 6
			let rotate = SKAction.rotateByAngle(CGFloat(M_PI) * 2, duration: rSpeed)
			let rotateForever = SKAction.repeatActionForever(rotate)
			
			
			var aRing = SKSpriteNode(texture: SKTexture(imageNamed:theCirclesArray[ringCreationNum]), color: UIColor.blueColor(), size: CGSize(width: 400, height: 400))
			addChild(aRing)
			aRing.position.x = view.frame.width / 2
			aRing.position.y = view.frame.height / 2
			aRing.runAction(rotateForever)
			
			var aNib = SKSpriteNode(texture: SKTexture(imageNamed:theNibsArray[4 - ringCreationNum]), color: UIColor.blueColor(), size: CGSize(width: 400, height: 400))
			aRing.addChild(aNib)
			aNib.anchorPoint = CGPointMake(1.0,1.0)

			
			aNib.position.x = aRing.frame.width / 2
			aNib.position.y = aRing.frame.height / 2
			

		}
		
		
	}
	
	
	
	
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
		/* Called when a touch begins */
		(print:"screenTouched!")
		
			removeAllActions()
		
	}
	
	override func update(currentTime: CFTimeInterval) {
		/* Called before each frame is rendered */
	}
}
