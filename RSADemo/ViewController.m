//
//  ViewController.m
//  RSADemo
//
//  Created by 吴兴 on 2016/12/12.
//  Copyright © 2016年 ChanPay. All rights reserved.
//

#import "ViewController.h"
#import "RSA.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //注意：这里的公私钥需要PKCS#8格式 如果不是PKCS#8需要使用openssl进行格式转换。"-----BEGIN PUBLIC KEY-----"和"-----BEGIN PRIVATE KEY-----"这样的是PKCS#8。
    
    NSString* publicKey = @"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDv+qzwr8ggviDGpS808t3FQc//sGpghTYqvaihIpRAQ07bT+0XfxgEudZbHwq7CEm4ObXf8NufsLpQ37jG445VvQH4dKeybHJm6NbJKiDiFD2H1UBC+vOwdBJibnzJZY37udm9nn1QMlmRfUARtb8fwCc9RFcn7JDGmFaj4k3rGQIDAQAB\n-----END PUBLIC KEY-----";
    NSString*privateKey = @"-----BEGIN PRIVATE KEY-----\nMIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAO/6rPCvyCC+IMalLzTy3cVBz/+wamCFNiq9qKEilEBDTttP7Rd/GAS51lsfCrsISbg5td/w25+wulDfuMbjjlW9Afh0p7Jscmbo1skqIOIUPYfVQEL687B0EmJufMlljfu52b2efVAyWZF9QBG1vx/AJz1EVyfskMaYVqPiTesZAgMBAAECgYEAtVnkk0bjoArOTg/KquLWQRlJDFrPKP3CP25wHsU4749t6kJuU5FSH1Ao81d0Dn9m5neGQCOOdRFi23cV9gdFKYMhwPE6+nTAloxI3vb8K9NNMe0zcFksva9c9bUaMGH2p40szMoOpO6TrSHO9Hx4GJ6UfsUUqkFFlN76XprwE+ECQQD9rXwfbr9GKh9QMNvnwo9xxyVl4kI88iq0X6G4qVXo1Tv6/DBDJNkX1mbXKFYL5NOW1waZzR+Z/XcKWAmUT8J9AkEA8i0WT/ieNsF3IuFvrIYG4WUadbUqObcYP4Y7Vt836zggRbu0qvYiqAv92Leruaq3ZN1khxp6gZKl/OJHXc5xzQJACqr1AU1i9cxnrLOhS8m+xoYdaH9vUajNavBqmJ1mY3g0IYXhcbFm/72gbYPgundQ/pLkUCt0HMGv89tn67i+8QJBALV6UgkVnsIbkkKCOyRGv2syT3S7kOv1J+eamGcOGSJcSdrXwZiHoArcCZrYcIhOxOWB/m47ymfE1Dw/+QjzxlUCQCmnGFUO9zN862mKYjEkjDN65n1IUB9Fmc1msHkIZAQaQknmxmCIOHC75u4W0PGRyVzq8KkxpNBq62ICl7xmsPM=\n-----END PRIVATE KEY-----";
    
    NSString* content = @"hello world!";
    NSString *encWithPubKey = [RSA encryptString:content publicKey:publicKey];
    NSLog(@"encryptString:\n%@",encWithPubKey);
    NSString *decWithPrivKey = [RSA decryptString:encWithPubKey privateKey:privateKey];
    NSLog(@"decryptString:\n%@",decWithPrivKey);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
