//
//  Todo.m
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/16/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import "Todo.h"

@implementation Todo

-(instancetype) initWithTodoProperties:(NSString*)todoTitle Description:(NSString*)todoDescription Priority:(NSInteger)todoPriority isCompleted:(BOOL)todoStatus {
    if (self = [super init]) {
        _todoTitle = todoTitle;
        _todoDescription = todoDescription;
        _todoPriority = todoPriority;
        _todoStatus = todoStatus;
    }
    return self;
}

@end
