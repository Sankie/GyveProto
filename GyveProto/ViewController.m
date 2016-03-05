//
//  ViewController.m
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/13/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import "ViewController.h"
#import "UIView+UIViewExtensions.h"
#import "UIViewController+UIViewControllerExtensions.h"
#import "FakeDB.h"
#import "ViewItemViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *bottomOverlay;
@property (weak, nonatomic) IBOutlet UIButton *junkButton;
@property (weak, nonatomic) IBOutlet UIButton *passButton;
@property (weak, nonatomic) IBOutlet UIButton *wantButton;
@property (weak, nonatomic) IBOutlet UILabel *noItemsLabel;
@property (weak, nonatomic) IBOutlet UIView *itemWrapper;
@property (weak, nonatomic) IBOutlet UIImageView *itemImage;
@property (weak, nonatomic) IBOutlet UILabel *itemTitle;

@property (nonatomic) ItemModel* currentItem;

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [self styleView];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self refreshItemView];
}

-(void)styleView {
    [self.junkButton setBorder:[UIColor whiteColor] width:1.0];
    [self.passButton setBorder:[UIColor whiteColor] width:1.0];
    [self.wantButton setBorder:[UIColor whiteColor] width:1.0];
    
    [self.bottomOverlay addLinearGradient:[UIColor darkGrayColor] topColor:[UIColor clearColor]];
}

-(void)refreshItemView {
    self.currentItem = [[FakeDB sharedDB] getNextItem];
}

-(void)setCurrentItem:(ItemModel *)currentItem {
    _currentItem = currentItem;
    
    self.noItemsLabel.hidden = currentItem;
    self.itemWrapper.hidden = !currentItem;
    
    if (currentItem) {
        self.itemImage.image = currentItem.image;
        self.itemTitle.text = currentItem.title;
    }
}

#pragma mark - Interface interactions

-(IBAction)onSelectCamera:(id)sender {
    [self navigateToViewController:@"imageSelector" fromStoryboard:@"Main"];
}

- (IBAction)onSelectJunk:(id)sender {
    [[FakeDB sharedDB] removeItem:self.currentItem];
    [self refreshItemView];
}

- (IBAction)onSelectPass:(id)sender {
    [[FakeDB sharedDB] removeItem:self.currentItem];
    [self refreshItemView];
}

- (IBAction)onSelectWant:(id)sender {
    ViewItemViewController* vc = (ViewItemViewController*)[self navigateToViewController:@"viewItem" fromStoryboard:@"Main"];
    vc.selectedItem = self.currentItem;
}

@end
