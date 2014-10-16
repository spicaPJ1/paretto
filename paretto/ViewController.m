//
//  ViewController.m
//  paretto
//
//  Created by 島崎　恵美 on 2014/10/13.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.pickerView.delegate = self;
    /*
    categoryArray = [NSArray arrayWithObjects:@"Red"
                     ,@"Blue"
                     ,@"Green"
                     ,@"Black"
                     , nil];
    */
}

- (NSInteger)numberOfComponentInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// pickerViewの縦の長さを決める
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    /*
    int cnt = [categoryArray count];
    */
    return 1;

}

/*
//ピッカービューの行のタイトルを返す
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [categoryArray objectAtIndex:row];
}
*/
 
//選択された行番号を取得
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger selectedRow = [pickerView selectedRowInComponent:0];
    NSLog(@"%d",selectedRow);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}



@end
