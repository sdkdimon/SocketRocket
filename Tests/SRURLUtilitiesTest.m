//
// Copyright 2012 Square Inc.
// Portions Copyright (c) 2016-present, Facebook, Inc.
// Portions Copyright (c) 2021 Dmitry Lizin.
//
// All rights reserved.
//
// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree. An additional grant
// of patent rights can be found in the PATENTS file in the same directory.
//

#import <XCTest/XCTest.h>

#import "SRURLUtilities.h"

@interface SRURLUtilitiesTest : XCTestCase

@end

@implementation SRURLUtilitiesTest

- (void)test_SRStreamNetworkServiceTypeFromURLRequestNetworkService {
    
    NSString *result = nil;
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeDefault);
    XCTAssertEqual(result, nil);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeVoIP);
    XCTAssertEqual(result, NSStreamNetworkServiceTypeVoIP);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeVideo);
    XCTAssertEqual(result, NSStreamNetworkServiceTypeVideo);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeBackground);
    XCTAssertEqual(result, NSStreamNetworkServiceTypeBackground);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeVoice);
    XCTAssertEqual(result, NSStreamNetworkServiceTypeVoice);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeResponsiveData);
    XCTAssertEqual(result, nil);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeAVStreaming);
    XCTAssertEqual(result, nil);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeResponsiveAV);
    XCTAssertEqual(result, nil);
    result = SRStreamNetworkServiceTypeFromURLRequestNetworkService(NSURLNetworkServiceTypeCallSignaling);
    XCTAssertEqual(result, NSStreamNetworkServiceTypeCallSignaling);
}

@end
