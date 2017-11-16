//
//  Todo.h
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/16/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject

@property (nonatomic) BOOL todoStatus;
@property (nonatomic) NSString *todoDescription;
@property (nonatomic) NSString *todoTitle;
@property (nonatomic) NSInteger todoPriority;

-(instancetype) initWithTodoProperties:(NSString*)todoTitle Description:(NSString*)todoDescription Priority:(NSInteger)todoPriority isCompleted:(BOOL)todoStatus;

@end
