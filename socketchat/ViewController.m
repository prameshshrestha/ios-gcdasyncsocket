//
//  ViewController.m
//  socketchat
//
//  Created by pramesh on 11/21/13.
//  Copyright (c) 2013 pramesh. All rights reserved.
//

#import "ViewController.h"
#import "GCDAsyncSocket.h"

@interface ViewController ()

@end

@implementation ViewController
    NSString *host = @"192.168.2.25";
    uint16_t port = 5001;


- (void)viewDidLoad
{
    [super viewDidLoad];
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    asyncSocket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:mainQueue];
    serverIP.text = host;
    connPort.text = [NSString stringWithFormat:@"%i", port];
}

- (IBAction)send:(id)sender{
    NSString *str = @"907014118496";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    [asyncSocket writeData:data withTimeout:-1 tag:0];
    NSLog(@"data is succesfully sent");
}

- (IBAction)connect:(id)sender{
    NSError *error = nil;
    if (![asyncSocket connectToHost:host onPort:port error:&error])
    {
        NSLog(@"Cannot connect, try again");
    }
    else
    {
        NSLog(@"connecting to ....%@", host);
    }
}
@end
