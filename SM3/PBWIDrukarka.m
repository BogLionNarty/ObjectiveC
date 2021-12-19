#import "PBWIDrukarka.h"
#import "PBWIZasob.h"

@implementation PBWIDrukarka

@synthesize model = _model;

-(NSString *) opisZasobu{
    return [NSString stringWithFormat:@"Krzeslo obite %@ o kolorze: %@", _model, self.kolor];
}

@end

