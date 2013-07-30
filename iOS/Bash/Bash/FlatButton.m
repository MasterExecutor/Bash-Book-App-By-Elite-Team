//
//  FlatButton.m
//  Bash
//
//  Created by Konrad Gnoinski on 30.07.2013.
//  Copyright (c) 2013 Konrad Gnoinski. All rights reserved.
//

#import "FlatButton.h"

@implementation FlatButton

- (void)initialize
{
}

- (id)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    self.backgroundColor = highlighted ? _buttonHighlightedBackgroundColor : _buttonBackgroundColor;
    [self setNeedsDisplay];
}

- (void)setButtonBackgroundColor:(UIColor *)color
{
    self.backgroundColor = color;
    _buttonBackgroundColor = color;
    [self setNeedsDisplay];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
