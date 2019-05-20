//
//  EntryController.m
//  JournalObjC
//
//  Created by Lo Howard on 5/20/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

#import "EntryController.h"

@interface EntryController()

@property (nonatomic, strong, readonly) NSMutableArray* internalJournal;

@end

@implementation EntryController

+ (EntryController*)shared
{
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalJournal = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)entries
{
    return self.internalJournal;
}

- (void)addEntry:(Entry *)entry
{
    Entry *newEntry = [[Entry alloc] initWithTitle:entry body:[NSMutableArray new]];
    [self.internalJournal addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry
{
    [self.internalJournal removeObject:entry];
}

@end
