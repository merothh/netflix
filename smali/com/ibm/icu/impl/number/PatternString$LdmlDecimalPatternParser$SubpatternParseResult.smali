.class Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubpatternParseResult"
.end annotation


# instance fields
.field exponentDigits:I

.field exponentShowPlusSign:Z

.field groupingSizes:[I

.field hasDecimal:Z

.field hasPerMilleSign:Z

.field hasPercentSign:Z

.field maximumFractionDigits:I

.field maximumSignificantDigits:I

.field minimumFractionDigits:I

.field minimumIntegerDigits:I

.field minimumSignificantDigits:I

.field padding:Ljava/lang/StringBuilder;

.field paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field paddingWidth:I

.field prefix:Ljava/lang/StringBuilder;

.field rounding:Lcom/ibm/icu/impl/number/FormatQuantity4;

.field suffix:Ljava/lang/StringBuilder;

.field totalIntegerDigits:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 544
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->groupingSizes:[I

    const/4 v0, 0x0

    .line 545
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumIntegerDigits:I

    .line 546
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->totalIntegerDigits:I

    .line 547
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumFractionDigits:I

    .line 548
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumFractionDigits:I

    .line 549
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumSignificantDigits:I

    .line 550
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumSignificantDigits:I

    .line 551
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->hasDecimal:Z

    .line 552
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->paddingWidth:I

    const/4 v1, 0x0

    .line 553
    iput-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 554
    new-instance v1, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->rounding:Lcom/ibm/icu/impl/number/FormatQuantity4;

    .line 555
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->exponentShowPlusSign:Z

    .line 556
    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->exponentDigits:I

    .line 557
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->hasPercentSign:Z

    .line 558
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->hasPerMilleSign:Z

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->prefix:Ljava/lang/StringBuilder;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->suffix:Ljava/lang/StringBuilder;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/number/PatternString$1;)V
    .locals 0

    .line 543
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;-><init>()V

    return-void
.end method
