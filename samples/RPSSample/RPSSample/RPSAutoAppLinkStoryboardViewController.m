// Copyright (c) 2014-present, Facebook, Inc. All rights reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "RPSAutoAppLinkStoryboardViewController.h"

@interface RPSAutoAppLinkStoryboardViewController ()

@property (nonatomic, strong) Coffee *product;
@property (nonatomic, copy) NSDictionary<NSString *, id> *data;

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *descLabel;
@property (nonatomic, weak) IBOutlet UILabel *priceLabel;
@property (nonatomic, weak) IBOutlet UILabel *dataLabel;

@end

@implementation RPSAutoAppLinkStoryboardViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  if (self.product == nil) {
    self.product = [[Coffee alloc] initWithName:@"Coffee" desc:@"I am just a STORYBOARD coffee" price:1];
  }

  self.nameLabel.text = self.product.name;
  self.descLabel.text = [@"Description: " stringByAppendingString:self.product.desc];
  self.priceLabel.text = [@"Price: $" stringByAppendingString:[@(self.product.price) stringValue]];

  if (self.data != nil) {
    self.dataLabel.text = [NSString stringWithFormat:@"data is: %@", self.data];
  }
}

@end
