//
//  AppDelegate.h
//  TableView
//
//  Created by Steven on 12/11/12.
//  Copyright (c) 2012 Steven. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource>

@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSMutableArray *tableData;
@property (strong) IBOutlet NSTableView *tableView;

- (NSInteger) numberOfRowsInTableView:(NSTableView *)table;
- (id)tableView:(NSTableView *)table objectValueForTableColumn:(NSTableColumn *)column row:(NSInteger)rowIndex;

@end
