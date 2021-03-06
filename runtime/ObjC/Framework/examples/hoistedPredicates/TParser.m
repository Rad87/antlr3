/** \file
 *  This OBJC source file was generated by $ANTLR version 3.4
 *
 *     -  From the grammar source file : /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g
 *     -                            On : 2012-02-16 17:34:26
 *     -                for the parser : TParserParser
 *
 * Editing it, at least manually, is not wise.
 *
 * ObjC language generator and runtime by Alan Condit, acondit|hereisanat|ipns|dotgoeshere|com.
 *
 *
*/
// $ANTLR 3.4 /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g 2012-02-16 17:34:26


/* -----------------------------------------
 * Include the ANTLR3 generated header file.
 */
#import "TParser.h"
/* ----------------------------------------- */

/** Demonstrates how semantic predicates get hoisted out of the rule in 
 *  which they are found and used in other decisions.  This grammar illustrates
 *  how predicates can be used to distinguish between enum as a keyword and
 *  an ID *dynamically*. :)

 * Run "java org.antlr.Tool -dfa t.g" to generate DOT (graphviz) files.  See
 * the T_dec-1.dot file to see the predicates in action.
 */

/* ============================================================================= */
/* =============================================================================
 * Start of recognizer
 */

#pragma mark Bitsets
static ANTLRBitSet *FOLLOW_identifier_in_stat34;
static const unsigned long long FOLLOW_identifier_in_stat34_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_enumAsKeyword_in_stat47;
static const unsigned long long FOLLOW_enumAsKeyword_in_stat47_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_ID_in_identifier66;
static const unsigned long long FOLLOW_ID_in_identifier66_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_enumAsID_in_identifier74;
static const unsigned long long FOLLOW_enumAsID_in_identifier74_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_7_in_enumAsKeyword89;
static const unsigned long long FOLLOW_7_in_enumAsKeyword89_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_7_in_enumAsID100;
static const unsigned long long FOLLOW_7_in_enumAsID100_data[] = { 0x0000000000000002LL};


#pragma mark Dynamic Global globalAttributeScopeImplementation

#pragma mark Dynamic Rule Scopes ruleAttributeScopeImplementation

#pragma mark Rule Return Scopes returnScopeImplementation

@implementation TParser  // line 637

/* ObjC start of ruleAttributeScope */
#pragma mark Dynamic Rule Scopes ruleAttributeScope
/* ObjC end of ruleAttributeScope */
#pragma mark global Attribute Scopes globalAttributeScope
/* ObjC start globalAttributeScope */
/* ObjC end globalAttributeScope */
/* ObjC start actions.(actionScope).synthesize */
/* ObjC start synthesize() */

+ (void) initialize
{
    #pragma mark Bitsets
    FOLLOW_identifier_in_stat34 = [[ANTLRBitSet newBitSetWithBits:(const unsigned long long *)FOLLOW_identifier_in_stat34_data Count:(NSUInteger)1] retain];
    FOLLOW_enumAsKeyword_in_stat47 = [[ANTLRBitSet newBitSetWithBits:(const unsigned long long *)FOLLOW_enumAsKeyword_in_stat47_data Count:(NSUInteger)1] retain];
    FOLLOW_ID_in_identifier66 = [[ANTLRBitSet newBitSetWithBits:(const unsigned long long *)FOLLOW_ID_in_identifier66_data Count:(NSUInteger)1] retain];
    FOLLOW_enumAsID_in_identifier74 = [[ANTLRBitSet newBitSetWithBits:(const unsigned long long *)FOLLOW_enumAsID_in_identifier74_data Count:(NSUInteger)1] retain];
    FOLLOW_7_in_enumAsKeyword89 = [[ANTLRBitSet newBitSetWithBits:(const unsigned long long *)FOLLOW_7_in_enumAsKeyword89_data Count:(NSUInteger)1] retain];
    FOLLOW_7_in_enumAsID100 = [[ANTLRBitSet newBitSetWithBits:(const unsigned long long *)FOLLOW_7_in_enumAsID100_data Count:(NSUInteger)1] retain];

    [BaseRecognizer setTokenNames:[[AMutableArray arrayWithObjects:@"<invalid>", @"<EOR>", @"<DOWN>", @"<UP>", 
 @"ID", @"INT", @"WS", @"'enum'", nil] retain]];
    [BaseRecognizer setGrammarFileName:@"/Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g"];
}

+ (TParser *)newTParser:(id<TokenStream>)aStream
{
    return [[TParser alloc] initWithTokenStream:aStream];
}

