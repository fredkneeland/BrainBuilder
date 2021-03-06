//
//  HighScoreViewController.m
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/24/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "HighScoreViewController.h"

@interface HighScoreViewController ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation HighScoreViewController
{
    ADBannerView *_bannerView;
    
}

@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize name4;
@synthesize name5;
@synthesize name6;
@synthesize name7;
@synthesize name8;
@synthesize score1;
@synthesize score2;
@synthesize score3;
@synthesize score4;
@synthesize score5;
@synthesize score6;
@synthesize score7;
@synthesize score8;
@synthesize theName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // On iOS 6 ADBannerView introduces a new initializer, use it when available.
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        _bannerView.delegate = self;
    }
    return self;
}

- (void)layoutAnimated:(BOOL)animated
{
    // As of iOS 6.0, the banner will automatically resize itself based on its width.
    // To support iOS 5.0 however, we continue to set the currentContentSizeIdentifier appropriately.
    CGRect contentFrame = self.view.bounds;
    if (contentFrame.size.width < contentFrame.size.height) {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    } else {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
    }
    
    CGRect bannerFrame = _bannerView.frame;
    if (_bannerView.bannerLoaded) {
        contentFrame.size.height -= _bannerView.frame.size.height;
        bannerFrame.origin.y = contentFrame.size.height;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        //_contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}


-(void) highScoreQuick
{
	highScore = 1;
}
-(void) highScoreCustom
{
	highScore = 2;
}
-(void) alertOn
{
	Know = 1;
}
-(void) alertOff
{
	Know = 2;
}

-(void) alertView:(UIAlertView *) alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
	
	if ([buttonTitle isEqualToString:@"Ok"])
	{
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        if (Know == 1)
        {
            Know = 2;
            if (Score > Score2 || Score2 == 0)
            {
                name1.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE2];
                [userDefaults setFloat:Score2 forKey:SCORE3];
                [userDefaults setFloat:Score3 forKey:SCORE4];
                [userDefaults setFloat:Score4 forKey:SCORE5];
                [userDefaults setFloat:Score5 forKey:SCORE6];
                [userDefaults setFloat:Score6 forKey:SCORE7];
                [userDefaults setFloat:Score7 forKey:SCORE8];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
                
            }
            else if (Score > Score3 || Score3 == 0)
            {
                name2.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE3];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE4];
                [userDefaults setFloat:Score4 forKey:SCORE5];
                [userDefaults setFloat:Score5 forKey:SCORE6];
                [userDefaults setFloat:Score6 forKey:SCORE7];
                [userDefaults setFloat:Score7 forKey:SCORE8];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
            }
            else if (Score > Score4 || Score4 == 0)
            {
                name3.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE4];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE3];
                [userDefaults setFloat:Score4 forKey:SCORE5];
                [userDefaults setFloat:Score5 forKey:SCORE6];
                [userDefaults setFloat:Score6 forKey:SCORE7];
                [userDefaults setFloat:Score7 forKey:SCORE8];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
            }
            else if (Score > Score5 || Score5 == 0)
            {
                name4.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE5];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE3];
                [userDefaults setFloat:Score4 forKey:SCORE4];
                [userDefaults setFloat:Score5 forKey:SCORE6];
                [userDefaults setFloat:Score6 forKey:SCORE7];
                [userDefaults setFloat:Score7 forKey:SCORE8];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
            }
            else if (Score > Score6 || Score6 == 0)
            {
                name5.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE6];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE3];
                [userDefaults setFloat:Score4 forKey:SCORE4];
                [userDefaults setFloat:Score5 forKey:SCORE5];
                [userDefaults setFloat:Score6 forKey:SCORE7];
                [userDefaults setFloat:Score7 forKey:SCORE8];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
            }
            else if (Score > Score7 || Score7 == 0)
            {
                name6.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE7];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE3];
                [userDefaults setFloat:Score4 forKey:SCORE4];
                [userDefaults setFloat:Score5 forKey:SCORE5];
                [userDefaults setFloat:Score6 forKey:SCORE6];
                [userDefaults setFloat:Score7 forKey:SCORE8];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
            }
            else if (Score > Score8 || Score8 == 0)
            {
                name7.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE8];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE3];
                [userDefaults setFloat:Score4 forKey:SCORE4];
                [userDefaults setFloat:Score5 forKey:SCORE5];
                [userDefaults setFloat:Score6 forKey:SCORE6];
                [userDefaults setFloat:Score7 forKey:SCORE7];
                [userDefaults setFloat:Score8 forKey:SCORE9];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
                
            }
            else
            {
                name8.text = theName.text;
                [userDefaults setFloat:Score forKey:SCORE9];
                [userDefaults setFloat:Score2 forKey:SCORE2];
                [userDefaults setFloat:Score3 forKey:SCORE3];
                [userDefaults setFloat:Score4 forKey:SCORE4];
                [userDefaults setFloat:Score5 forKey:SCORE5];
                [userDefaults setFloat:Score6 forKey:SCORE6];
                [userDefaults setFloat:Score7 forKey:SCORE7];
                [userDefaults setFloat:Score8 forKey:SCORE8];
                
                [userDefaults setObject:name1.text forKey:NAME1];
                [userDefaults setObject:name2.text forKey:NAME2];
                [userDefaults setObject:name3.text forKey:NAME3];
                [userDefaults setObject:name4.text forKey:NAME4];
                [userDefaults setObject:name5.text forKey:NAME5];
                [userDefaults setObject:name6.text forKey:NAME6];
                [userDefaults setObject:name7.text forKey:NAME7];
                [userDefaults setObject:name8.text forKey:NAME8];
            }
		}
	}
	else
    {
		alertChoice = 0;
	}
    
}


