//
//  ViewController.m
//  Protocols
//
//  Created by Carson Capper on 6/21/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UISwitch *shouldBeginEditingSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *shouldEndEditingSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *charactersInRangeSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *shouldClearSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *shouldReturnSwitch;


@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if(self.shouldReturnSwitch.on){
        NSLog(@"shouldReturnSwitch");
    }
    
    return YES;
    

}
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    
    if(self.shouldClearSwitch.on){
        NSLog(@"shouldClearSwitch");
    }
    return YES;
}

- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string{
    
    if(self.charactersInRangeSwitch.on){
        NSLog(@"charactersInRangeSwitch");
    }
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    if(self.shouldEndEditingSwitch.on){
        NSLog(@"shouldEndEditingSwitch");
    }
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    if(self.shouldBeginEditingSwitch.on){
        NSLog(@"shouldBeginEditingSwitch");
    }
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
