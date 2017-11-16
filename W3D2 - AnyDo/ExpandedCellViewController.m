//
//  ExpandedCellViewController.m
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/16/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import "ExpandedCellViewController.h"

@interface ExpandedCellViewController ()

@end

@implementation ExpandedCellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.expandedTodoLabel.text = self.todoLabelOnTheSecondViewController;
    self.expandedDescLabel.text = self.descLabelOnTheSecondViewController;
    if (self.expandedPriority < 3) {
        self.expandedTodoLabel.textColor = [UIColor redColor];
    } else {
        self.expandedTodoLabel.textColor = [UIColor blueColor];
    }
}

@end
