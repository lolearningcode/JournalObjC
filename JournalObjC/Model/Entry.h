//
//  Entry.h
//  JournalObjC
//
//  Created by Lo Howard on 5/20/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* body;
@property (nonatomic) NSDate* timestamp;

- (instancetype) initWithTitle:(NSString *)title body:(NSString *)body;

@end

NS_ASSUME_NONNULL_END
