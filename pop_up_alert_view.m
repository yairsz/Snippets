// Pop up Alert View
// This Code will pop up an alert view with message
//
// IDECodeSnippetCompletionPrefix: alert
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 65171763-3B6C-4171-91B9-6CFEE474770C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
UIAlertController * alertView =
[UIAlertController alertControllerWithTitle:<#error#> message:<#message#> preferredStyle:UIAlertControllerStyleAlert];
UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) 
{
    
}];
[alertView addAction:okAction];
[self presentViewController:alertView animated:YES completion:nil];