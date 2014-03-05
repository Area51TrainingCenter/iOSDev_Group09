//
//  NuevoViewController.m
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"
#import "Tweet.h"
#import "TweetController.h"
#import "DecideCell.h"

@interface NuevoViewController ()
@property (nonatomic, strong) UITextView *miTextView;
@property int numeroDeSecciones;
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
    self.numeroDeSecciones = 2;
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.numeroDeSecciones;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0 || section==1) {
        return 1;
    }else{
        return 3;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"comentarioCell" forIndexPath:indexPath];
        
        self.miTextView = (UITextView *)[cell viewWithTag:101];
        return cell;
    }else if (indexPath.section==1){
        DecideCell *w = [tableView dequeueReusableCellWithIdentifier:@"decideCell" forIndexPath:indexPath];
        [w.activar addTarget:self action:@selector(manipularSwitch:) forControlEvents:UIControlEventValueChanged];
        return w;
    }else{
        UITableViewCell *wed = [tableView dequeueReusableCellWithIdentifier:@"testCell" forIndexPath:indexPath];
        return wed;
    }
}
- (IBAction)manipularSwitch:(id)sender{
    UISwitch *actual = (UISwitch *)sender;
    if (actual.on) {
        self.numeroDeSecciones=3;
        [self.tableView insertSections:[NSIndexSet indexSetWithIndex:2] withRowAnimation:UITableViewRowAnimationRight];
        //mostrar una tercera sección
    }else{
        self.numeroDeSecciones=2;
        [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:2] withRowAnimation:UITableViewRowAnimationLeft];
        //eliminar la tercera sección
    }
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        return 150;
    }else{
        return 44;
    }
}
- (IBAction)cerrar:(id)sender {
}

- (IBAction)guardar:(id)sender {
    Tweet *nuevo = [[Tweet alloc] init];
    nuevo.texto = self.miTextView.text;
    nuevo.fechaDeRegistro = [NSDate date];
    
    if ([[TweetController sharedInstance] guardarNuevoTweet:nuevo]) {
        [self dismissViewControllerAnimated:YES completion:^{
            [self.delegate actualizarTabla];
        }];
    }
}
@end