- (id) initWithTokenStream:(id<TokenStream>)aStream
{
    self = [super initWithTokenStream:aStream State:[[RecognizerSharedState newRecognizerSharedStateWithRuleLen:4+1] retain]];
    if ( self != nil ) {
        /* start of actions-actionScope-init */

        enableEnum = NO;

        /* start of init */
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

/* ObjC start actions.(actionScope).methods */
/* ObjC end actions.(actionScope).methods */
/* ObjC start methods() */
/* ObjC end methods() */
/* ObjC start rules */
/*
 * $ANTLR start stat
 * /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:24:1: stat : ( identifier | enumAsKeyword );
 */
- (void) stat
{
    /* ruleScopeSetUp */

    /* ruleDeclarations */

    @try {
        /* ruleLabelDefs entry */


        // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:24:5: ( identifier | enumAsKeyword ) //ruleblock
        NSInteger alt1=2;
        NSInteger LA1_0 = [input LA:1];

        if ( (LA1_0==ID) ) {
            alt1=1;
        }
        else if ( (LA1_0==7) ) {
            NSInteger LA1_2 = [input LA:2];

            if ( ((!enableEnum)) ) {
                alt1=1;
            }
            else if ( ((enableEnum)) ) {
                alt1=2;
            }
            else {
                NoViableAltException *nvae = [NoViableAltException newException:1 state:2 stream:input];
                nvae.c = LA1_2;
                @throw nvae;

            }
        }
        else {
            NoViableAltException *nvae = [NoViableAltException newException:1 state:0 stream:input];
            nvae.c = LA1_0;
            @throw nvae;

        }
        switch (alt1) {
            case 1 : ;
                // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:24:7: identifier // alt
                {

                /* ruleRef */
                [self pushFollow:FOLLOW_identifier_in_stat34];
                [self identifier];

                [self popFollow];


                 

                NSLog(@"enum is an ID");

                 
                }
                break;
            case 2 : ;
                // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:25:7: enumAsKeyword // alt
                {

                /* ruleRef */
                [self pushFollow:FOLLOW_enumAsKeyword_in_stat47];
                [self enumAsKeyword];

                [self popFollow];


                 

                NSLog(@"enum is a keyword");

                 
                }
                break;

        }
        /* token+rule list labels */

    }
    @catch (RecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* ruleScopeCleanUp */

    }
    return ;
}
/* $ANTLR end stat */

/*
 * $ANTLR start identifier
 * /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:28:1: identifier : ( ID | enumAsID );
 */
- (void) identifier
{
    /* ruleScopeSetUp */

    /* ruleDeclarations */

    @try {
        /* ruleLabelDefs entry */


        // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:29:5: ( ID | enumAsID ) //ruleblock
        NSInteger alt2=2;
        NSInteger LA2_0 = [input LA:1];

        if ( (LA2_0==ID) ) {
            alt2=1;
        }
        else if ( (LA2_0==7) ) {
            alt2=2;
        }
        else {
            NoViableAltException *nvae = [NoViableAltException newException:2 state:0 stream:input];
            nvae.c = LA2_0;
            @throw nvae;

        }
        switch (alt2) {
            case 1 : ;
                // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:29:7: ID // alt
                {

                [self match:input TokenType:ID Follow:FOLLOW_ID_in_identifier66]; 
                 
                }
                break;
            case 2 : ;
                // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:30:7: enumAsID // alt
                {

                /* ruleRef */
                [self pushFollow:FOLLOW_enumAsID_in_identifier74];
                [self enumAsID];

                [self popFollow];


                 
                }
                break;

        }
        /* token+rule list labels */

    }
    @catch (RecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* ruleScopeCleanUp */

    }
    return ;
}
/* $ANTLR end identifier */

/*
 * $ANTLR start enumAsKeyword
 * /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:33:1: enumAsKeyword :{...}? 'enum' ;
 */
- (void) enumAsKeyword
{
    /* ruleScopeSetUp */

    /* ruleDeclarations */

    @try {
        /* ruleLabelDefs entry */


        // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:33:15: ({...}? 'enum' ) // ruleBlockSingleAlt
        // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:33:17: {...}? 'enum' // alt
        {

        if ( !((enableEnum)) ) {
            @throw [FailedPredicateException newException:@"enumAsKeyword" predicate:@"enableEnum" stream:input];
        }
         
        [self match:input TokenType:7 Follow:FOLLOW_7_in_enumAsKeyword89]; 
         
        }

        /* token+rule list labels */

    }
    @catch (RecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* ruleScopeCleanUp */

    }
    return ;
}
/* $ANTLR end enumAsKeyword */

/*
 * $ANTLR start enumAsID
 * /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:35:1: enumAsID :{...}? 'enum' ;
 */
- (void) enumAsID
{
    /* ruleScopeSetUp */

    /* ruleDeclarations */

    @try {
        /* ruleLabelDefs entry */


        // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:35:10: ({...}? 'enum' ) // ruleBlockSingleAlt
        // /Users/acondit/source/antlr/code/antlr3/runtime/ObjC/Framework/examples/hoistedPredicates/T.g:35:12: {...}? 'enum' // alt
        {

        if ( !((!enableEnum)) ) {
            @throw [FailedPredicateException newException:@"enumAsID" predicate:@"!enableEnum" stream:input];
        }
         
        [self match:input TokenType:7 Follow:FOLLOW_7_in_enumAsID100]; 
         
        }

        /* token+rule list labels */

    }
    @catch (RecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* ruleScopeCleanUp */

    }
    return ;
}
/* $ANTLR end enumAsID */
/* ObjC end rules */

@end /* end of TParser implementation line 692 */
