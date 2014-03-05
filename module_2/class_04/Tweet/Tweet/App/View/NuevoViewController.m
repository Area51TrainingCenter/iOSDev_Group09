//
//  NuevoViewController.m
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"
#import "Tweet.h"

@interface NuevoViewController ()
@property (nonatomic, strong) UITextView *miTextView;
@end

@implementation NuevoViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"comentarioCell" forIndexPath:indexPath];
    
    self.miTextView = (UITextView *)[cell viewWithTag:101];
    
    
    // Configure the cell...
    
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}
- (IBAction)cerrar:(id)sender {
}

- (IBAction)guardar:(id)sender {
    Tweet *nuevo = [[Tweet alloc] init];
    nuevo.texto = self.miTextView.text;
    nuevo.fechaDeRegistro = [NSDate date];
    
    
    /*
    [[[UIAlertView alloc] initWithTitle:@"Alerta" message:self.miTextView.text delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];*/
}
@end
