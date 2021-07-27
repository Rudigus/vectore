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

- (double)squaredDistanceTo:(VTVector2 *)toVector;

- (double)distanceTo:(VTVector2 *)toVector;

- (NSString *)description;

@end

NS_ASSUME_NONNULL_END
