// Description For NSObject
// Make Sure all properties are id
//
// IDECodeSnippetCompletionPrefix: description
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: AA997971-B500-4DEE-B783-03776002377C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSString *) description
{
    NSMutableString * description = [NSMutableString string];
    NSDictionary * properties = [self dictionaryWithPropertiesOfObject:self];
    for (NSString * key in [properties allKeys]) {
        [description appendFormat:@"%@: %@\n",key,properties[key]];
    }
    
    
    return description;
}

- (NSDictionary *) dictionaryWithPropertiesOfObject:(id)obj
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    unsigned count;
    objc_property_t *properties = class_copyPropertyList([obj class], &count);
    
    for (int i = 0; i < count; i++) {
        NSString *key = [NSString stringWithUTF8String:property_getName(properties[i])];
        [dict setObject:[obj valueForKey:key] forKey:key];
    }
    
    free(properties);
    
    return [NSDictionary dictionaryWithDictionary:dict];
}
