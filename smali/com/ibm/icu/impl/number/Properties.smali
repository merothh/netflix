.class public Lcom/ibm/icu/impl/number/Properties;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/Parse$IProperties;


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/Properties;

.field private static final serialVersionUID:J = 0x38d634ca98a9d27bL


# instance fields
.field private transient compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

.field private transient currency:Lcom/ibm/icu/util/Currency;

.field private transient currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

.field private transient currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

.field private transient currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

.field private transient decimalPatternMatchRequired:Z

.field private transient decimalSeparatorAlwaysShown:Z

.field private transient exponentSignAlwaysShown:Z

.field private transient formatWidth:I

.field private transient groupingSize:I

.field private transient magnitudeMultiplier:I

.field private transient mathContext:Ljava/math/MathContext;

.field private transient maximumFractionDigits:I

.field private transient maximumIntegerDigits:I

.field private transient maximumSignificantDigits:I

.field private transient measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field private transient measureUnit:Lcom/ibm/icu/util/MeasureUnit;

.field private transient minimumExponentDigits:I

.field private transient minimumFractionDigits:I

.field private transient minimumGroupingDigits:I

.field private transient minimumIntegerDigits:I

.field private transient minimumSignificantDigits:I

.field private transient multiplier:Ljava/math/BigDecimal;

.field private transient negativePrefix:Ljava/lang/String;

.field private transient negativePrefixPattern:Ljava/lang/String;

.field private transient negativeSuffix:Ljava/lang/String;

.field private transient negativeSuffixPattern:Ljava/lang/String;

.field private transient padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field private transient padString:Ljava/lang/String;

.field private transient parseCaseSensitive:Z

.field private transient parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

.field private transient parseIntegerOnly:Z

.field private transient parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field private transient parseNoExponent:Z

.field private transient parseToBigDecimal:Z

.field private transient positivePrefix:Ljava/lang/String;

.field private transient positivePrefixPattern:Ljava/lang/String;

.field private transient positiveSuffix:Ljava/lang/String;

.field private transient positiveSuffixPattern:Ljava/lang/String;

.field private transient roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient secondaryGroupingSize:I

.field private transient signAlwaysShown:Z

.field private transient significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT:Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method

.method private _clear()Lcom/ibm/icu/impl/number/Properties;
    .locals 3

    .line 135
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_COMPACT_STYLE:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 136
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    .line 137
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_CURRENCY_PLURAL_INFO:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 138
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_CURRENCY_STYLE:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    .line 139
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_CURRENCY_USAGE:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    .line 141
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    .line 142
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    .line 143
    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    const/4 v1, -0x1

    .line 144
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    .line 145
    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    .line 146
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_MATH_CONTEXT:Ljava/math/MathContext;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    .line 147
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    .line 148
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    .line 149
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    .line 150
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_MEASURE_FORMAT_WIDTH:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 151
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_MEASURE_UNIT:Lcom/ibm/icu/util/MeasureUnit;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 152
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    .line 153
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    const/4 v2, 0x1

    .line 154
    iput v2, p0, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    .line 155
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    .line 156
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    .line 157
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_MULTIPLIER:Ljava/math/BigDecimal;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    .line 158
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_NEGATIVE_PREFIX:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    .line 159
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_NEGATIVE_PREFIX_PATTERN:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    .line 160
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_NEGATIVE_SUFFIX:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    .line 161
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_NEGATIVE_SUFFIX_PATTERN:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    .line 162
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_PAD_POSITION:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 163
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_PAD_STRING:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    .line 164
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    .line 165
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_PARSE_GROUPING_MODE:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    .line 166
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    .line 167
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_PARSE_MODE:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 168
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    .line 169
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    .line 170
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_POSITIVE_PREFIX:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    .line 171
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_POSITIVE_PREFIX_PATTERN:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    .line 172
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_POSITIVE_SUFFIX:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    .line 173
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_POSITIVE_SUFFIX_PATTERN:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    .line 174
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 175
    sget-object v2, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    iput-object v2, p0, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    .line 176
    iput v1, p0, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    .line 177
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    .line 178
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_SIGNIFICANT_DIGITS_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    return-object p0
.end method

