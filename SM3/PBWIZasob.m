#import "PBWIZasob.h"

@implementation PBWIZasob

@synthesize kolor = _kolor;

-(NSString *) pobierzOpisZasobu {
    return [NSString stringWithFormat:@"Jakis zasob o kolorze: %@", _kolor];
}

@end
