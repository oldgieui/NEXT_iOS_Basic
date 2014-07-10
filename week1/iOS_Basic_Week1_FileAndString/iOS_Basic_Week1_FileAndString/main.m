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
    if ([fileManager fileExistsAtPath:path]) {
        NSArray* fileList = [fileManager contentsOfDirectoryAtPath:path error:nil];
        for (int i = 0; i<fileList.count; i++) {
            NSLog(@"%@", fileList[i]);
        }
    }
}

NSArray* GetAllFilesAtPath(NSString* path){
    NSFileManager* fileManager = [NSFileManager defaultManager];
    return [fileManager contentsOfDirectoryAtPath:path error:nil];
}

BOOL IsFileExist(NSString* fileName, NSString* path){
    NSArray* fileList = GetAllFilesAtPath(path);
    for (int i = 0; i<fileList.count; i++) {
        if ([fileName isEqualToString: fileList[i]]) {
            return true;
        }
    }
    return false;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
//        NSString* path = @"/Users/oldgieui/Dropbox/NHNNEXT/2014-2/";
        NSString* path = @"/Users/oldgieui/FileSearchTest";

//        DisplayAllFilesAtPath(path);
        if (IsFileExist(@"1.txt", path)) {
            NSLog(@"File exists.");
        }
        else{
            NSLog(@"File not exists.");
        }

        
    }
    return 0;
}

