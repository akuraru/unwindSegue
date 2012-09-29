//
//  Created by azu on 12/07/30.
//


#import "HideNavigationBarSegue.h"


@implementation HideNavigationBarSegue {

}

- (void)perform {
    UIViewController *source = (UIViewController *) self.sourceViewController;
    UIViewController *destination = (UIViewController *) self.destinationViewController;

    // 移動
    [[source navigationController] pushViewController:destination animated:YES];
    
    [[source navigationController] setNavigationBarHidden:YES animated:YES];

}

@end