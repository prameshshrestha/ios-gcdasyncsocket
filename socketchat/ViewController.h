//
//  ViewController.h
//  socketchat
//
//  Created by pramesh on 11/21/13.
//  Copyright (c) 2013 pramesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCDAsyncSocket.h"

@interface ViewController : UIViewController{
    GCDAsyncSocket *asyncSocket;
    NSError *err;
    IBOutlet UITextField *serverIP;
    IBOutlet UITextField *connPort;
}
- (IBAction)connect:(id)sender;
- (IBAction)send:(id)sender;
@end
