//
//  ViewController.m
//  MySafari
//
//  Created by Ryan Tiltz on 5/14/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "RTWebViewController.h"

@interface RTWebViewController () <UIWebViewDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;
@property (strong, nonatomic) IBOutlet UITextField *myURLTextField;
@property (strong, nonatomic) IBOutlet UIButton *onBackButtonPressed;

@end

@implementation RTWebViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onBackButtonPressed:(UIButton *)sender
{
    [self.myWebView goBack];
}
- (IBAction)onForwardButtonPressed:(UIButton *)sender
{
    [self.myWebView goForward];
}
- (IBAction)onStopLoadingButtonPressed:(UIButton *)sender
{
    [self.myWebView stopLoading];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSURL *url = [NSURL URLWithString:textField.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];

    [textField resignFirstResponder];

    return YES;
}

@end
