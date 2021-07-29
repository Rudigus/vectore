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

- (double)squaredDistanceToVector:(VTVector2 *)aVector {
    double diffX = self.x - aVector.x;
    double diffY = self.y - aVector.y;
    return (diffX * diffX) + (diffY * diffY);
}

- (double)distanceToVector:(VTVector2 *)aVector {
    double squaredDistance = [self squaredDistanceToVector:aVector];
    return sqrt(squaredDistance);
}

- (double)squaredLength {
    VTVector2 *origin = [[VTVector2 alloc] init];
    return [self squaredDistanceToVector:origin];
}

- (double)length {
    VTVector2 *origin = [[VTVector2 alloc] init];
    return [self distanceToVector:origin];
}

- (VTVector2 *)multiplyByScalar:(double)aScalar {
    double newX = self.x * aScalar;
    double newY = self.y * aScalar;
    return [[VTVector2 alloc] initWithX:newX andY:newY];
}

- (VTVector2 *)divideByScalar:(double)aScalar {
    double newX = self.x / aScalar;
    double newY = self.y / aScalar;
    return [[VTVector2 alloc] initWithX:newX andY:newY];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"(%.2lf, %.2lf)", self.x, self.y];
}

- (BOOL)isEqual:(id)object {
    BOOL result = NO;
    if ([object isKindOfClass:[self class]]) {
        VTVector2 *vector = (VTVector2 *)object;
        result = self.x == vector.x && self.y == vector.y;
    }
    return result;
}

@end
