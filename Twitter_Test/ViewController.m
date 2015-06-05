//
//  ViewController.m
//  Twitter Test
//  Created by Roubinah UTEEME on 18/05/2015.
//  Copyright (c) 2015 Azerty. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)connection:(id) sender{
    NSString *url = @"http://localhost:8888/controlleurs/";
    
    url = [url stringByAppendingString:_identification.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_mdp.text];
    

    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    NSString *reponseString = [ [ NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (error == nil)
    {
        NSLog(@"%@",error);
    }
    NSLog(@"%@",reponseString);
    NSLog(@"%@",url);
    
    
}

- (IBAction)inscription:(id)sender {
    NSString *url = @"http://localhost:8888/controllers";
    
    url = [url stringByAppendingString:_Identifiant.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_mail.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_password.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_password2.text];
    

    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    NSString *reponseString = [ [ NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (error == nil)
    {
        NSLog(@"%@",error);
    }
    NSLog(@"%@",reponseString);
    NSLog(@"%@",url);
    

}

-(void)dismissKeyboard {
    [_Identifiant resignFirstResponder];
    [_mail resignFirstResponder];
    [_password resignFirstResponder];
    [_password2 resignFirstResponder];
}

@end



