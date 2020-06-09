#import "NimPlugin.h"
#if __has_include(<nim/nim-Swift.h>)
#import <nim/nim-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nim-Swift.h"
#endif

@implementation NimPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNimPlugin registerWithRegistrar:registrar];
}
@end