.method private _copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    .line 183
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 184
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    .line 185
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 186
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    .line 187
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    .line 188
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    .line 189
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    .line 190
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    .line 191
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    .line 192
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    .line 193
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    .line 194
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    .line 195
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    .line 196
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    .line 197
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    .line 198
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 199
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 200
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    .line 201
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    .line 202
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    .line 203
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    .line 204
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    .line 205
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    .line 206
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 211
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    .line 212
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    .line 213
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    .line 214
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    .line 215
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 216
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    .line 217
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    .line 218
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 223
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    .line 224
    iget v0, p1, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    .line 225
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    .line 226
    iget-object p1, p1, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    return-object p0
.end method

.method private _equals(Lcom/ibm/icu/impl/number/Properties;)Z
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iget-object v1, p1, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 237
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    .line 238
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    .line 239
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    .line 240
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_9

    .line 241
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_a

    .line 242
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_c

    .line 244
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_d

    .line 245
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_e

    .line 246
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_f

    .line 247
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_10

    .line 248
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_11

    .line 249
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_12

    .line 250
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_13

    .line 251
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_14

    .line 252
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_15

    .line 253
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_16

    .line 254
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_17

    .line 255
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_18

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_19

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1a

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1b

    .line 259
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1c

    .line 260
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_1d

    .line 261
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_1e

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_1f

    .line 263
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_20

    .line 264
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :cond_20
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_21

    .line 265
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_21

    :cond_21
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_22

    .line 266
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_23

    .line 267
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_23

    :cond_23
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_24

    .line 268
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_24

    :cond_24
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_25

    .line 269
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :cond_25
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_26

    .line 270
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :cond_26
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_27

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    :cond_27
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_28

    .line 272
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_29

    .line 273
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    iget v3, p1, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_29

    :cond_29
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_2a

    .line 274
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2a

    :cond_2a
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_2b

    .line 275
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/number/Properties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2b

    :cond_2b
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method private _equalsHelper(II)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private _equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 290
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private _equalsHelper(ZZ)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private _hashCode()I
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 297
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 298
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 299
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 300
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 301
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 302
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 303
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 304
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 305
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 306
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 307
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 308
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 309
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 310
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 311
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 312
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 313
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 314
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 315
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 316
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 317
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 319
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 320
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 321
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 322
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 323
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 324
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 325
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 326
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 327
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 328
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 329
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 330
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 331
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 332
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 333
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 334
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 335
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 336
    iget v1, p0, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 337
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 338
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private _hashCodeHelper(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xd

    return p1
.end method

.method private _hashCodeHelper(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private _hashCodeHelper(Z)I
    .locals 0

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    .line 619
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 622
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    .line 625
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 628
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 632
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 638
    :try_start_0
    const-class v4, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 652
    :try_start_1
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 658
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 655
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    .line 644
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9

    .line 975
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    .line 978
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 981
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 982
    const-class v3, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 983
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 984
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 988
    :cond_0
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 993
    :cond_1
    sget-object v8, Lcom/ibm/icu/impl/number/Properties;->DEFAULT:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 994
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 995
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1003
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1000
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1008
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1009
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_2
    if-ge v0, v3, :cond_4

    .line 1013
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 1014
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1015
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1016
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public clear()Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Properties;->_clear()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ibm/icu/impl/number/Properties;
    .locals 2

    .line 364
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 367
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Properties;->clone()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Properties;->_copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 385
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/impl/number/Properties;

    if-nez v1, :cond_2

    return v0

    .line 386
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Properties;->_equals(Lcom/ibm/icu/impl/number/Properties;)Z

    move-result p1

    return p1
.end method

.method public getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method public getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    return-object v0
.end method

.method public getCurrencyStyle()Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyStyle:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    return-object v0
.end method

.method public getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public getDecimalPatternMatchRequired()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    return v0
.end method

.method public getDecimalSeparatorAlwaysShown()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    return v0
.end method

.method public getExponentSignAlwaysShown()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    return v0
.end method

.method public getFormatWidth()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    return v0
.end method

.method public getGroupingSize()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    return v0
.end method

.method public getMagnitudeMultiplier()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    return v0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .line 454
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    return v0
.end method

.method public getMaximumSignificantDigits()I
    .locals 1

    .line 464
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    return v0
.end method

.method public getMeasureFormatWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->measureFormatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public getMeasureUnit()Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->measureUnit:Lcom/ibm/icu/util/MeasureUnit;

    return-object v0
.end method

.method public getMinimumExponentDigits()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumGroupingDigits()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    return v0
.end method

.method public getMinimumSignificantDigits()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    return v0
.end method

.method public getMultiplier()Ljava/math/BigDecimal;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativePrefixPattern()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeSuffixPattern()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPadPosition()Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    return-object v0
.end method

.method public getPadString()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    return-object v0
.end method

.method public getParseCaseSensitive()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseCaseSensitive:Z

    return v0
.end method

.method public getParseGroupingMode()Lcom/ibm/icu/impl/number/Parse$GroupingMode;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseGroupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    return-object v0
.end method

.method public getParseIntegerOnly()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    return v0
.end method

.method public getParseMode()Lcom/ibm/icu/impl/number/Parse$ParseMode;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-object v0
.end method

.method public getParseNoExponent()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseNoExponent:Z

    return v0
.end method

.method public getParseToBigDecimal()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    return v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPositivePrefixPattern()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveSuffixPattern()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public getSecondaryGroupingSize()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    return v0
.end method

.method public getSignAlwaysShown()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Properties;->signAlwaysShown:Z

    return v0
.end method

.method public getSignificantDigitsMode()Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 614
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Properties;->_hashCode()I

    move-result v0

    return v0
.end method

.method public setCompactStyle(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-object p0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->currency:Lcom/ibm/icu/util/Currency;

    return-object p0
.end method

.method public setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 683
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    return-object p0
.end method

.method public setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object p0
.end method

.method public setDecimalPatternMatchRequired(Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 701
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Properties;->decimalPatternMatchRequired:Z

    return-object p0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 707
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Properties;->decimalSeparatorAlwaysShown:Z

    return-object p0
.end method

.method public setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 713
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Properties;->exponentSignAlwaysShown:Z

    return-object p0
.end method

.method public setFormatWidth(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 719
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->formatWidth:I

    return-object p0
.end method

.method public setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 725
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->groupingSize:I

    return-object p0
.end method

.method public setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 731
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->magnitudeMultiplier:I

    return-object p0
.end method

.method public setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->mathContext:Ljava/math/MathContext;

    return-object p0
.end method

.method public setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 743
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumFractionDigits:I

    return-object p0
.end method

.method public setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 749
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumIntegerDigits:I

    return-object p0
.end method

.method public setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 755
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->maximumSignificantDigits:I

    return-object p0
.end method

.method public setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 773
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumExponentDigits:I

    return-object p0
.end method

.method public setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 779
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumFractionDigits:I

    return-object p0
.end method

.method public setMinimumGroupingDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 785
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumGroupingDigits:I

    return-object p0
.end method

.method public setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 791
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumIntegerDigits:I

    return-object p0
.end method

.method public setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 797
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->minimumSignificantDigits:I

    return-object p0
.end method

.method public setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->multiplier:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->negativePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->negativeSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPadPosition(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->padPosition:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    return-object p0
.end method

.method public setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->padString:Ljava/lang/String;

    return-object p0
.end method

.method public setParseIntegerOnly(Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 857
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Properties;->parseIntegerOnly:Z

    return-object p0
.end method

.method public setParseMode(Lcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->parseMode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-object p0
.end method

.method public setParseToBigDecimal(Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 875
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Properties;->parseToBigDecimal:Z

    return-object p0
.end method

.method public setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setPositivePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->positivePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->positiveSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->roundingMode:Ljava/math/RoundingMode;

    return-object p0
.end method

.method public setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 917
    iput p1, p0, Lcom/ibm/icu/impl/number/Properties;->secondaryGroupingSize:I

    return-object p0
.end method

.method public setSignificantDigitsMode(Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;)Lcom/ibm/icu/impl/number/Properties;
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Properties;->significantDigitsMode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Properties"

    .line 936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->toStringBare(Ljava/lang/StringBuilder;)V

    const-string v1, ">"

    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBare(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 947
    const-class v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 948
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 951
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 952
    sget-object v5, Lcom/ibm/icu/impl/number/Properties;->DEFAULT:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, ":"

    const-string v7, " "

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    .line 964
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 965
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 963
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v3

    .line 957
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 954
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
