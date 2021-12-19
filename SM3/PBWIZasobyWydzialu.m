#import "PBWIZasobyWydzialu.h"
#import "PBWIPokoj.h"
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"
#import "PBWIDrukarka.h"

@implementation PBWIZasobyWydzialu
-(id) init {
    self = [super init];
    if (self) {
        _zasoby=[[NSMutableArray alloc] init];
        _dict =  [[NSMutableDictionary alloc] init];
    }
    return self;
}
-(void) dodajPokoj: (PBWIPokoj *) pokoj :(NSString *) numerPokoju{
 
    
    [_dict setObject:pokoj forKey:numerPokoju];
}

-(NSArray *) pobierzWszystkieZasobyWydzialu {
    return [_zasoby copy];
}
-(NSArray *) wypiszNumeryPokoi{
    return  [_dict allKeys];
}
-(void) dodajZasobdoPokoju:(NSString *) numerPokoju:(PBWIZasob *) zasob{
    [_zasoby addObject:zasob];
    [[_dict objectForKey:numerPokoju] dodajZasob:zasob ];
    
}
-(void) usunZasobzPokoju :(NSString *) numerPokoju: (PBWIZasob *)zasob{
   
    [[_dict objectForKey:numerPokoju] usunZasob : zasob];
    [_zasoby removeObject:zasob];
}
-(void) przeniesZasobzPokoju:(NSString *) numerPokojuZ: (NSString *) numerPokojuDo :(PBWIZasob *) zasob
{
    [[_dict objectForKey:numerPokojuZ] usunZasob : zasob];
    [[_dict objectForKey:numerPokojuDo] dodajZasob:zasob];
}
-(NSString *) wypiszBiurka{
NSMutableArray *array=[[NSMutableArray alloc] init];
        for(PBWIZasob *elem in _zasoby)
        {
            if([elem isKindOfClass :[PBWIBiurko class]])
            {
                [array addObject:elem];
            }
        }
return array;

}
-(NSString *) wypiszKrzesla{
NSMutableArray *array=[[NSMutableArray alloc] init];
        for(PBWIZasob *elem in _zasoby)
        {
            if([elem isKindOfClass :[PBWIKrzeslo class]])
            {
                [array addObject:elem];
            }
        }
return array;

}
-(NSString *) wypiszDrukarki{
NSMutableArray *array=[[NSMutableArray alloc] init];
        for(PBWIZasob *elem in _zasoby)
        {
            if([elem isKindOfClass :[PBWIDrukarka class]])
            {
                [array addObject:elem];
            }
        }
return array;

}
@end
