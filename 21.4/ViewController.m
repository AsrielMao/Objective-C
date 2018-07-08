#import "ViewController.h"

@implementation ViewController
{
    char                op;
    int                 currentNumber;
    int                 pastFirstOperand;
    BOOL                firstOperand, isNumerator, isNegative, isWriting;
    Calculator          *myCalculator;
    NSMutableString     *displayString, *displayStringSecond;
}

@synthesize display;

- (void)viewDidLoad
{
    firstOperand = YES;
    isNumerator = YES;
    isNegative = NO;
    isWriting = NO;
    pastFirstOperand = 0;
    displayString = [NSMutableString stringWithCapacity: 40];
    displayStringSecond = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init ];
}

-(void) processDigit: (int) digit
{
    if(!isWriting)
        isWriting = YES;
    
    if (isNegative)
        currentNumber = currentNumber * 10 - digit;
    else
        currentNumber = currentNumber * 10 + digit;
    
    [displayString appendString: [NSString stringWithFormat: @"%i", digit]];
    display.text = displayString;
}

-(IBAction) clickDigit: (UIButton *) sender
{
    int digit = sender.tag;
    
    [self processDigit: digit];
}

-(void) processOp: (char) theOp
{
    NSString *opStr;
    
    if (theOp == '-' && isWriting == NO) {
        isNegative = YES;
        [displayString appendString: @"-"];
        display.text = displayString;
        
        return;
    }
    
    [self storeFracPart];
    
    if (pastFirstOperand) {
        [myCalculator performOperation: op];

        [displayStringSecond setString: @"="];
        [displayStringSecond appendString: [myCalculator.accumulator convertToString]];

        myCalculator.operand1.numerator = myCalculator.accumulator.numerator;
        myCalculator.operand1.denominator = myCalculator.accumulator.denominator;
    }
    
    if (!pastFirstOperand)
        ++pastFirstOperand;
    
    op = theOp;
    
    switch (theOp) {
        case '+':
            opStr = @"+";
            break;
        case '-':
            opStr = @"-";
            break;
        case '*':
            opStr = @"×";
            break;
        case '/':
            opStr = @"÷";
            break;
    }
    
    firstOperand = NO;
    isNumerator = YES;
    isNegative = NO;
    isWriting = NO;
    
    [displayString appendString: opStr];
    display.text = displayString;
}

-(void) storeFracPart
{
    if (firstOperand) {
        if (isNumerator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1;  // e.g. 3 * 4/5
        }
        else
            myCalculator.operand1.denominator = currentNumber;
    }
    else if (isNumerator) {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1;  // e.g. 3/2 * 4
    }
    else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    
    currentNumber = 0;
}

-(IBAction) clickOver
{
    [self storeFracPart];
    isNumerator = NO;
    isNegative = NO;
    [displayString appendString: @"/"];
    display.text = displayString;
}

-(IBAction) clickPlus
{
    [self processOp: '+'];
}

-(IBAction) clickMinus
{
    [self processOp: '-'];
}

-(IBAction) clickMultiply
{
    [self processOp: '*'];
}

-(IBAction) clickDivide
{
    [self processOp: '/'];
}

-(IBAction) clickEquals
{
    if (firstOperand == NO) {
        [self storeFracPart];
        
        if (!myCalculator.operand1.denominator || !myCalculator.operand2.denominator) {
            [myCalculator clear];
            [displayString setString: @"Error"];
            display.text = displayString;
        }
        else {
            [myCalculator performOperation: op];
            
            [displayString appendString: @"="];
            [displayString appendString: [myCalculator.accumulator convertToString]];
            display.text = displayString;
        }
        
        [displayStringSecond setString: @""];

        
        currentNumber = 0;
        isNumerator = YES;
        isNegative = NO;
        isWriting = NO;
        pastFirstOperand = 0;
        firstOperand = YES;
        [displayString setString: @""];
    }
}

-(IBAction) clickClear
{
    isNumerator = YES;
    isNegative = NO;
    isWriting = NO;
    pastFirstOperand = 0;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString: @""];
    display.text = displayString;
    
    [displayStringSecond setString: @""];
}

@end
