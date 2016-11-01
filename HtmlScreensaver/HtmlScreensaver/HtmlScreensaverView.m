//
//  HtmlScreensaverView.m
//  HtmlScreensaver
//
//  Created by Andrea De Martino on 01/11/16.
//  Copyright © 2016 Andrea De Martino. All rights reserved.
//

#import "HtmlScreensaverView.h"
#import <WebKit/WebKit.h>

@implementation HtmlScreensaverView

WebView *htmlView;

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:600.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    htmlView = [[WebView alloc]initWithFrame:_frame];
    [htmlView.mainFrame loadHTMLString:@"<head><style>*{margin:0;padding:0;line-height:1;overflow:hidden;}div{width:1em;position:absolute;}</style><script>w=window;n=w.innerWidth;m=w.innerHeight;d=document;q=\"px\";function z(a,b){return Math.floor(Math.random()*(b-a)+a)}f=\" 0123456789\";for(i=0;i<45;i++)f+=String.fromCharCode(i+65393);function g(){for(i=0;i<90;i++){r=d.createElement(\"div\");for(j=z(20,50);j;j--){x=d.createElement(\"pre\");y=d.createTextNode(f[z(0,56)]);x.appendChild(y);x.style.opacity=0;r.appendChild(x)}r.id=\"r\"+i;r.t=z(-99,0);with(r.style){left=z(0,n)+q;top=z(-m,0)+q;fontSize=z(10,25)+q}d.body.appendChild(r);setInterval(\"u(\"+i+\")\",z(60,120))}}function u(j){e=d.getElementById(\"r\"+j);c=e.childNodes;t=e.t+1;if((v=t-c.length-50)>0){if((e.style.opacity=1-v/32)==0){for(f in c)if(c[f].style)c[f].style.opacity=0;with(e.style){left=z(0,n)+q;top=z(-m/2,m/2)+q;opacity=1}t=-50}}e.t=t;if(t<0||t>c.length+12)return;for(f=t;f&&f>t-12;f--){s=1-(t-f)/16;if(f<c.length&&c[f].style){c[f].style.opacity=s;}}}</script><body text=#0f0 bgcolor=#000 onload=g()>" baseURL:nil];
    
    [self addSubview:htmlView];
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
