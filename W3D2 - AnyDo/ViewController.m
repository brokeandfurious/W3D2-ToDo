//
//  ViewController.m
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/14/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray <Todo*> *todoArray;
@property (nonatomic, strong) NSMutableArray <Todo*> *completedTodoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self tempArraySetup];
    [self todos];
}
//
//- (void) tempArraySetup {
//    self.todoArray = [NSMutableArray arrayWithObjects: @"Rescue puppies", @"Sacrifice your soul to satan", nil];
//    Todo *newTodo = [[Todo alloc] initWithTodoProperties:@"Do this" Description:@"test" Priority:2 isCompleted:NO];
//    [self.todoArray addObject:newTodo];
//    NSLog(@"Test array: %@", _todoArray);
//}

- (NSMutableArray <Todo*>*)todos {
    if (self.todoArray == nil){
        self.todoArray = [[NSMutableArray alloc]init];
        [self.todoArray addObject:[[Todo alloc] initWithTodoProperties:@"Get milk" Description:@"Test" Priority:2 isCompleted:NO]];
        [self.todoArray addObject:[[Todo alloc] initWithTodoProperties:@"Get food" Description:@"Test" Priority:1 isCompleted:NO]];
        [self.todoArray addObject:[[Todo alloc] initWithTodoProperties:@"Get water" Description:@"Test" Priority:1 isCompleted:NO]];
        NSLog(@"Array test: %@", self.todoArray);
    }
    return self.todoArray;
}

#pragma mark - UITableView DataSource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.textLabel.text = _todoArray[indexPath.row].todoTitle;
    return cell;
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_todoArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    
}

@end
