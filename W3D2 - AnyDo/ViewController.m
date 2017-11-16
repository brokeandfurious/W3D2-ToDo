//
//  ViewController.m
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/14/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import "ViewController.h"
#import "Todo.h"
#import "ExpandedCellViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray <Todo*> *todoArray;
@property (nonatomic, strong) NSMutableArray <Todo*> *completedTodoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self todos];
}

- (NSMutableArray <Todo*>*)todos {
    if (self.todoArray == nil){
        self.todoArray = [[NSMutableArray alloc]init];
        [self.todoArray addObject:[[Todo alloc] initWithTodoProperties:@"Pet puppies" Description:@"Pretty self explanatory" Priority:4 isCompleted:NO]];
        [self.todoArray addObject:[[Todo alloc] initWithTodoProperties:@"Sacrifice your soul to Satan" Description:@"Self explanatory" Priority:1 isCompleted:NO]];
        [self.todoArray addObject:[[Todo alloc] initWithTodoProperties:@"Swallow gum" Description:@"Why not?" Priority:1 isCompleted:NO]];
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

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender {
    ExpandedCellViewController *expandedCellViewController = segue.destinationViewController;
    NSIndexPath *cellIndex = [self.todoTableView indexPathForSelectedRow];
    expandedCellViewController.todoLabelOnTheSecondViewController = self.todoArray[cellIndex.row].todoTitle;
    expandedCellViewController.descLabelOnTheSecondViewController = self.todoArray[cellIndex.row].todoDescription;
    expandedCellViewController.expandedPriority = self.todoArray[cellIndex.row].todoPriority;
    NSLog(@"Segue finished successfully.");
}

@end
