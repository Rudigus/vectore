//
//  VTVector2.h
//  Vectore
//
//  Created by Rudigus on 26/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 2D vector type to represent and work with vectorial quantities, like velocity.
@interface VTVector2 : NSObject

/// the vector's x-coordinate.
@property double x;

/// the vector's y-coordinate.
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

/// Returns the vector with its length equal to 1, preserving the direction. It can be used, for example, to simplify some operations when you only need the direction of the vector.
- (VTVector2 *)normalized;

/// Returns the dot product of two vectors. It can be used, for example, to compute the angle between two vectors.
/// @param aVector a vector with which the dot product will be calculated
- (double)dotProductWithVector:(VTVector2 *)aVector;

/// Returns the perp dot product of two vectors. The perp dot product is the dot product of the first vector rotated by 90 degrees counterclockwise and the second vector.
/// Is related to and might be considered the cross product of 2D vectors extended to 3D.
/// @param aVector a vector with which the perp dot product will be calculated
- (double)perpDotProductWithVector:(VTVector2 *)aVector;

/// Returns the signed angle, in radians, from the vector to another vector.
/// @param aVector a vector to which the signed angle will be calculated
- (double)signedAngleToVector:(VTVector2 *)aVector;

/// Returns a string representation of the vector. Useful for printing the vector on the screen.
- (NSString *)description;

/// Returns a boolean which indicates if the vector is equal to possibly another vector based on their coordinates. Doesn't account for floating-point rounding errors.
/// @param object possibly a vector, used for the comparison
- (BOOL)isEqual:(id)object;

@end

NS_ASSUME_NONNULL_END
