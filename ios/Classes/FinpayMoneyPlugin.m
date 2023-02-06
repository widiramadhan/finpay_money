#import "FinpayMoneyPlugin.h"
#if __has_include(<finpay_money/finpay_money-Swift.h>)
#import <finpay_money/finpay_money-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "finpay_money-Swift.h"
#endif

@implementation FinpayMoneyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFinpayMoneyPlugin registerWithRegistrar:registrar];
}
@end
