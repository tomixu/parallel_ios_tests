//
//  SampleAppTests.m
//  SampleAppTests
//
//  Created by Johannes Plunien on 15/02/16.
//  Copyright © 2016 Johannes Plunien. All rights reserved.
//

#import <KIF/KIF.h>

@interface SampleAppTests : KIFTestCase

@end

@implementation SampleAppTests

- (void)testDetailView
{
    for (NSInteger i = 0; i < 8; i++) {
        [tester tapViewWithAccessibilityLabel:[NSString stringWithFormat:@"Row %zd", i]];
        [tester waitForViewWithAccessibilityLabel:[NSString stringWithFormat:@"Detail %zd", i]];
        [tester tapViewWithAccessibilityLabel:@"SampleApp"];     // Back button
        [tester waitForViewWithAccessibilityLabel:@"SampleApp"]; // NavigationBar title
    }
}

- (void)test1
{
    XCTAssertTrue(YES);
}

- (void)test2
{
    XCTAssertTrue(YES);
}

- (void)test3
{
    XCTAssertTrue(YES);
}

- (void)test4
{
    XCTAssertTrue(YES);
}

- (void)test5
{
    XCTAssertTrue(YES);
}

- (void)test6
{
    XCTAssertTrue(YES);
}

- (void)test7
{
    XCTAssertTrue(YES);
}

- (void)test8
{
    XCTAssertTrue(YES);
}

- (void)test9
{
    XCTAssertTrue(YES);
}

- (void)test10
{
    XCTAssertTrue(YES);
}

- (void)test11
{
    XCTAssertTrue(YES);
}

- (void)test12
{
    XCTAssertTrue(YES);
}

- (void)test13
{
    XCTAssertTrue(YES);
}

- (void)test14
{
    XCTAssertTrue(YES);
}

- (void)test15
{
    XCTAssertTrue(YES);
}

- (void)test16
{
    XCTAssertTrue(YES);
}

- (void)test17
{
    XCTAssertTrue(YES);
}

- (void)test18
{
    XCTAssertTrue(YES);
}

- (void)test19
{
    XCTAssertTrue(YES);
}

- (void)test20
{
    XCTAssertTrue(YES);
}

- (void)test21
{
    XCTAssertTrue(YES);
}

- (void)test22
{
    XCTAssertTrue(YES);
}

- (void)test23
{
    XCTAssertTrue(YES);
}

- (void)test24
{
    XCTAssertTrue(YES);
}

- (void)test25
{
    XCTAssertTrue(YES);
}

- (void)test26
{
    XCTAssertTrue(YES);
}

- (void)test27
{
    XCTAssertTrue(YES);
}

- (void)test28
{
    XCTAssertTrue(YES);
}

- (void)test29
{
    XCTAssertTrue(YES);
}

- (void)test30
{
    XCTAssertTrue(YES);
}

- (void)test31
{
    XCTAssertTrue(YES);
}

- (void)test32
{
    XCTAssertTrue(YES);
}

- (void)test33
{
    XCTAssertTrue(YES);
}

- (void)test34
{
    XCTAssertTrue(YES);
}

- (void)test35
{
    XCTAssertTrue(YES);
}

- (void)test36
{
    XCTAssertTrue(YES);
}

- (void)test37
{
    XCTAssertTrue(YES);
}

- (void)test38
{
    XCTAssertTrue(YES);
}

- (void)test39
{
    XCTAssertTrue(YES);
}

- (void)test40
{
    XCTAssertTrue(YES);
}

- (void)test41
{
    XCTAssertTrue(YES);
}

- (void)test42
{
    XCTAssertTrue(YES);
}

- (void)test43
{
    XCTAssertTrue(YES);
}

- (void)test44
{
    XCTAssertTrue(YES);
}

- (void)test45
{
    XCTAssertTrue(YES);
}

- (void)test46
{
    XCTAssertTrue(YES);
}

- (void)test47
{
    XCTAssertTrue(YES);
}

- (void)test48
{
    XCTAssertTrue(YES);
}

- (void)test49
{
    XCTAssertTrue(YES);
}

- (void)test50
{
    XCTAssertTrue(YES);
}

- (void)test51
{
    XCTAssertTrue(YES);
}

- (void)test52
{
    XCTAssertTrue(YES);
}

- (void)test53
{
    XCTAssertTrue(YES);
}

- (void)test54
{
    XCTAssertTrue(YES);
}

- (void)test55
{
    XCTAssertTrue(YES);
}

- (void)test56
{
    XCTAssertTrue(YES);
}

- (void)test57
{
    XCTAssertTrue(YES);
}

- (void)test58
{
    XCTAssertTrue(YES);
}

- (void)test59
{
    XCTAssertTrue(YES);
}

- (void)test60
{
    XCTAssertTrue(YES);
}

- (void)test61
{
    XCTAssertTrue(YES);
}

- (void)test62
{
    XCTAssertTrue(YES);
}

- (void)test63
{
    XCTAssertTrue(YES);
}

- (void)test64
{
    XCTAssertTrue(YES);
}

- (void)test65
{
    XCTAssertTrue(YES);
}

- (void)test66
{
    XCTAssertTrue(YES);
}

- (void)test67
{
    XCTAssertTrue(YES);
}

- (void)test68
{
    XCTAssertTrue(YES);
}

- (void)test69
{
    XCTAssertTrue(YES);
}

- (void)test70
{
    XCTAssertTrue(YES);
}

- (void)test71
{
    XCTAssertTrue(YES);
}

- (void)test72
{
    XCTAssertTrue(YES);
}

- (void)test73
{
    XCTAssertTrue(YES);
}

- (void)test74
{
    XCTAssertTrue(YES);
}

- (void)test75
{
    XCTAssertTrue(YES);
}

- (void)test76
{
    XCTAssertTrue(YES);
}

- (void)test77
{
    XCTAssertTrue(YES);
}

- (void)test78
{
    XCTAssertTrue(YES);
}

- (void)test79
{
    XCTAssertTrue(YES);
}

- (void)test80
{
    XCTAssertTrue(YES);
}

- (void)test81
{
    XCTAssertTrue(YES);
}

- (void)test82
{
    XCTAssertTrue(YES);
}

- (void)test83
{
    XCTAssertTrue(YES);
}

- (void)test84
{
    XCTAssertTrue(YES);
}

- (void)test85
{
    XCTAssertTrue(YES);
}

- (void)test86
{
    XCTAssertTrue(YES);
}

- (void)test87
{
    XCTAssertTrue(YES);
}

- (void)test88
{
    XCTAssertTrue(YES);
}

- (void)test89
{
    XCTAssertTrue(YES);
}

- (void)test90
{
    XCTAssertTrue(YES);
}

- (void)test91
{
    XCTAssertTrue(YES);
}

- (void)test92
{
    XCTAssertTrue(YES);
}

- (void)test93
{
    XCTAssertTrue(YES);
}

- (void)test94
{
    XCTAssertTrue(YES);
}

- (void)test95
{
    XCTAssertTrue(YES);
}

- (void)test96
{
    XCTAssertTrue(YES);
}

- (void)test97
{
    XCTAssertTrue(YES);
}

- (void)test98
{
    XCTAssertTrue(YES);
}

- (void)test99
{
    XCTAssertTrue(YES);
}

- (void)test100
{
    XCTAssertTrue(YES);
}

@end
