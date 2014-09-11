//
//  ViewController.m
//  DataStructureTypes
//
//  Created by HelloMihai on 9/10/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

/** source http://rypress.com/tutorials/objective-c/data-types.html */

@implementation ViewController

- (void)dataTypes
{
    /************************************ C Primitives Integer Types ************************************/
    ^{ // integer types
        BOOL isBool = YES;
        NSLog(@"%d", isBool);
        NSLog(@"%@", isBool ? @"YES" : @"NO");
        
        char aChar = 'a';
        unsigned char anUnsignedChar = 255;
        NSLog(@"The letter %c is ASCII number %hhd", aChar, aChar);
        NSLog(@"%hhu", anUnsignedChar);
        
        short aShort = -32768;
        unsigned short anUnsignedShort = 65535;
        NSLog(@"%hd", aShort);
        NSLog(@"%hu", anUnsignedShort);
        
        int anInt = -2147483648;
        unsigned int anUnsignedInt = 4294967295;
        NSLog(@"%d", anInt);
        NSLog(@"%u", anUnsignedInt);
        
        long aLong = -9223372036854775808;
        unsigned long anUnsignedLong = 18446744073709551615;
        NSLog(@"%ld", aLong);
        NSLog(@"%lu", anUnsignedLong);
        
        long long aLongLong = -9223372036854775808;
        unsigned long long anUnsignedLongLong = 18446744073709551615;
        NSLog(@"%lld", aLongLong);
        NSLog(@"%llu", anUnsignedLongLong);
    };
    
    /************************************ Floating Point Types ************************************/
    /** C Primitives Floating Point Types */
    
    ^{
        // Single precision floating-point
        float aFloat = -21.09f;
        NSLog(@"%f", aFloat);
        NSLog(@"%8.2f", aFloat);
        
        // Double precision floating-point
        double aDouble = -21.09;
        NSLog(@"%8.2f", aDouble);
        NSLog(@"%e", aDouble);
        
        // Extended precision floating-point
        long double aLongDouble = -21.09e8L;
        NSLog(@"%Lf", aLongDouble);
        NSLog(@"%Le", aLongDouble);
        
        int integerResult = 5 / 4;
        NSLog(@"Integer division: %d", integerResult);        // 1
        double doubleResult = 5.0 / 4;
        NSLog(@"Floating-point division: %f", doubleResult);  // 1.25
    };
    
    /************************************ Type Sizes ************************************/
    /** C Primitives size of bytes used to represent each TYPE */
    
    ^{
        NSLog(@"Size of char: %zu", sizeof(char));   // This will always be 1
        NSLog(@"Size of short: %zu", sizeof(short));
        NSLog(@"Size of int: %zu", sizeof(int));
        NSLog(@"Size of long: %zu", sizeof(long));
        NSLog(@"Size of long long: %zu", sizeof(long long));
        NSLog(@"Size of float: %zu", sizeof(float));
        NSLog(@"Size of double: %zu", sizeof(double));
        NSLog(@"Size of size_t: %zu", sizeof(size_t));
        /** Note that sizeof() can also be used with an array, in which case it returns the number of bytes used by the array. */
        NSArray *anArray = @[@"", @"", @""];
        size_t numberOfElements = sizeof(anArray)/sizeof(anArray[0]);
    };
    
    /************************************ Limit Macros ************************************/
    /** min and max what each type can hold */
    
    ^{
        NSLog(@"Smallest signed char: %d", SCHAR_MIN);
        NSLog(@"Largest signed char: %d", SCHAR_MAX);
        NSLog(@"Largest unsigned char: %u", UCHAR_MAX);
        
        NSLog(@"Smallest signed short: %d", SHRT_MIN);
        NSLog(@"Largest signed short: %d", SHRT_MAX);
        NSLog(@"Largest unsigned short: %u", USHRT_MAX);
        
        NSLog(@"Smallest signed int: %d", INT_MIN);
        NSLog(@"Largest signed int: %d", INT_MAX);
        NSLog(@"Largest unsigned int: %u", UINT_MAX);
        
        NSLog(@"Smallest signed long: %ld", LONG_MIN);
        NSLog(@"Largest signed long: %ld", LONG_MAX);
        NSLog(@"Largest unsigned long: %lu", ULONG_MAX);
        
        NSLog(@"Smallest signed long long: %lld", LLONG_MIN);
        NSLog(@"Largest signed long long: %lld", LLONG_MAX);
        NSLog(@"Largest unsigned long long: %llu", ULLONG_MAX);
        
        NSLog(@"Smallest float: %e", FLT_MIN);
        NSLog(@"Largest float: %e", FLT_MAX);
        NSLog(@"Smallest double: %e", DBL_MIN);
        NSLog(@"Largest double: %e", DBL_MAX);
        
        NSLog(@"Largest possible array index: %u", SIZE_MAX);
    };
    
    /************************************ id ************************************/
    
    ^{
        id mysteryObject = @"An NSString object";
        NSLog(@"%@", [mysteryObject description]);
        mysteryObject = @{@"model": @"Ford", @"year": @1967};
        NSLog(@"%@", [mysteryObject description]);
    };
    
    /************************************ Class Type ************************************/
    
    ^{
        Class targetClass = [NSString class];
        id mysteryObject = @"An NSString object";
        if ([mysteryObject isKindOfClass:targetClass]) {
            NSLog(@"Yup! That's an instance of the target class");
        }
    };
    
    /************************************ NSInteger ************************************/
    
    /************************************ NSNumber ************************************/
    
    ^{
        NSNumber *aBool = [NSNumber numberWithBool:NO];
        NSNumber *aChar = [NSNumber numberWithChar:'z'];
        NSNumber *aUChar = [NSNumber numberWithUnsignedChar:255];
        NSNumber *aShort = [NSNumber numberWithShort:32767];
        NSNumber *aUShort = [NSNumber numberWithUnsignedShort:65535];
        NSNumber *annnInt = [NSNumber numberWithInt:2147483647];
        NSNumber *aUInt = [NSNumber numberWithUnsignedInt:4294967295];
        NSNumber *aLong = [NSNumber numberWithLong:9223372036854775807];
        NSNumber *aULong = [NSNumber numberWithUnsignedLong:18446744073709551615];
        NSNumber *aFloat = [NSNumber numberWithFloat:26.99f];
        NSNumber *aDouble = [NSNumber numberWithDouble:26.99];

        NSLog(@"%@", [aBool boolValue] ? @"YES" : @"NO");
        NSLog(@"%c", [aChar charValue]);
        NSLog(@"%hhu", [aUChar unsignedCharValue]);
        NSLog(@"%hi", [aShort shortValue]);
        NSLog(@"%hu", [aUShort unsignedShortValue]);
        NSLog(@"%i", [annnInt intValue]);
        NSLog(@"%u", [aUInt unsignedIntValue]);
        NSLog(@"%li", [aLong longValue]);
        NSLog(@"%lu", [aULong unsignedLongValue]);
        NSLog(@"%f", [aFloat floatValue]);
        NSLog(@"%f", [aDouble doubleValue]);
        //or %@
        NSLog(@"%@", aUChar);
        NSLog(@"%@", annnInt);
        NSLog(@"%@", aFloat);
        
        float asFloat = [annnInt floatValue];
        NSLog(@"%.2f", asFloat);
        NSString* asString = [annnInt stringValue];
        NSLog(@"%@", asString);
    };
    
    ^{
        
        // numeric literals
        NSNumber* aaBool = @NO;
        NSNumber* aaChar = @'z';
        NSNumber* aanInt = @2147483647;
        NSNumber* aaUInt = @4294967295U;
        NSNumber* aaLong = @9223372036854775807L;
        NSNumber* aaFloat = @26.99F;
        NSNumber* aaDouble = @26.99;
    };
    
    ^{
        // entire operation in @(...)
        double x = 24.0;
        NSNumber* resultt = @(x * .15);
        NSLog(@"%.2f", [resultt doubleValue]);
        
        // comparing
        NSNumber* annInt = @27;
        NSNumber* sameInt = @27U;
        // Pointer comparison (fails)
        if (annInt == sameInt) {
            NSLog(@"They are the same object");
        }
        // Value comparison (succeeds)
        if ([annInt isEqualToNumber:sameInt]) {
            NSLog(@"They are the same value");
        }
    };
    
    ^{
        // comparing with enumarators
        NSNumber* anInt = @27;
        NSNumber* anotherInt = @42;
        NSComparisonResult result = [anInt compare:anotherInt];
        if (result == NSOrderedAscending) {
            NSLog(@"27 < 42");
        } else if (result == NSOrderedSame) {
            NSLog(@"27 == 42");
        } else if (result == NSOrderedDescending) {
            NSLog(@"27 > 42");
        }
    };
    
    /************************************ NSDecimalNumber ************************************/
    
    ^{ // declaring
        NSDecimalNumber *price;
        price = [NSDecimalNumber decimalNumberWithMantissa:1599
                                                  exponent:-2
                                                isNegative:NO];
        price = [NSDecimalNumber decimalNumberWithString:@"15.99"];
    };
    
    ^{ // arithmetic
        NSDecimalNumber *price1 = [NSDecimalNumber decimalNumberWithString:@"15.99"];
        NSDecimalNumber *price2 = [NSDecimalNumber decimalNumberWithString:@"29.99"];
        NSDecimalNumber *coupon = [NSDecimalNumber decimalNumberWithString:@"5.00"];
        NSDecimalNumber *discount = [NSDecimalNumber decimalNumberWithString:@".90"];
        NSDecimalNumber *numProducts = [NSDecimalNumber decimalNumberWithString:@"2.0"];
        
        NSDecimalNumber *subtotal = [price1 decimalNumberByAdding:price2];
        NSDecimalNumber *afterCoupon = [subtotal decimalNumberBySubtracting:coupon];
        NSDecimalNumber *afterDiscount = [afterCoupon decimalNumberByMultiplyingBy:discount];
        NSDecimalNumber *average = [afterDiscount decimalNumberByDividingBy:numProducts];
        NSDecimalNumber *averageSquared = [average decimalNumberByRaisingToPower:2];
        
        NSLog(@"Subtotal: %@", subtotal);                    // 45.98
        NSLog(@"After coupon: %@", afterCoupon);           // 40.98
        NSLog((@"After discount: %@"), afterDiscount);       // 36.882
        NSLog(@"Average price per product: %@", average);    // 18.441
        NSLog(@"Average price squared: %@", averageSquared); // 340.070481
    };
    
    ^{ // rounding
        NSDecimalNumberHandler *roundUp = [NSDecimalNumberHandler
                                           decimalNumberHandlerWithRoundingMode:NSRoundUp
                                           scale:2
                                           raiseOnExactness:NO
                                           raiseOnOverflow:NO
                                           raiseOnUnderflow:NO
                                           raiseOnDivideByZero:YES];
        
        NSDecimalNumber *subtotal = [NSDecimalNumber decimalNumberWithString:@"40.98"];
        NSDecimalNumber *discount = [NSDecimalNumber decimalNumberWithString:@".90"];
        
        NSDecimalNumber *total = [subtotal decimalNumberByMultiplyingBy:discount
                                                           withBehavior:roundUp];
        NSLog(@"Rounded total: %@", total);
    };
    
    // comparing
    ^{
        NSDecimalNumber *discount1 = [NSDecimalNumber decimalNumberWithString:@".85"];
        NSDecimalNumber *discount2 = [NSDecimalNumber decimalNumberWithString:@".9"];
        NSComparisonResult result = [discount1 compare:discount2];
        if (result == NSOrderedAscending) {
            NSLog(@"85%% < 90%%");
        } else if (result == NSOrderedSame) {
            NSLog(@"85%% == 90%%");
        } else if (result == NSOrderedDescending) {
            NSLog(@"85%% > 90%%");
        }
    };
    
    /************************************ NSDecimal ************************************/
    ^{
        NSDecimalNumber *price = [NSDecimalNumber decimalNumberWithString:@"15.99"];
        NSDecimal asStruct = [price decimalValue];
        NSDecimalNumber *asNewObject = [NSDecimalNumber decimalNumberWithDecimal:asStruct];
    };
    
    ^{ // arithmetic
        NSDecimal price1 = [[NSDecimalNumber decimalNumberWithString:@"15.99"] decimalValue];
        NSDecimal price2 = [[NSDecimalNumber decimalNumberWithString:@"29.99"] decimalValue];
        NSDecimal coupon = [[NSDecimalNumber decimalNumberWithString:@"5.00"] decimalValue];
        NSDecimal discount = [[NSDecimalNumber decimalNumberWithString:@".90"] decimalValue];
        NSDecimal numProducts = [[NSDecimalNumber decimalNumberWithString:@"2.0"] decimalValue];
        NSLocale *locale = [NSLocale currentLocale];
        NSDecimal result;
        
        NSDecimalAdd(&result, &price1, &price2, NSRoundUp);
        NSLog(@"Subtotal: %@", NSDecimalString(&result, locale));
        NSDecimalSubtract(&result, &result, &coupon, NSRoundUp);
        NSLog(@"After coupon: %@", NSDecimalString(&result, locale));
        NSDecimalMultiply(&result, &result, &discount, NSRoundUp);
        NSLog(@"After discount: %@", NSDecimalString(&result, locale));
        NSDecimalDivide(&result, &result, &numProducts, NSRoundUp);
        NSLog(@"Average price per product: %@", NSDecimalString(&result, locale));
        NSDecimalPower(&result, &result, 2, NSRoundUp);
        NSLog(@"Average price squared: %@", NSDecimalString(&result, locale));
    };
    
    ^{ // error checking
        NSDecimal a = [[NSDecimalNumber decimalNumberWithString:@"1.0"] decimalValue];
        NSDecimal b = [[NSDecimalNumber decimalNumberWithString:@"0.0"] decimalValue];
        NSDecimal result;
        NSCalculationError success = NSDecimalDivide(&result, &a, &b, NSRoundPlain);
        switch (success) {
            case NSCalculationNoError:
                NSLog(@"Operation successful");
                break;
            case NSCalculationLossOfPrecision:
                NSLog(@"Error: Operation resulted in loss of precision");
                break;
            case NSCalculationUnderflow:
                NSLog(@"Error: Operation resulted in underflow");
                break;
            case NSCalculationOverflow:
                NSLog(@"Error: Operation resulted in overflow");
                break;
            case NSCalculationDivideByZero:
                NSLog(@"Error: Tried to divide by zero");
                break;
            default:
                break;
        }
    };
    
    ^{ // comparing
        NSDecimal discount1 = [[NSDecimalNumber decimalNumberWithString:@".85"] decimalValue];
        NSDecimal discount2 = [[NSDecimalNumber decimalNumberWithString:@".9"] decimalValue];
        NSComparisonResult result = NSDecimalCompare(&discount1, &discount2);
        if (result == NSOrderedAscending) {
            NSLog(@"85%% < 90%%");
        } else if (result == NSOrderedSame) {
            NSLog(@"85%% == 90%%");
        } else if (result == NSOrderedDescending) {
            NSLog(@"85%% > 90%%");
        }
    };
    
    /************************************ NSString ************************************/
    
    ^{ // creating
        NSString *make = @"Porsche";
        NSString *model = @"911";
        int year = 1968;
        NSString *message = [NSString stringWithFormat:@"That's a %@ %@ from %d!",
                             make, model, year];
        NSLog(@"%@", message);
    };
    
    ^{ // unicode supported
        NSString *make = @"Côte d'Ivoire";
    };
    
    ^{ // enumerating
        NSString *make = @"Porsche";
        for (int i=0; i<[make length]; i++) {
            unichar letter = [make characterAtIndex:i];
            NSLog(@"%d: %hu", i, letter);
        }
    };
    
    ^{ // comparing
        NSString *car = @"Porsche Boxster";
        if ([car isEqualToString:@"Porsche Boxster"]) {
            NSLog(@"That car is a Porsche Boxster");
        }
        if ([car hasPrefix:@"Porsche"]) {
            NSLog(@"That car is a Porsche of some sort");
        }
        if ([car hasSuffix:@"Carrera"]) {
            // This won't execute
            NSLog(@"That car is a Carrera");
        }
    };
    
    ^{ // comparing order
        NSString *car = @"Porsche Boxster";
        NSString *otherCar = @"Ferrari";
        NSComparisonResult result = [car compare:otherCar];
        if (result == NSOrderedAscending) {
            NSLog(@"The letter 'P' comes before 'F'");
        } else if (result == NSOrderedSame) {
            NSLog(@"We're comparing the same string");
        } else if (result == NSOrderedDescending) {
            NSLog(@"The letter 'P' comes after 'F'");
        }
    };
    
    ^{ // combining
        NSString *make = @"Ferrari";
        NSString *model = @"458 Spider";
        NSString *car = [make stringByAppendingString:model];
        NSLog(@"%@", car);        // Ferrari458 Spider
        car = [make stringByAppendingFormat:@" %@", model];
        NSLog(@"%@", car);        // Ferrari 458 Spider (note the space)
    };
    
    ^{ // searching
        NSString *car = @"Maserati GranCabrio";
        NSRange searchResult = [car rangeOfString:@"Cabrio"];
        if (searchResult.location == NSNotFound) {
            NSLog(@"Search string was not found");
        } else {
            NSLog(@"'Cabrio' starts at index %lu and is %lu characters long",
                  (unsigned long)searchResult.location,        // 13
                  (unsigned long)searchResult.length);         // 6
        }
    };
    
    ^{ // subdividing
        NSString *car = @"Maserati GranTurismo";
        NSLog(@"%@", [car substringToIndex:8]);               // Maserati
        NSLog(@"%@", [car substringFromIndex:9]);             // GranTurismo
        NSRange range = NSMakeRange(9, 4);
        NSLog(@"%@", [car substringWithRange:range]);         // Gran
    };
    
    ^{ // split into array
        NSString *models = @"Porsche,Ferrari,Maserati";
        NSArray *modelsAsArray = [models componentsSeparatedByString:@","];
        NSLog(@"%@", [modelsAsArray objectAtIndex:1]);        // Ferrari
    };
    
    ^{ // replacing
        NSString *elise = @"Lotus Elise";
        NSRange range = NSMakeRange(6, 5);
        NSString *exige = [elise stringByReplacingCharactersInRange:range
                                                         withString:@"Exige"];
        NSLog(@"%@", exige);          // Lotus Exige
        NSString *evora = [exige stringByReplacingOccurrencesOfString:@"Exige"
                                                           withString:@"Evora"];
        NSLog(@"%@", evora);          // Lotus Evora
    };
    
    ^{ // changing case
        NSString *car = @"lotUs beSpoKE";
        NSLog(@"%@", [car lowercaseString]);      // lotus bespoke
        NSLog(@"%@", [car uppercaseString]);      // LOTUS BESPOKE
        NSLog(@"%@", [car capitalizedString]);    // Lotus Bespoke
    };
    
    ^{ // numerical conversions
        NSString *year = @"2012";
        BOOL asBool = [year boolValue];
        int asInt = [year intValue];
        NSInteger asInteger = [year integerValue];
        long long asLongLong = [year longLongValue];
        float asFloat = [year floatValue];
        double asDouble = [year doubleValue];
    };
    
    /************************************ NSMutableString ************************************/
    
    ^{ // creating and updating
        NSMutableString *car = [NSMutableString stringWithString:@"Porsche 911"];
        [car setString:@"Porsche Boxster"];
    };
    
    ^{ // expanding
        NSMutableString *car = [NSMutableString stringWithCapacity:20];
        NSString *model = @"458 Spider";
        
        [car setString:@"Ferrari"];
        [car appendString:model];
        NSLog(@"%@", car);                    // Ferrari458 Spider
        
        [car setString:@"Ferrari"];
        [car appendFormat:@" %@", model];
        NSLog(@"%@", car);                    // Ferrari 458 Spider
        
        [car setString:@"Ferrari Spider"];
        [car insertString:@"458 " atIndex:8];
        NSLog(@"%@", car);                    // Ferrari 458 Spider
    };
    
    ^{ // replacing deleting substrings
        NSMutableString *car = [NSMutableString stringWithCapacity:20];
        [car setString:@"Lotus Elise"];
        [car replaceCharactersInRange:NSMakeRange(6, 5)
                           withString:@"Exige"];
        NSLog(@"%@", car);                               // Lotus Exige
        [car deleteCharactersInRange:NSMakeRange(5, 6)];
        NSLog(@"%@", car);                               // Lotus
    };
    
    ^{ // DONT EVER DO THIS
        NSString *indices = @"";
        for (int i=0; i<1000; i++) {
            indices = [indices stringByAppendingFormat:@"%d", i];
        }
    };
    
    ^{ // DO THIS INSTEAD OF ABOVE
        NSMutableString *indices = [NSMutableString stringWithCapacity:1];
        for (int i=0; i<1000; i++) {
            [indices appendFormat:@"%d", i];
        }
    };
    
    /************************************ NSSet ***********************************
     unordered and unique
     */
    
    ^{ // creating
        NSSet *americanMakes = [NSSet setWithObjects:@"Chrysler", @"Ford",
                                @"General Motors", nil];
        NSLog(@"%@", americanMakes);
        
        // from array
        NSArray *japaneseMakes = @[@"Honda", @"Mazda",
                                   @"Mitsubishi", @"Honda"];
        NSSet *uniqueMakes = [NSSet setWithArray:japaneseMakes];
        NSLog(@"%@", uniqueMakes);    // Honda, Mazda, Mitsubishi
    };
    
    ^{ // enumerating
        NSSet *models = [NSSet setWithObjects:@"Civic", @"Accord",
                         @"Odyssey", @"Pilot", @"Fit", nil];
        NSLog(@"The set has %li elements", (unsigned long)[models count]);
        for (id item in models) {
            NSLog(@"%@", item);
        }
    };
    
    ^{ // block based enumeration
        NSSet *models = [NSSet setWithObjects:@"Civic", @"Accord",
                         @"Odyssey", @"Pilot", @"Fit", nil];
        [models enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
            NSLog(@"Current item: %@", obj);
            if ([obj isEqualToString:@"Fit"]) {
                NSLog(@"I was looking for a Honda Fit, and I found it!");
                *stop = YES;    // Stop enumerating items
            }
        }];
    };
    
    ^{ // comparing
        NSSet *japaneseMakes = [NSSet setWithObjects:@"Honda", @"Nissan",
                                @"Mitsubishi", @"Toyota", nil];
        NSSet *johnsFavoriteMakes = [NSSet setWithObjects:@"Honda", nil];
        NSSet *marysFavoriteMakes = [NSSet setWithObjects:@"Toyota",
                                     @"Alfa Romeo", nil];
        
        if ([johnsFavoriteMakes isEqualToSet:japaneseMakes]) {
            NSLog(@"John likes all the Japanese auto makers and no others");
        }
        if ([johnsFavoriteMakes intersectsSet:japaneseMakes]) {
            // You'll see this message
            NSLog(@"John likes at least one Japanese auto maker");
        }
        if ([johnsFavoriteMakes isSubsetOfSet:japaneseMakes]) {
            // And this one, too
            NSLog(@"All of the auto makers that John likes are Japanese");
        }
        if ([marysFavoriteMakes isSubsetOfSet:japaneseMakes]) {
            NSLog(@"All of the auto makers that Mary likes are Japanese");
        }
    };
    
    ^{ // membership checking
        NSSet *selectedMakes = [NSSet setWithObjects:@"Maserati",
                                @"Porsche", nil];
        // BOOL checking
        if ([selectedMakes containsObject:@"Maserati"]) {
            NSLog(@"The user seems to like expensive cars");
        }
        // nil checking
        NSString *result = [selectedMakes member:@"Maserati"];
        if (result != nil) {
            NSLog(@"%@ is one of the selected makes", result);
        }
    };
    
    ^{ // filtering
        NSSet *toyotaModels = [NSSet setWithObjects:@"Corolla", @"Sienna",
                               @"Camry", @"Prius",
                               @"Highlander", @"Sequoia", nil];
        NSSet *cModels = [toyotaModels objectsPassingTest:^BOOL(id obj, BOOL *stop) {
            if ([obj hasPrefix:@"C"]) {
                return YES;
            } else {
                return NO;
            }
        }];
        NSLog(@"%@", cModels);    // Corolla, Camry
    };
    
    ^{ // combining
        NSSet *affordableMakes = [NSSet setWithObjects:@"Ford", @"Honda",
                                  @"Nissan", @"Toyota", nil];
        NSSet *fancyMakes = [NSSet setWithObjects:@"Ferrari", @"Maserati",
                             @"Porsche", nil];
        NSSet *allMakes = [affordableMakes setByAddingObjectsFromSet:fancyMakes];
        NSLog(@"%@", allMakes);
    };
    
    /************************************ NSMutableSet ************************************/
    
    ^{ // creating
        NSMutableSet *brokenCars = [NSMutableSet setWithObjects:
                                    @"Honda Civic", @"Nissan Versa", nil];
        NSMutableSet *repairedCars = [NSMutableSet setWithCapacity:5];
    };
    
    ^{ // adding removing
        NSMutableSet *brokenCars = [NSMutableSet setWithObjects:
                                    @"Honda Civic", @"Nissan Versa", nil];
        NSMutableSet *repairedCars = [NSMutableSet setWithCapacity:5];
        // "Fix" the Honda Civic
        [brokenCars removeObject:@"Honda Civic"];
        [repairedCars addObject:@"Honda Civic"];
        
        NSLog(@"Broken cars: %@", brokenCars);     // Nissan Versa
        NSLog(@"Repaired cars: %@", repairedCars); // Honda Civic
    };
    
    ^{ // filtering with predicates
        NSMutableSet *toyotaModels = [NSMutableSet setWithObjects:@"Corolla", @"Sienna",
                                      @"Camry", @"Prius",
                                      @"Highlander", @"Sequoia", nil];
        NSPredicate *startsWithC = [NSPredicate predicateWithBlock:
                                    ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                                        if ([evaluatedObject hasPrefix:@"C"]) {
                                            return YES;
                                        } else {
                                            return NO;
                                        }
                                    }];
        [toyotaModels filterUsingPredicate:startsWithC];
        NSLog(@"%@", toyotaModels);    // Corolla, Camry
    };
    
    ^{ // set theory operations
        NSSet *japaneseMakes = [NSSet setWithObjects:@"Honda", @"Nissan",
                                @"Mitsubishi", @"Toyota", nil];
        NSSet *johnsFavoriteMakes = [NSSet setWithObjects:@"Honda", nil];
        NSSet *marysFavoriteMakes = [NSSet setWithObjects:@"Toyota",
                                     @"Alfa Romeo", nil];
        
        NSMutableSet *result = [NSMutableSet setWithCapacity:5];
        // Union
        [result setSet:johnsFavoriteMakes];
        [result unionSet:marysFavoriteMakes];
        NSLog(@"Either John's or Mary's favorites: %@", result);
        // Intersection
        [result setSet:johnsFavoriteMakes];
        [result intersectSet:japaneseMakes];
        NSLog(@"John's favorite Japanese makes: %@", result);
        // Relative Complement
        [result setSet:japaneseMakes];
        [result minusSet:johnsFavoriteMakes];
        NSLog(@"Japanese makes that are not John's favorites: %@",
              result);
    };
    
    ^{ // enumaration and changing values DO NOT DO THIS. EVER.
        NSMutableSet *makes = [NSMutableSet setWithObjects:@"Ford", @"Honda",
                               @"Nissan", @"Toyota", nil];
        for (NSString *make in makes) {
            NSLog(@"%@", make);
            if ([make hasPrefix:@"T"]) {
                // Throws an NSGenericException:
                // "Collection was mutated while being enumerated"
                [makes removeObject:@"Toyota"];
            }
        }
    };
    
    ^{ // enumeration correctly
        NSMutableSet *makes = [NSMutableSet setWithObjects:@"Ford", @"Honda",
                               @"Nissan", @"Toyota", nil];
        NSArray *snapshot = [makes allObjects];
        for (NSString *make in snapshot) {
            NSLog(@"%@", make);
            if ([make hasPrefix:@"T"]) {
                [makes removeObject:@"Toyota"];
            }
        }
        NSLog(@"%@", makes);
    };
    
    /************************************ NSCountedSet ************************************/
    
    ^{ //
        NSCountedSet *inventory = [NSCountedSet setWithCapacity:5];
        [inventory addObject:@"Honda Accord"];
        [inventory addObject:@"Honda Accord"];
        [inventory addObject:@"Nissan Altima"];
        NSLog(@"There are %li Accords in stock and %li Altima",
              (unsigned long)[inventory countForObject:@"Honda Accord"],    // 2
              (unsigned long)[inventory countForObject:@"Nissan Altima"]);  // 1
    };
    
    /************************************ NSArray ************************************/
    
    ^{ // creating
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray *ukMakes = [NSArray arrayWithObjects:@"Aston Martin",
                            @"Lotus", @"Jaguar", @"Bentley", nil];
        
        NSLog(@"First german make: %@", germanMakes[0]);
        NSLog(@"First U.K. make: %@", [ukMakes objectAtIndex:0]);
    };
    
    ^{ // enumerating
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        // With fast-enumeration
        for (NSString *item in germanMakes) {
            NSLog(@"%@", item);
        }
        // With a traditional for loop
        for (int i=0; i<[germanMakes count]; i++) {
            NSLog(@"%d: %@", i, germanMakes[i]);
        }
        
        [germanMakes enumerateObjectsUsingBlock:^(id obj,
                                                  NSUInteger idx,
                                                  BOOL *stop) {
            NSLog(@"%ld: %@", (unsigned long)idx, obj);
        }];
    };
    
    ^{ // comparing
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray *sameGermanMakes = [NSArray arrayWithObjects:@"Mercedes-Benz",
                                    @"BMW", @"Porsche", @"Opel",
                                    @"Volkswagen", @"Audi", nil];
        
        if ([germanMakes isEqualToArray:sameGermanMakes]) {
            NSLog(@"Oh good, literal arrays are the same as NSArrays");
        }
    };
    
    ^{ // membership checking
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        // BOOL checking
        if ([germanMakes containsObject:@"BMW"]) {
            NSLog(@"BMW is a German auto maker");
        }
        // Index checking
        NSUInteger index = [germanMakes indexOfObject:@"BMW"];
        if (index == NSNotFound) {
            NSLog(@"Well that's not quite right...");
        } else {
            NSLog(@"BMW is a German auto maker and is at index %ld", (unsigned long)index);
        }
    };
    
    ^{ // sorting
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray *sortedMakes = [germanMakes sortedArrayUsingComparator:
                                ^NSComparisonResult(id obj1, id obj2) {
                                    if ([obj1 length] < [obj2 length]) {
                                        return NSOrderedAscending;
                                    } else if ([obj1 length] > [obj2 length]) {
                                        return NSOrderedDescending;
                                    } else {
                                        return NSOrderedSame;
                                    }
                                }];
        NSLog(@"%@", sortedMakes);
    };
    
    ^{ // filtering
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        
        NSPredicate *beforeL = [NSPredicate predicateWithBlock:
                                ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                                    NSComparisonResult result = [@"L" compare:evaluatedObject];
                                    if (result == NSOrderedDescending) {
                                        return YES;
                                    } else {
                                        return NO;
                                    }
                                }];
        NSArray *makesBeforeL = [germanMakes
                                 filteredArrayUsingPredicate:beforeL];
        NSLog(@"%@", makesBeforeL);    // BMW, Audi
    };
    
    ^{ // subdividing
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        
        NSArray *lastTwo = [germanMakes subarrayWithRange:NSMakeRange(4, 2)];
        NSLog(@"%@", lastTwo);    // Volkswagen, Audi
    };
    
    ^{ // combining
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray *ukMakes = @[@"Aston Martin", @"Lotus", @"Jaguar", @"Bentley"];
        
        NSArray *allMakes = [germanMakes arrayByAddingObjectsFromArray:ukMakes];
        NSLog(@"%@", allMakes);
    };
    
    ^{ // string conversion
        NSArray *ukMakes = @[@"Aston Martin", @"Lotus", @"Jaguar", @"Bentley"];
        NSLog(@"%@", [ukMakes componentsJoinedByString:@", "]);
    };
    
    ^{ // reversing order
        NSArray *anArray = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray* reversedArray = [[anArray reverseObjectEnumerator] allObjects];
    };
    
    /************************************ NSMutableArray ************************************/
    
    ^{ // creating
        NSMutableArray *brokenCars = [NSMutableArray arrayWithObjects:
                                      @"Audi A6", @"BMW Z3",
                                      @"Audi Quattro", @"Audi TT", nil];
    };
    
    ^{ // adding removing
        NSMutableArray *brokenCars = [NSMutableArray arrayWithObjects:
                                      @"Audi A6", @"BMW Z3",
                                      @"Audi Quattro", @"Audi TT", nil];
        [brokenCars addObject:@"BMW F25"];
        NSLog(@"%@", brokenCars);       // BMW F25 added to end
        [brokenCars removeLastObject];
        NSLog(@"%@", brokenCars);       // BMW F25 removed from end
        
        // Add BMW F25 to front
        [brokenCars insertObject:@"BMW F25" atIndex:0];
        // Remove BMW F25 from front
        [brokenCars removeObjectAtIndex:0];
        // Remove Audi Quattro
        [brokenCars removeObject:@"Audi Quattro"];
        
        // Change second item to Audi Q5
        [brokenCars replaceObjectAtIndex:1 withObject:@"Audi Q5"];
    };
    
    ^{ // Sorting With Descriptors
        NSDictionary *car1 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Golf",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"18750.00"]
                               };
        NSDictionary *car2 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Eos",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"35820.00"]
                               };
        NSDictionary *car3 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Jetta A5",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"16675.00"]
                               };
        NSDictionary *car4 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Jetta A4",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"16675.00"]
                               };
        NSMutableArray *cars = [NSMutableArray arrayWithObjects:
                                car1, car2, car3, car4, nil];
        
        NSSortDescriptor *priceDescriptor = [NSSortDescriptor
                                             sortDescriptorWithKey:@"price"
                                             ascending:YES
                                             selector:@selector(compare:)];
        NSSortDescriptor *modelDescriptor = [NSSortDescriptor
                                             sortDescriptorWithKey:@"model"
                                             ascending:YES
                                             selector:@selector(caseInsensitiveCompare:)];
        
        NSArray *descriptors = @[priceDescriptor, modelDescriptor];
        [cars sortUsingDescriptors:descriptors];
        NSLog(@"%@", cars);    // car4, car3, car1, car2
    };
    
    /************************************ NSDictionary ************************************/
    
    ^{ // creating
        // Literal syntax
        NSDictionary *inventory = @{
                                    @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                    @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                    @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                    @"BMW X6" : [NSNumber numberWithInt:16],
                                    };
        // Values and keys as arguments
        inventory = [NSDictionary dictionaryWithObjectsAndKeys:
                     [NSNumber numberWithInt:13], @"Mercedes-Benz SLK250",
                     [NSNumber numberWithInt:22], @"Mercedes-Benz E350",
                     [NSNumber numberWithInt:19], @"BMW M3 Coupe",
                     [NSNumber numberWithInt:16], @"BMW X6", nil];
        // Values and keys as arrays
        NSArray *models = @[@"Mercedes-Benz SLK250", @"Mercedes-Benz E350",
                            @"BMW M3 Coupe", @"BMW X6"];
        NSArray *stock = @[[NSNumber numberWithInt:13],
                           [NSNumber numberWithInt:22],
                           [NSNumber numberWithInt:19],
                           [NSNumber numberWithInt:16]];
        inventory = [NSDictionary dictionaryWithObjects:stock forKeys:models];
        NSLog(@"%@", inventory);
    };
    
    ^{ // accessing values and keys
        NSDictionary *inventory = @{
                                    @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                    @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                    @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                    @"BMW X6" : [NSNumber numberWithInt:16],
                                    };
        NSLog(@"There are %@ X6's in stock", inventory[@"BMW X6"]);
        NSLog(@"There are %@ E350's in stock",
              [inventory objectForKey:@"Mercedes-Benz E350"]);
    };
    
    ^{ // accessing values and keys reverse lookup
        NSDictionary *inventory = @{
                                    @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:0],
                                    @"Mercedes-Benz E350" : [NSNumber numberWithInt:0],
                                    @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                    @"BMW X6" : [NSNumber numberWithInt:16],
                                    };
        NSArray *outOfStock = [inventory allKeysForObject:
                               [NSNumber numberWithInt:0]];
        NSLog(@"The following cars are currently out of stock: %@",
              [outOfStock componentsJoinedByString:@", "]);
    };
    
    ^{ // enumerating
        NSDictionary *inventory = @{
                                    @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                    @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                    @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                    @"BMW X6" : [NSNumber numberWithInt:16],
                                    };
        NSLog(@"We currently have %ld models available", (unsigned long)[inventory count]);
        for (id key in inventory) {
            NSLog(@"There are %@ %@'s in stock", inventory[key], key);
        }
        
        NSLog(@"Models: %@", [inventory allKeys]);
        NSLog(@"Stock: %@", [inventory allValues]);
        
        [inventory enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"There are %@ %@'s in stock", obj, key);
        }];
    };
    
    ^{ // comparing
        NSDictionary *warehouseInventory = @{
                                             @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                             @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                             @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                             @"BMW X6" : [NSNumber numberWithInt:16],
                                             };
        NSDictionary *showroomInventory = @{
                                            @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                            @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                            @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                            @"BMW X6" : [NSNumber numberWithInt:16],
                                            };
        if ([warehouseInventory isEqualToDictionary:showroomInventory]) {
            NSLog(@"Why are we storing so many cars in our showroom?");
        }
    };
    
    ^{ // sorting
        NSDictionary *prices = @{
                                 @"Mercedes-Benz SLK250" : [NSDecimalNumber decimalNumberWithString:@"42900.00"],
                                 @"Mercedes-Benz E350" : [NSDecimalNumber decimalNumberWithString:@"51000.00"],
                                 @"BMW M3 Coupe" : [NSDecimalNumber decimalNumberWithString:@"62000.00"],
                                 @"BMW X6" : [NSDecimalNumber decimalNumberWithString:@"55015.00"]
                                 };
        NSArray *sortedKeys = [prices keysSortedByValueUsingComparator:
                               ^NSComparisonResult(id obj1, id obj2) {
                                   return [obj2 compare:obj1];
                               }];
        NSLog(@"%@", sortedKeys);
    };
    
    ^{ // filtering keys
        NSDictionary *prices = @{
                                 @"Mercedes-Benz SLK250" : [NSDecimalNumber decimalNumberWithString:@"42900.00"],
                                 @"Mercedes-Benz E350" : [NSDecimalNumber decimalNumberWithString:@"51000.00"],
                                 @"BMW M3 Coupe" : [NSDecimalNumber decimalNumberWithString:@"62000.00"],
                                 @"BMW X6" : [NSDecimalNumber decimalNumberWithString:@"55015.00"]
                                 };
        NSDecimalNumber *maximumPrice = [NSDecimalNumber decimalNumberWithString:@"50000.00"];
        NSSet *under50k = [prices keysOfEntriesPassingTest:
                           ^BOOL(id key, id obj, BOOL *stop) {
                               if ([obj compare:maximumPrice] == NSOrderedAscending) {
                                   return YES;
                               } else {
                                   return NO;
                               }
                           }];
        NSLog(@"%@", under50k);
    };
    
    /************************************ NSMutableDictionary ************************************/
    
    ^{ // creating
        NSMutableDictionary *jobs = [NSMutableDictionary
                                     dictionaryWithDictionary:@{
                                                                @"Audi TT" : @"John",
                                                                @"Audi Quattro (Black)" : @"Mary",
                                                                @"Audi Quattro (Silver)" : @"Bill",
                                                                @"Audi A7" : @"Bill"
                                                                }];
        NSLog(@"%@", jobs);
    };
    
    ^{ // adding removing
        NSMutableDictionary *jobs = [NSMutableDictionary
                                     dictionaryWithDictionary:@{
                                                                @"Audi TT" : @"John",
                                                                @"Audi Quattro (Black)" : @"Mary",
                                                                @"Audi Quattro (Silver)" : @"Bill",
                                                                @"Audi A7" : @"Bill"
                                                                }];
        // Transfer an existing job to Mary
        [jobs setObject:@"Mary" forKey:@"Audi TT"];
        // Finish a job
        [jobs removeObjectForKey:@"Audi A7"];
        // Add a new job
        jobs[@"Audi R8 GT"] = @"Jack";
    };
    
    ^{ // combining
        NSMutableDictionary *jobs = [NSMutableDictionary
                                     dictionaryWithDictionary:@{
                                                                @"Audi TT" : @"John",
                                                                @"Audi Quattro (Black)" : @"Mary",
                                                                @"Audi Quattro (Silver)" : @"Bill",
                                                                @"Audi A7" : @"Bill"
                                                                }];
        NSDictionary *bakerStreetJobs = @{
                                          @"BMW 640i" : @"Dick",
                                          @"BMW X5" : @"Brad"
                                          };
        [jobs addEntriesFromDictionary:bakerStreetJobs];
    };
    
    ^{ // combining
        // Create an empty mutable dictionary
        NSMutableDictionary *jobs = [NSMutableDictionary dictionary];
        // Populate it with initial key-value pairs
        [jobs addEntriesFromDictionary:@{
                                         @"Audi TT" : @"John",
                                         @"Audi Quattro (Black)" : @"Mary",
                                         @"Audi Quattro (Silver)" : @"Bill",
                                         @"Audi A7" : @"Bill"
                                         }];
    };
    
    /************************************ NSDate ************************************/
    
    ^{ // creating
        NSDate *now = [NSDate date];
        NSTimeInterval secondsInWeek = 7 * 24 * 60 * 60;
        NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek
                                              sinceDate:now];
        NSDate *nextWeek = [NSDate dateWithTimeInterval:secondsInWeek
                                              sinceDate:now];
        NSLog(@"Last Week: %@", lastWeek);
        NSLog(@"Right Now: %@", now);
        NSLog(@"Next Week: %@", nextWeek);
    
        // comparing
        NSComparisonResult result = [now compare:nextWeek];
        if (result == NSOrderedAscending) {
            NSLog(@"now < nextWeek");
        } else if (result == NSOrderedSame) {
            NSLog(@"now == nextWeek");
        } else if (result == NSOrderedDescending) {
            NSLog(@"now > nextWeek");
        }
        NSDate *earlierDate = [now earlierDate:lastWeek];
        NSDate *laterDate = [now laterDate:lastWeek];
        NSLog(@"%@ is earlier than %@", earlierDate, laterDate);
    };
    
    /************************************ NSDateComponents ************************************/
    
    ^{ //
        NSDateComponents *november4th2012 = [[NSDateComponents alloc] init];
        [november4th2012 setYear:2012];
        [november4th2012 setMonth:11];
        [november4th2012 setDay:4];
        NSLog(@"%@", november4th2012);
    };
    
    /************************************ NSCalendar ************************************/
    
    ^{ // creating
        NSCalendar *gregorian = [[NSCalendar alloc]
                                 initWithCalendarIdentifier:NSGregorianCalendar];
        NSCalendar *buddhist = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSBuddhistCalendar];
        NSCalendar *preferred = [NSCalendar currentCalendar];
        NSLog(@"%@", gregorian.calendarIdentifier);
        NSLog(@"%@", buddhist.calendarIdentifier);
        NSLog(@"%@", preferred.calendarIdentifier);
    };
    
    ^{ // from dates to components
        NSDate *now = [NSDate date];
        NSCalendar *calendar = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSGregorianCalendar];
        NSCalendarUnit units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
        NSDateComponents *components = [calendar components:units fromDate:now];
        
        NSLog(@"Day: %ld", (long)[components day]);
        NSLog(@"Month: %ld", (long)[components month]);
        NSLog(@"Year: %ld", (long)[components year]);
    };
    
    ^{ // from components to dates
        NSCalendar *calendar = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [[NSDateComponents alloc] init];
        [components setYear:2012];
        [components setMonth:11];
        [components setDay:4];
        
        NSDate *november4th2012 = [calendar dateFromComponents:components];
        NSLog(@"%0.0f seconds between Jan 1st, 2001 and Nov 4th, 2012",
              [november4th2012 timeIntervalSinceReferenceDate]);
    };
    
    ^{ // calculations
        NSDate *now = [NSDate date];
        NSCalendar *calendar = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [[NSDateComponents alloc] init];
        [components setMonth:1];
        NSDate *oneMonthFromNow = [calendar dateByAddingComponents:components
                                                            toDate:now
                                                           options:0];
        NSLog(@"%@", oneMonthFromNow);
    };
    
    ^{ // calculations : eg number of weeks
        NSDate *start = [NSDate dateWithTimeIntervalSinceReferenceDate:0];
        NSDate *end = [NSDate date];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit units = NSWeekCalendarUnit;
        NSDateComponents *components = [calendar components:units
                                                   fromDate:start
                                                     toDate:end
                                                    options:0];
        NSLog(@"It has been %ld weeks since January 1st, 2001",
              (long)[components week]);
    };
    
    /************************************ NSDateFormatter ************************************/
    
    ^{ // localized styles
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        
        NSDate *now = [NSDate date];
        NSString *prettyDate = [formatter stringFromDate:now];
        NSLog(@"%@", prettyDate);
    };
    
    ^{ // custom format
        // Formatter configuration
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [formatter setLocale:posix];
        [formatter setDateFormat:@"M.d.y"];
        // Date to string
        NSDate *now = [NSDate date];
        NSString *prettyDate = [formatter stringFromDate:now];
        NSLog(@"%@", prettyDate);
        
        // String to date
        NSString *dateString = @"11.4.2012";
        NSDate *november4th2012 = [formatter dateFromString:dateString];
        NSLog(@"%@", november4th2012);
    };
    
    /************************************ NSLocale ************************************/
    
    ^{ //
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSLocale *egyptianArabic = [[NSLocale alloc] initWithLocaleIdentifier:@"ar_EG"];
        [formatter setLocale:egyptianArabic];
        [formatter setDateFormat:@"M.d.y"];
        
        NSDate *now = [NSDate date];
        NSString *prettyDate = [formatter stringFromDate:now];
        NSLog(@"%@", prettyDate);
    };
    
    /************************************ NSTimeZone ************************************/
    
    ^{ //
        NSTimeZone *centralStandardTime = [NSTimeZone timeZoneWithAbbreviation:@"CST"];
        NSTimeZone *cairoTime = [NSTimeZone timeZoneWithName:@"Africa/Cairo"];
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [formatter setLocale:posix];
        [formatter setDateFormat:@"M.d.y h:mm a"];
        NSString *dateString = @"11.4.2012 8:09 PM";
        
        [formatter setTimeZone:centralStandardTime];
        NSDate *eightPMInChicago = [formatter dateFromString:dateString];
        NSLog(@"%@", eightPMInChicago);      // 2012-11-05 02:09:00 +0000
        
        [formatter setTimeZone:cairoTime];
        NSDate *eightPMInCairo = [formatter dateFromString:dateString];
        NSLog(@"%@", eightPMInCairo);        // 2012-11-04 18:09:00 +0000
        
        NSLog(@"%@", [NSTimeZone knownTimeZoneNames]);
        NSLog(@"%@", [NSTimeZone abbreviationDictionary]);
        
        NSTimeZone *preferredTimeZone = [NSTimeZone localTimeZone];
    };
    
    /************************************ SEL ************************************/
    
    ^{
        SEL someMethod = @selector(sayHello);
        
        [self performSelector:someMethod];
        
        BOOL canCall = [self respondsToSelector:someMethod];
        
        // target action sending different params
        UITextField *myTextField;
        [myTextField addTarget:self action:@selector(textFieldChanged) forControlEvents:UIControlEventEditingChanged];
        [myTextField addTarget:self action:@selector(textFieldChanged:) forControlEvents:UIControlEventEditingChanged];
        [myTextField addTarget:self action:@selector(textFieldChanged:event:) forControlEvents:UIControlEventEditingChanged];
        
    };

}

#pragma mark : selectors

- (void) textFieldChanged
{
    NSLog(@"onField");
}

- (void) textFieldChanged:(id) sender
{
    NSLog(@"onField: %@", sender);
}

- (void) textFieldChanged:(id) sender event:(id)event
{
    NSLog(@"onField: %@\n%@", sender, event);
}

- (void)sayHello
{
    NSLog(@"hello?");
}

@end
