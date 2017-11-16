//
//  ViewController.h
//  W3D2 - AnyDo
//
//  Created by Murat Ekrem Kolcalar on 11/14/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"
#import "ExpandedCellViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *topHeaderLabel;
@property (weak, nonatomic) IBOutlet UITextField *todoTextField;
@property (weak, nonatomic) IBOutlet UITableView *todoTableView;

@end

