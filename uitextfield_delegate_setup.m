// UITextfield delegate setup
// 
//
// IDECodeSnippetCompletionPrefix: textfield
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C78A55AA-92AA-4D4A-A6B8-46255103F5A2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - UITextFieldDelegate


-(void) textFieldDidBeginEditing:(UITextField *)textField {
   [textField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged]; 
}

-(void) textFieldDidEndEditing:(UITextField *)textField {
    [textField removeTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}

-(void) textFieldDidChange: (UITextField *) sender {
    // use this method for behaviors that happen as the user types
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //This is a gist by @johnnyclem https://gist.github.com/johnnyclem/8215415 well done!
    for (UIControl *control in self.view.subviews) {
        if ([control isKindOfClass:[UITextField class]]) {
            [control endEditing:YES];
        }
    }
}