- (void)viewDidLoad
{
    self.navigationItem.title = @"High Scores!!";
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	Score = [userDefaults floatForKey:SCORE];
	Score2 = [userDefaults floatForKey:SCORE2];
	Score3 = [userDefaults floatForKey:SCORE3];
	Score4 = [userDefaults floatForKey:SCORE4];
	Score5 = [userDefaults floatForKey:SCORE5];
	Score6 = [userDefaults floatForKey:SCORE6];
	Score7 = [userDefaults floatForKey:SCORE7];
	Score8 = [userDefaults floatForKey:SCORE8];
	Score9 = [userDefaults floatForKey:SCORE9];
	Names1 = [userDefaults stringForKey:NAME1];
	Names2 = [userDefaults stringForKey:NAME2];
	Names3 = [userDefaults stringForKey:NAME3];
	Names4 = [userDefaults stringForKey:NAME4];
	Names5 = [userDefaults stringForKey:NAME5];
	Names6 = [userDefaults stringForKey:NAME6];
	Names7 = [userDefaults stringForKey:NAME7];
	Names8 = [userDefaults stringForKey:NAME8];
	TheScore1 = [[NSString alloc] initWithFormat:@"%1.0f", Score];
	TheScore2 = [[NSString alloc] initWithFormat:@"%1.0f", Score2];
	TheScore3 = [[NSString alloc] initWithFormat:@"%1.0f", Score3];
	TheScore4 = [[NSString alloc] initWithFormat:@"%1.0f", Score4];
	TheScore5 = [[NSString alloc] initWithFormat:@"%1.0f", Score5];
	TheScore6 = [[NSString alloc] initWithFormat:@"%1.0f", Score6];
	TheScore7 = [[NSString alloc] initWithFormat:@"%1.0f", Score7];
	TheScore8 = [[NSString alloc] initWithFormat:@"%1.0f", Score8];
	TheScore9 = [[NSString alloc] initWithFormat:@"%1.0f", Score9];
	if (Know == 1)
	{
		NSString *alertMessage;
		NSString *name;
		UIAlertView *setHighScore;
		
		name = [[NSString alloc] initWithFormat:@"Tom"];
		
		alertMessage = [[NSString alloc] initWithFormat:@"Name:																							"];
		setHighScore = [[UIAlertView alloc]
						initWithTitle:@"New High Score"
						message:alertMessage
						delegate:self
						cancelButtonTitle:@"Ok"
						otherButtonTitles:nil];
        setHighScore.alertViewStyle = UIAlertViewStylePlainTextInput;
        theName = [setHighScore textFieldAtIndex:0];
        theName.autocapitalizationType = UITextAutocapitalizationTypeWords;
        theName.placeholder = @"Name";
        [setHighScore show];
		
		
		
		
		if ((Score > Score2) || (Score2 == 0))
		{
			score1.text = TheScore1;
			score2.text = TheScore2;
			score3.text = TheScore3;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name2.text = Names1;
			name3.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
		}
		else if ((Score > Score3) || (Score3 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore1;
			score3.text = TheScore3;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
            
			name1.text = Names1;
			name3.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
			
		}
		else if ((Score > Score4) || (Score4 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore1;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
			
		}
		else if ((Score > Score5) || (Score5 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore1;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
		}
		else if ((Score > Score6) || (Score6 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore1;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
            
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
		}
		else if ((Score > Score7) || (Score7 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore1;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
        
		}
		else if ((Score > Score8) || (Score8 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore7;
			score7.text = TheScore1;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name6.text = Names6;
			name8.text = Names7;
        
		}
		else
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore7;
			score7.text = TheScore8;
			score8.text = TheScore1;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name6.text = Names6;
			name7.text = Names7;
            
		}
	}
	else
	{
		score1.text = TheScore2;
		score2.text = TheScore3;
		score3.text = TheScore4;
		score4.text = TheScore5;
		score5.text = TheScore6;
		score6.text = TheScore7;
		score7.text = TheScore8;
		score8.text = TheScore9;
		name1.text = Names1;
		name2.text = Names2;
		name3.text = Names3;
		name4.text = Names4;
		name5.text = Names5;
		name6.text = Names6;
		name7.text = Names7;
		name8.text = Names8;
	}
	
	if ([score8.text isEqualToString:@"0"])
	{
		score8.text = @"";
	}
	if ([score1.text isEqualToString:@"0"])
	{
		score1.text = @"";
	}
	if ([score2.text isEqualToString:@"0"])
	{
		score2.text = @"";
	}
	if ([score3.text isEqualToString:@"0"])
	{
		score3.text = @"";
	}
	if ([score4.text isEqualToString:@"0"])
	{
		score4.text = @"";
	}
	if ([score5.text isEqualToString:@"0"])
	{
		score5.text = @"";
	}
	if ([score6.text isEqualToString:@"0"])
	{
		score6.text = @"";
	}
	if ([score7.text isEqualToString:@"0"])
	{
		score7.text = @"";
	}
    
    self.navigationItem.title = @"High Scores";
    [self.view addSubview:_bannerView];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    [self layoutAnimated:NO];
    self.navigationItem.title = @"High Scores!";
    [super viewWillAppear:YES];
}

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_6_0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
#endif

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (void)viewDidLayoutSubviews
{
    [self layoutAnimated:[UIView areAnimationsEnabled]];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    //self.navigationItem.title = @"Hello World";
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    //self.navigationItem.title = @"Sad";
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
