UIBarButtonItem-Badge
=====================

##UIBarButtonItem+Badge

This is categorization of [this github Class](https://github.com/TanguyAladenise/BBBadgeBarButtonItem).


UIBarButtonItem+Badge
==============

<p>Create a BarButtonItem with a badge on top. Easily customizable.
Your BarButtonItem can be any custom view you wish for. The badge on top can display any number or string of any size or length.</p>

<img alt="ScreenShot BarButtonItem" src="https://github.com/mmusallam/UIBarButtonItem-Badge/blob/master/screenshot.png?raw=true" width="320px"/>


How To Get Started
------------------

#### Installation 

It's quite easy, just download and add "UIBarButtonItem+Badge.h" and "UIBarButtonItem+Badge.m" into your xcodeproject.

Don't forget to import the header file wherever you need it :

``` objective-c
#import "UIBarButtonItem+Badge.h"
```

Usage
------------------

Then, to add a badge call setBadgeValue on the UIBarButton item and the trick is done! Make sure you're using 
UIBarButtonItem with custom view

``` objective-c
// Build your regular UIBarButtonItem with Custom View
UIImage *image = [UIImage imageNamed:@"someImage"];
UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
button.frame = CGRectMake(0,0,image.size.width, image.size.height);
[button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
[button setBackgroundImage:image forState:UIControlStateNormal];
    
// Make BarButton Item
UIBarButtonItem *navLeftButton = [[UIBarButtonItem alloc] initWithCustomView:button];
self.navigationItem.leftBarButtonItem = navLeftButton;
self.navigationItem.leftBarButtonItem.badgeValue = @"1";
```

Useful properties
---------------

Take a look at UIBarButtonItem+Badge.h to see how you can customize the badge.
Remember that each time you change one of these value, the badge will directly be refresh to handle your styling preferences.

``` objective-c
// Each time you change one of properties, the badge will refresh with your changes

// Badge value to be display
@property (nonatomic) NSString *badgeValue;
// Badge background color
@property (nonatomic) UIColor *badgeBGColor;
// Badge text color
@property (nonatomic) UIColor *badgeTextColor;
// Badge font
@property (nonatomic) UIFont *badgeFont;

// Padding value for the badge
@property (nonatomic) CGFloat badgePadding;
// Minimum size badge to small
@property (nonatomic) CGFloat badgeMinSize;
// Values for offseting the badge over the BarButtonItem you picked
@property (nonatomic) CGFloat badgeOriginX;
@property (nonatomic) CGFloat badgeOriginY;

// In case of numbers, remove the badge when reaching zero
@property BOOL shouldHideBadgeAtZero;
// Badge has a bounce animation when value changes
@property BOOL shouldAnimateBadge;
```

You can also choose to turn off the little bounce animation triggered when changing the badge value or decide if 0 should be display or not.

Requirements
---------------

The class is compatible with iOS >= 6.0.


More
----

<p>Any suggestions are welcome ! as I am looking to learn good practices, to understand better behaviors and Objective-C in general !
Thank you.</p>




