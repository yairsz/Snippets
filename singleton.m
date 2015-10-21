// Singleton
// Initialization Method for singleton class
//
// IDECodeSnippetCompletionPrefix: singleton
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: D26A53BC-10DC-4A41-83D0-3C5BFE8D9C52
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+(<#Class#> *) <#sharedObject#>{
    static dispatch_once_t pred;
    static <#Class#> *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[<#Class#> alloc] init];
    });
    return shared;
}