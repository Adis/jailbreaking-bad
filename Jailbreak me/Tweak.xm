%hook JBChecker
+ (BOOL)isJailbroken { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
%end
