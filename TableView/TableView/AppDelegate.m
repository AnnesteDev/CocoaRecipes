//
//  AppDelegate.m
//  TableView
//
//  Created by Steven on 12/11/12.
//  Copyright (c) 2012 Steven. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize tableView;
@synthesize tableData;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    tableData = [[NSMutableArray alloc]init];
    
    // Row 1
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    [dictionary setObject:@"Benjamin Franklin" forKey:@"name"];
    [dictionary setObject:@"1/17/1706" forKey:@"birthdate"];
    [tableData addObject:dictionary];
    
    // Row 2
    dictionary = [NSMutableDictionary dictionary];
    [dictionary setObject:@"Samual Adams" forKey:@"name"];
    [dictionary setObject:@"9/27/1722" forKey:@"birthdate"];
    [tableData addObject:dictionary];
    
    // Row 3
    dictionary = [NSMutableDictionary dictionary];
    [dictionary setObject:@"Thomas Jefferson" forKey:@"name"];
    [dictionary setObject:@"4/13/1743" forKey:@"birthdate"];
    [tableData addObject:dictionary];
    
    [tableView reloadData];
}

- (NSInteger) numberOfRowsInTableView:(NSTableView *)table
{
    return [tableData count];
}

- (id)tableView:(NSTableView *)table objectValueForTableColumn:(NSTableColumn *)column row:(NSInteger)rowIndex
{
    NSDictionary *rowData = [tableData objectAtIndex:rowIndex];
    return [rowData valueForKey:[column identifier]];
}

@end
