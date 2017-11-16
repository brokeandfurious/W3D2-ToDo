//
//  ExpandedCellViewController.h
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/16/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Todo.h"

@interface ExpandedCellViewController : UIViewController
//title
@property (weak, nonatomic) IBOutlet UILabel *expandedTodoLabel;
@property (strong, nonatomic) NSString *todoLabelOnTheSecondViewController;
//description
@property (weak, nonatomic) IBOutlet UILabel *expandedDescLabel;
@property (strong, nonatomic) NSString *descLabelOnTheSecondViewController;
//priority
@property (nonatomic) NSInteger *expandedPriority;

@end
