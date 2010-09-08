//
//  ORSwitchboardTestCase.m
//
//  Copyright (c) 2010, Luna Park
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without 
//  modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice, 
//    this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//  * Neither the name of the organization nor the names of its contributors
//    may be used to endorse or promote products derived from this software 
//    without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
//  POSSIBILITY OF SUCH DAMAGE.
//

#import "ORServiceClientTestCase.h"
#import "ORServiceClient.h"
#import <Foundation/NSData.h>
#import <Foundation/NSError.h>
#import <Foundation/NSString.h>


NSString *const kORServiceClientTestCaseEmail = @"user@example.com";
NSString *const kORServiceClientTestCaseName = @"user";
NSString *const kORServiceClientTestCaseSigningKey = @"aoifwiejfeiwoij29309283";

@implementation ORServiceClientTestCase

- (void)setUp
{
    serviceClient = [[ORServiceClient alloc] init];
}

- (void)tearDown
{
    [serviceClient release];
    serviceClient = nil;
}

- (void)testCreate
{
    STAssertNotNil(serviceClient, @"ORServiceClient not created successfully.");
}

- (void)testCommentsForPage
{
    [serviceClient commentsForPage:1];
    STAssertNil(nil, @"[ORServiceClient commentsForPage:] should be nil.");
}

- (void)testRadarsForPage
{
    [serviceClient radarsForPage:1];
    STAssertNil(nil, @"[ORServiceClient radarsForPage:] should be nil.");
}

- (void)testRadarNumbersForPage
{
    [serviceClient radarNumbersForPage:1];
    STAssertNil(nil, @"[ORServiceClient radarNumbersForPage:] should be nil.");
}

- (void)radarsForPageDidFinishWithData:(NSData *)data error:(NSError *)error
{
    STAssertNil(data, [NSString stringWithFormat:@"data: %@", data]);
}

@end