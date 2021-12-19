#import "PBWIZasob.h"
#import "PBWIBiurko.h"

@implementation PBWIBiurko
@synthesize material= _material;
-(NSString *) opisZasobu{
    return [NSString stringWithFormat:@"Biurko z materiału %@ o kolorze: %@", _material, self.kolor];
}
@end
