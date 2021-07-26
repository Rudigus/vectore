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

@end
