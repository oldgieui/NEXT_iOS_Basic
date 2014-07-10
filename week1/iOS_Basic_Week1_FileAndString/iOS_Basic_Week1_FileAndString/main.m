//
//  main.m
//  iOS_Basic_Week1_FileAndString
//
//  Created by 이건희 on 2014. 7. 10..
//  Copyright (c) 2014년 nhnnext. All rights reserved.
//

#import <Foundation/Foundation.h>

void DisplayAllFilesAtPath(NSString* path){
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSLog(@"current path is %@ ", [fileManager displayNameAtPath:path]);
    NSLog(@"%hhd",[fileManager fileExistsAtPath:path]);
    if ([fileManager fileExistsAtPath:path]) {
        NSArray* fileList = [fileManager contentsOfDirectoryAtPath:path error:nil];
        for (int i = 0; i<fileList.count; i++) {
            NSLog(@"%@", fileList[i]);
        }
    }

}



int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString* path = @"/Users/oldgieui/Dropbox/NHNNEXT/2014-2/";
        DisplayAllFilesAtPath(path);
    }
    return 0;
}

