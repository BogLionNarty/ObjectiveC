#import "PBWIPokoj.h"
#import "PBWIZasob.h"

@interface PBWIPokoj : NSObject{
   @private NSMutableArray * _zasoby;
}

-(id) init;
-(void) dodajZasob: (PBWIZasob *) zasob;
-(void) usunZasob: (PBWIZasob *) zasob;
-(NSArray *) pobierzWszystkieZasoby;
@end
