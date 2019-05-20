//
//  EntryController.h
//  JournalObjC
//
//  Created by Lo Howard on 5/20/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

@property (nonatomic, strong, readwrite) NSArray* entries;

+ (EntryController *) shared;

//CRUD
- (void) addEntry:(Entry *)entry;

- (void) removeEntry:(Entry *)entry;

@end

NS_ASSUME_NONNULL_END
