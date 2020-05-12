//
//  YJUserModel.h
//  cocoapods-ybin-demo
//
//  Created by hyj on 2020/5/12.
//  Copyright © 2020 mk. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJAddressModel : NSObject

@property (nonatomic, copy) NSString *aId;
@property (nonatomic, copy) NSString *name;

@end

@interface YJUserModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, strong) YJAddressModel *address;

@end

NS_ASSUME_NONNULL_END
