//
//  Entry.m
//  JournalObjC
//
//  Created by Lo Howard on 5/20/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body
{
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
