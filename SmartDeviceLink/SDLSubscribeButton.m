//  SDLSubscribeButton.m
//


#import "SDLSubscribeButton.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSubscribeButton

- (instancetype)init {
    if (self = [super initWithName:SDLNameSubscribeButton]) {
    }
    return self;
}

- (instancetype)initWithHandler:(nullable SDLRPCNotificationHandler)handler {
    self = [self init];
    if (!self) {
        return nil;
    }

    _handler = handler;

    return self;
}

- (instancetype)initWithButtonName:(SDLButtonName)buttonName handler:(nullable SDLRPCNotificationHandler)handler {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.buttonName = buttonName;
    self.handler = handler;

    return self;
}

- (void)setButtonName:(SDLButtonName)buttonName {
    [parameters sdl_setObject:buttonName forName:SDLNameButtonName];
}

- (SDLButtonName)buttonName {
    return [parameters sdl_objectForName:SDLNameButtonName];
}

@end

NS_ASSUME_NONNULL_END
