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
    VTVector2 *vector = [[VTVector2 alloc] init];
    NSString *description = [NSString stringWithFormat:@"%@", vector];
    // test
    XCTAssertTrue([description isEqualToString:@"(0.00, 0.00)"]);
    // no teardown needed
}

- (void)testSquaredDistanceIs100 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:10 andY:10];
    VTVector2 *anotherVector = [[VTVector2 alloc] initWithX:16 andY:18];
    // test
    XCTAssertEqual([aVector squaredDistanceTo:anotherVector], 100);
    // no teardown needed
}

- (void)testSquaredDistanceIs10 {
    // setup
    VTVector2 *aVector = [[VTVector2 alloc] initWithX:10 andY:10];
    VTVector2 *anotherVector = [[VTVector2 alloc] initWithX:16 andY:18];
    // test
    XCTAssertEqual([aVector distanceTo:anotherVector], 10);
    // no teardown needed
}

@end
