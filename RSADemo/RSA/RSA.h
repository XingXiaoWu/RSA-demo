//
//  Created by 吴兴 on 2016/12/12.
//  Copyright © 2016年 ChanPay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSA : NSObject

/**
 加密方法

 @param str 要加密的字符串
 @param pubKey 公钥
 @return 加密字符串
 */
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

//公钥加密数据
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
//公钥解密数据
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
//公钥解密数据
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
//私钥解密字符串
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
//私钥解密数据
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;

@end
