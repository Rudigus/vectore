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

/// Initializes a vector with a coordinate.
/// @param x x-coordinate
/// @param y y-coordinate
- (instancetype)initWithX:(double)x andY:(double)y NS_DESIGNATED_INITIALIZER;

/// Returns the squared distance between two vectors. It is less computationally expensive than distanceToVector:, since it doesn't need to apply square root in its calculation.
/// Can be used for comparing distances.
/// @param aVector a vector from which the squared distance will be calculated
- (double)squaredDistanceToVector:(VTVector2 *)aVector;

/// Returns the distance between two vectors.
/// @param aVector a vector from which the distance will be calculated
- (double)distanceToVector:(VTVector2 *)aVector;

/// Returns the squared length of the vector. It is less computationally expensive than length, since it doesn't need to apply square root in its calculation.
/// Can be used for comparing lengths.
- (double)squaredLength;

/// Returns the length of the vector.
- (double)length;

/// Returns the vector with its x and y coordinates multiplied by a scalar.
/// @param aScalar a scalar used to multiply the vector's x and y coordinates
- (VTVector2 *)multiplyByScalar:(double)aScalar;

/// Returns the vector with its x and y coordinates divided by a scalar.
/// @param aScalar a scalar used to divide the vector's x and y coordinates
- (VTVector2 *)divideByScalar:(double)aScalar;

/// Returns a string representation of the vector. Useful for printing the vector on the screen.
- (NSString *)description;

/// Returns a boolean which indicates if the vector is equal to possibly another vector based on their coordinates. Doesn't account for floating-point rounding errors.
/// @param object possibly a vector, used for the comparison
- (BOOL)isEqual:(id)object;

@end

NS_ASSUME_NONNULL_END
