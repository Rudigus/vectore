//
//  VTVector2Tests.m
//  VectoreTests
//
//  Created by Rudigus on 26/07/21.
//

#import <XCTest/XCTest.h>
#import "VTVector2.h"

@interface VTVector2Tests : XCTestCase

@end

@implementation VTVector2Tests

- (void)testDescriptionIsInCorrectFormat {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] init];
    NSString *description = [NSString stringWithFormat:@"%@", aVector];
    // test
    XCTAssertTrue([description isEqualToString:@"(0.00, 0.00)"]);
    // no teardown needed
}

- (void)testIsEqualTrue {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:20 andY:20];
    VTVector2 *anotherVector = [[VTVector2 alloc] initWithX:20 andY:20];
    // test
    XCTAssertTrue([aVector isEqual:anotherVector]);
    // no teardown needed
}

- (void)testIsEqualFalse {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:15 andY:15];
    VTVector2 *anotherVector = [[VTVector2 alloc] initWithX:20 andY:20];
    // test
    XCTAssertFalse([aVector isEqual:anotherVector]);
    // no teardown needed
}

- (void)testSquaredDistanceToVectorIs100 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:10 andY:10];
    VTVector2 *anotherVector = [[VTVector2 alloc] initWithX:16 andY:18];
    // test
    XCTAssertEqual([aVector squaredDistanceToVector:anotherVector], 100);
    // no teardown needed
}

- (void)testDistanceToVectorIs10 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:10 andY:10];
    VTVector2 *anotherVector = [[VTVector2 alloc] initWithX:16 andY:18];
    // test
    XCTAssertEqual([aVector distanceToVector:anotherVector], 10);
    // no teardown needed
}

- (void)testSquaredLengthIs2500 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:30 andY:40];
    // test
    XCTAssertEqual([aVector squaredLength], 2500);
    // no teardown needed
}

- (void)testLengthIs50 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:30 andY:40];
    // test
    XCTAssertEqual([aVector length], 50);
    // no teardown needed
}

- (void)testMultiplyVectorByScalar5 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:10 andY:10];
    // test
    XCTAssertEqualObjects([aVector multiplyByScalar:5], [[VTVector2 alloc] initWithX:50 andY:50]);
    // no teardown needed
}

- (void)testDivideVectorByScalar5 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:10 andY:10];
    // test
    XCTAssertEqualObjects([aVector divideByScalar:5], [[VTVector2 alloc] initWithX:2 andY:2]);
    // no teardown needed
}

@end
