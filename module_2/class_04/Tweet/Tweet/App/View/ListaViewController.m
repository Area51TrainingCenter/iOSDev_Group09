//
//  ListaViewController.m
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ListaViewController.h"
#import "NuevoViewController.h"
#import "TweetController.h"
#import "Tweet.h"
#import "DetalleViewController.h"

@interface ListaViewController ()<NuevoViewControllerDelegate>
@property (nonatomic, strong) NSArray *listaDeTweetsAMostrar;
@end

@implementation ListaViewController

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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"newSegue"]) {
        UINavigationController *nav = segue.destinationViewController;
        NuevoViewController *t = (NuevoViewController *)nav.topViewController;
        t.delegate = self;
    }else if ([segue.identifier isEqualToString:@"detalleSegue"]){
        DetalleViewController *e = segue.destinationViewController;
        e.miObjetoAmostrar = [self.listaDeTweetsAMostrar objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        
    }
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listaDeTweetsAMostrar count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listaCell" forIndexPath:indexPath];
    Tweet *bean = [self.listaDeTweetsAMostrar objectAtIndex:indexPath.row];
    cell.textLabel.text = bean.texto;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",bean.fechaDeRegistro];
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    /*
    DetalleViewController *y = [self.storyboard instantiateViewControllerWithIdentifier:@"detalleEscena"];
    //push
    [self.navigationController pushViewController:y animated:YES];
    //modal
    [self presentViewController:y animated:YES completion:nil];*/
}

#pragma mark -
#pragma mark Nuevo Delegate Methods
- (void)actualizarTabla{
    self.listaDeTweetsAMostrar = [[TweetController sharedInstance] obtenerTweets];
    [self.tableView reloadData];
}
@end
