//
//  VTVector2.m
//  Vectore
//
//  Created by Rudigus on 26/07/21.
//

#import "VTVector2.h"

@implementation VTVector2

- (instancetype)init {
    self = [self initWithX:0 andY:0];
    return self;
}

- (instancetype)initWithX:(double)x andY:(double)y {
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

// Beautiful description for printing object with NSLog :D
- (NSString *)description {
    return [NSString stringWithFormat:@"(%.2lf, %.2lf)", self.x, self.y];
}

@end
