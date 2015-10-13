//
//  ViewController.m
//  DeallocationExample
//
//  Created by Edward Edge on 9/9/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *string;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    for (int i = 0; i < 10000; i++) {
    string = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque urna nulla, sollicitudin tristique purus consequat non. In id tortor nisi. Fusce tempor sagittis velit a molestie. Fusce posuere sem eu leo ultricies mollis. Cras gravida vitae enim eget ornare. Praesent finibus quam sed tellus volutpat, nec condimentum tellus cursus. Suspendisse pellentesque tristique nisi, sit amet tempor nibh ultricies sed. Sed fringilla, ligula a sagittis imperdiet, dolor leo ultricies nunc, commodo commodo ante mi ac enim. Donec rutrum tortor elit, ut mattis sapien tempus id. Proin non dapibus nulla, id tempor nisl. Aliquam erat volutpat. Fusce gravida sollicitudin risus non pellentesque. Curabitur nec turpis cursus, efficitur mi eu, convallis tortor. Fusce in massa sem. Duis cursus, tellus eget facilisis molestie, libero ipsum volutpat dolor, eget vehicula diam enim id augue.\
    \
    Maecenas aliquet, leo vel dignissim euismod, dui dui venenatis odio, eu tempus ante mauris sed massa. Nam cursus odio vel eros finibus egestas. Integer sit amet nibh dictum, luctus mi ac, pellentesque arcu. Donec lacinia aliquam magna a elementum. Phasellus placerat enim et congue ultrices. Integer viverra, ante maximus sollicitudin rutrum, augue lorem iaculis neque, finibus bibendum nisl nisi interdum tellus. Nulla vel auctor arcu. Maecenas rhoncus, risus ut feugiat iaculis, mauris mi pretium orci, sit amet tempus lacus turpis sit amet elit. Donec in ultrices arcu, et euismod diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla id arcu tempor, pulvinar neque nec, ultricies est. Donec at dolor placerat, rutrum elit nec, aliquam nisl. Vivamus mollis dui enim, nec tempor justo consequat ut.\
    \
    Praesent non tortor nec odio varius elementum at id lectus. Cras ut laoreet purus. Fusce porttitor orci ante, et maximus lectus egestas quis. Aenean nisl velit, tempor sit amet ipsum id, laoreet sodales est. Nam eu nisl sed massa malesuada mollis. Sed ut porttitor nisl. Morbi hendrerit, libero vitae mattis faucibus, sapien tortor volutpat lacus, ac interdum est orci et leo. Donec sit amet odio porta, tempor augue in, congue odio. Aenean rhoncus velit in ligula mattis, in malesuada nunc consectetur. Donec lectus urna, pellentesque sit amet laoreet vitae, egestas vel nunc.\
    \
    Donec turpis nisl, fermentum eget eros ac, sollicitudin ornare enim. Integer ornare augue eget bibendum consectetur. Nam vitae efficitur est. Morbi sit amet euismod diam, sed pharetra ligula. Morbi malesuada volutpat fringilla. Donec egestas, neque id luctus sollicitudin, elit enim feugiat ante, in venenatis mauris nunc nec dolor. Aenean orci turpis, accumsan sit amet enim at, posuere facilisis dui. Praesent nunc lectus, vulputate ac leo vel, mattis bibendum arcu. Vivamus ornare augue et luctus gravida. Mauris ac auctor ex. Aliquam erat volutpat. Nullam egestas, eros at pretium vehicula, quam leo elementum diam, quis vulputate sapien quam vel lorem. Curabitur luctus posuere aliquet. Maecenas euismod feugiat ipsum vel vulputate. Aenean volutpat, ex nec vestibulum ullamcorper, ipsum neque dictum ex, rhoncus ornare lacus metus ut ante.\
    \
    Curabitur mollis justo eget accumsan pharetra. Aliquam erat volutpat. In eget justo leo. Nunc sem tortor, luctus nec egestas quis, dictum vitae leo. Praesent faucibus a diam in scelerisque. Suspendisse ullamcorper urna augue, quis vestibulum justo elementum vitae. Aliquam posuere massa purus, vitae venenatis odio laoreet vel. Nam tincidunt mattis sagittis. Quisque vel sapien sed lacus fermentum gravida. Maecenas quis lacinia est.";
    
    NSLog(@"%@", string);
    }
}

@end
