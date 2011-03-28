//
//  EntryCreateViewController.m
//  MindIt
//
//  Created by Karim DRIDI on 28/03/11.
//  Copyright 2011 personal. All rights reserved.
//

#import "EntryCreateViewController.h"


@implementation EntryCreateViewController

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		
		{
			UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveEntry:)];
			self.navigationItem.rightBarButtonItem = item;
			[item release];
		}
		self.navigationItem.title = @"Entries";
    }
    return self;
}

- (void) saveEntry:(id) sender {
	NSLog(@"Save me");
	
	{
		UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(saveEntry:)];
		self.navigationItem.rightBarButtonItem = item;
		[item release];
	}
	
	self.navigationItem.title = [[NSString alloc] initWithString:mEntryTitle];
}

- (IBAction) updateEntryTitle:(UITextField *) sender {
	[mEntryTitle release];
	mEntryTitle = [[NSString alloc] initWithString:sender.text];
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
