//
//  PBWIZasobyWydzialu.h
//  Zadanie4
//
//  Created by student on 28/10/2019.
//  Copyright © 2019 student.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PBWIPokoj.h"
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"

NS_ASSUME_NONNULL_BEGIN

@interface PBWIZasobyWydzialu : NSObject
{
     @private NSMutableArray * _zasoby;//zasoby pokoi
     @private NSMutableDictionary *_dict ;//pokoje
    }

    -(id) init;

    -(void) dodajPokoj:(PBWIPokoj *) pokoj :(NSString *) numerPokoju;
    -(NSArray *) pobierzWszystkieZasobyWydzialu;
    -(NSArray *) wypiszNumeryPokoi;
    -(void) dodajZasobdoPokoju:(NSString *) numerPokoju:(PBWIZasob *) zasob;
    -(void) usunZasobzPokoju :(NSString *) numerPokoju:(PBWIZasob *)zasob;
    -(void) przeniesZasobzPokoju:(NSString *)numerPokojuZ:(NSString *)numerPokojuDo:(PBWIZasob *) zasob;
    -(NSArray *) wypiszBiurka;
    -(NSArray *) wypiszKrzesla;
    -(NSArray *) wypiszDrukarki;


    
@end



NS_ASSUME_NONNULL_END
