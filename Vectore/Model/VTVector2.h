//
//  VTVector2.h
//  Vectore
//
//  Created by Rudigus on 26/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VTVector2 : NSObject

@property double x;
@property double y;

- (instancetype)initWithX:(double)x andY:(double)y NS_DESIGNATED_INITIALIZER;

- (double)squaredDistanceToVector:(VTVector2 *)aVector;

- (double)distanceToVector:(VTVector2 *)aVector;

- (double)squaredLength;

- (double)length;

- (NSString *)description;

@end

NS_ASSUME_NONNULL_END
