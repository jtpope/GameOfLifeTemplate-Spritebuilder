//
//  Creature.m
//  GameOfLife
//
//  Created by Jay on 11/1/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature
// since we made Creature inherit from CCSprite, 'super' below refers to CCSprite
- (instancetype)initCreature{
	self = [super initWithImageNamed:@"GameOfLifeAssests/bubble.png"]
	if (self){
		self.isAlive = NO;
	}
	return self;
}

- (void)setIsAlive:(BOOL)newState {
	//when you create an @property as we did in .h, an instance variable with a leading underscore is automatically created
	_isAlive = newState;
	
	// 'visible' is a property of any class that inherits from CCNode. CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Cretures have a visible property
	self.visible = _isAlive;
}


@end
