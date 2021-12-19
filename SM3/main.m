
#import <Foundation/Foundation.h>
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"
#import "PBWIZasobyWydzialu.h"
#import "PBWIDrukarka.h"
#import "PBWIPokoj.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //PBWIZasob *zasob = [[PBWIZasob alloc]init];
        PBWIBiurko *biurko = [[PBWIBiurko alloc] init];
        PBWIBiurko *biurko2 = [[PBWIBiurko alloc] init];
        PBWIDrukarka *drukarka = [[PBWIDrukarka alloc] init];
        //PBWIDrukarka *drukarka2 = [[PBWIDrukarka alloc] init];
        PBWIKrzeslo *krzeslo = [[PBWIKrzeslo alloc] init];
        //BWIKrzeslo *krzeslo2 = [[PBWIKrzeslo alloc] init];
        PBWIZasobyWydzialu *wydzial =[[PBWIZasobyWydzialu alloc]init];
        PBWIPokoj *pokoj = [[PBWIPokoj alloc]init];
        PBWIPokoj *pokoj2 = [[PBWIPokoj alloc]init];
        [biurko setMaterial:@"Olcha"];
        [biurko setKolor:@"brąz"];
        [biurko2 setMaterial:@"Dąb"];
        [biurko2 setKolor:@"czerń"];
        [drukarka setKolor:@"niebieska"];
        [drukarka setModel:@"HP"];
        [krzeslo setObicie:@"skora"];
        [krzeslo setKolor:@"czerwone"];
        [wydzial dodajPokoj:pokoj: @"1"];
        [wydzial dodajPokoj:pokoj2 :@"2"];
        

        
        ///wypisywanie nr pokoi
        NSLog(@"\nNUMERY POKOI");
        NSArray *numerypokoi = [wydzial wypiszNumeryPokoi];
        for(id nr in numerypokoi)
        {
            NSLog(@"Pokój nr %@", nr);
        }
        
        ///dodawanie zasobu do pokoju
        [wydzial dodajZasobdoPokoju:@"1" : biurko];
        [wydzial dodajZasobdoPokoju:@"1" :biurko2];
        [wydzial dodajZasobdoPokoju:@"2" : drukarka];
        NSLog(@"\nDrukarka zostało dodan1: %@", [drukarka opisZasobu]);
        ///przenoszenie zasobu
        NSLog(@"Przenoszenie zasobu");
        NSArray *zasoby = [pokoj pobierzWszystkieZasoby];
        NSLog(@"Ilosc zasobow w pokoju 1: %lu", (unsigned long)[zasoby count]);
        [wydzial przeniesZasobzPokoju:@"1" :@"2" :biurko];
        zasoby = [pokoj pobierzWszystkieZasoby];
        NSLog(@"Ilosc zasobow w pokoju 1: %lu", (unsigned long)[zasoby count]);
        
        ///usuwanie zasobow
        zasoby = [pokoj2 pobierzWszystkieZasoby];
        NSLog(@"Przed usunieciem: %lu", (unsigned long)[zasoby count]);
        [wydzial usunZasobzPokoju:@"2" :drukarka];
        zasoby = [pokoj2 pobierzWszystkieZasoby];
        NSLog(@"Po usunieciu: %lu", (unsigned long)[zasoby count]);
      
        ///wypisywanie wszystkich biurek
        NSLog(@"\nBiurka");
        NSArray *biurka = [wydzial wypiszBiurka];
        for(id temp in biurka)
        {
            NSLog(@"%@", [temp opisZasobu]);
        }
    }
    return 0;
}
