.class public Lcom/ibm/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;,
        Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;
    }
.end annotation


# static fields
.field private static final DEF_DIGIT_CHARS_ARRAY:[C

.field private static final DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

.field private static final SYMBOL_DEFAULTS:[Ljava/lang/String;

.field private static final SYMBOL_KEYS:[Ljava/lang/String;

.field private static final cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private transient currency:Lcom/ibm/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private decimalSeparatorString:Ljava/lang/String;

.field private digit:C

.field private digitStrings:[Ljava/lang/String;

.field private digits:[C

.field private exponentMultiplicationSign:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private exponential:C

.field private groupingSeparator:C

.field private groupingSeparatorString:Ljava/lang/String;

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private minusString:Ljava/lang/String;

.field private monetaryGroupingSeparator:C

.field private monetaryGroupingSeparatorString:Ljava/lang/String;

.field private monetarySeparator:C

.field private monetarySeparatorString:Ljava/lang/String;

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private perMillString:Ljava/lang/String;

.field private percent:C

.field private percentString:Ljava/lang/String;

.field private plusSign:C

.field private plusString:Ljava/lang/String;

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "decimal"

    const-string v1, "group"

    const-string v2, "list"

    const-string v3, "percentSign"

    const-string v4, "minusSign"

    const-string v5, "plusSign"

    const-string v6, "exponential"

    const-string v7, "perMille"

    const-string v8, "infinity"

    const-string v9, "nan"

    const-string v10, "currencyDecimal"

    const-string v11, "currencyGroup"

    const-string v12, "superscriptingExponent"

    .line 1202
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    .line 1221
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [C

    .line 1224
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x2e

    .line 1241
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    .line 1242
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ";"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 1244
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/16 v2, 0x2d

    .line 1245
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0x2b

    .line 1246
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x2030

    .line 1248
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    const-string v3, "\u221e"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "NaN"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "\u00d7"

    aput-object v2, v1, v0

    sput-object v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    .line 1830
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1782
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1825
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1841
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1782
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1825
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1841
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->loadData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 89
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method private initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .locals 1

    .line 1426
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->getBeforeSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1427
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->getAfterSymbols()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    return-void
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;)V
    .locals 5

    .line 1298
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1299
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 1300
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    .line 1301
    iget-object v2, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1302
    iget-object v2, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    .line 1303
    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 1306
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDecimalSeparatorString(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1307
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setGroupingSeparatorString(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 1311
    aget-object v4, v0, v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    const/4 v4, 0x3

    .line 1313
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPercentString(Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 1314
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMinusSignString(Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 1315
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPlusSignString(Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 1316
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    const/4 v4, 0x7

    .line 1317
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPerMillString(Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 1318
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    const/16 v4, 0x9

    .line 1319
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 1320
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 1321
    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    const/16 v4, 0xc

    .line 1322
    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setExponentMultiplicationSign(Ljava/lang/String;)V

    const/16 v0, 0x23

    .line 1324
    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    const/16 v0, 0x2a

    .line 1325
    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 v0, 0x40

    .line 1326
    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    .line 1329
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {v0, p1, v3}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    .line 1334
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    .line 1335
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    if-eqz v3, :cond_0

    .line 1336
    invoke-virtual {v3}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1337
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {v3, p1, v2, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1338
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1340
    iget-object v1, p1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 1341
    iget-object v1, p1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 1342
    iget-object p1, p1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "XXX"

    .line 1345
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string p1, "\u00a4"

    .line 1346
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1351
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    return-void
.end method

.method private static loadData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 12

    .line 1357
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "latn"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getRadix()I

    move-result v5

    if-ne v5, v1, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1360
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ibm/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1361
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 1364
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 1365
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v7

    .line 1366
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    .line 1369
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1372
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    move-object v0, v3

    :goto_1
    const-string v5, "com/ibm/icu/impl/data/icudt59b"

    .line 1379
    invoke-static {v5, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1381
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    .line 1383
    sget-object v6, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 1386
    new-instance v7, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;

    invoke-direct {v7, v6}, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;-><init>([Ljava/lang/String;)V

    .line 1388
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberElements/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "symbols"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :catch_0
    array-length v8, v6

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x1

    if-ge v9, v8, :cond_3

    aget-object v11, v6, v9

    if-nez v11, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    .line 1402
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "NumberElements/latn/symbols"

    .line 1403
    invoke-virtual {p0, v0, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    :cond_4
    const/4 p0, 0x0

    .line 1407
    :goto_4
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_6

    .line 1408
    aget-object v0, v6, p0

    if-nez v0, :cond_5

    .line 1409
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    aget-object v0, v0, p0

    aput-object v0, v6, p0

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 1415
    :cond_6
    aget-object p0, v6, v1

    if-nez p0, :cond_7

    .line 1416
    aget-object p0, v6, v4

    aput-object p0, v6, v1

    :cond_7
    const/16 p0, 0xb

    .line 1418
    aget-object v0, v6, p0

    if-nez v0, :cond_8

    .line 1419
    aget-object v0, v6, v10

    aput-object v0, v6, p0

    .line 1422
    :cond_8
    new-instance p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    invoke-direct {p0, v5, v2, v6}, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;-><init>(Lcom/ibm/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 1444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1447
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1450
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    const/16 p1, 0x45

    .line 1451
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponential:C

    .line 1453
    :cond_0
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const/16 p1, 0x2a

    .line 1454
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 p1, 0x2b

    .line 1455
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 1456
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponential:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1463
    :cond_1
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 1469
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1471
    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_3

    .line 1473
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 1475
    :cond_3
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x5

    if-ge p1, v2, :cond_4

    .line 1477
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 1479
    :cond_4
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x6

    if-ge p1, v2, :cond_7

    .line 1481
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    if-nez p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    .line 1482
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1484
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    if-nez p1, :cond_6

    new-array p1, v1, [Ljava/lang/String;

    .line 1485
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1487
    :cond_6
    sget-object p1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1489
    :cond_7
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x7

    if-ge p1, v1, :cond_9

    .line 1491
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 1492
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1494
    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 1495
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1498
    :cond_9
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v1, 0x8

    if-ge p1, v1, :cond_a

    .line 1499
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    if-nez p1, :cond_a

    const-string p1, "\u00d7"

    .line 1500
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1503
    :cond_a
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v2, 0x9

    if-ge p1, v2, :cond_13

    .line 1505
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    if-nez p1, :cond_d

    const/16 p1, 0xa

    new-array v2, p1, [Ljava/lang/String;

    .line 1506
    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 1507
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    array-length v4, v2

    if-ne v4, p1, :cond_b

    .line 1508
    aget-char v0, v2, v3

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    :goto_0
    if-ge v3, p1, :cond_d

    .line 1510
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1513
    :cond_b
    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 1514
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v4, :cond_c

    new-array v4, p1, [C

    .line 1515
    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    :cond_c
    :goto_1
    if-ge v3, p1, :cond_d

    .line 1518
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v2, v4, v3

    .line 1519
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/2addr v2, v0

    int-to-char v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1526
    :cond_d
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_e

    .line 1527
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 1529
    :cond_e
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_f

    .line 1530
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 1532
    :cond_f
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    if-nez p1, :cond_10

    .line 1533
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 1535
    :cond_10
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    if-nez p1, :cond_11

    .line 1536
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 1538
    :cond_11
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    if-nez p1, :cond_12

    .line 1539
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 1541
    :cond_12
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_13

    .line 1542
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 1546
    :cond_13
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1549
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1122
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1126
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1137
    instance-of v0, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 1143
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_4

    .line 1145
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 1148
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1153
    :cond_4
    iget-object v2, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    .line 1155
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v3, v3, v2

    iget-char v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v4, v2

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1159
    :cond_6
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 1163
    :cond_7
    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 1172
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 1173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1174
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    iget-object p1, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1182
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .line 379
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDecimalSeparatorString()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getDigitStrings()[Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDigitStringsLocal()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public getDigits()[C
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparatorString()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1868
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryDecimalSeparatorString()Ljava/lang/String;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryGroupingSeparatorString()Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPerMillString()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusSignString()Ljava/lang/String;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1192
    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1193
    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 817
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    .line 818
    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void

    .line 815
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 420
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 425
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input decimal separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDigitStrings([Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 264
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    new-array v0, v1, [Ljava/lang/String;

    new-array v2, v1, [C

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 272
    aget-object v5, p1, v2

    if-eqz v5, :cond_1

    .line 275
    aget-object v5, p1, v2

    aput-object v5, v0, v2

    if-eqz v4, :cond_0

    .line 276
    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 277
    aget-object v5, p1, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input digit string array contains a null element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_2
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    if-nez v4, :cond_3

    .line 288
    sget-object p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    aget-char v0, p1, v3

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 289
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    goto :goto_2

    .line 291
    :cond_3
    aget-char p1, v4, v3

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 292
    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    :goto_2
    return-void

    .line 265
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of digit strings is not 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input digit string array is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 363
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 368
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    :goto_0
    return-void

    .line 361
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input grouping separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 1897
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1898
    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void

    .line 1892
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMinusSignString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 676
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 678
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d

    .line 681
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    :goto_0
    return-void

    .line 674
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input minus sign is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMonetaryDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 870
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 872
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 875
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    :goto_0
    return-void

    .line 868
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input monetary decimal separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMonetaryGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 927
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 928
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 932
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :goto_0
    return-void

    .line 925
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input monetary grouping separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-void
.end method

.method public setPerMillString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 477
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2030

    .line 482
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    :goto_0
    return-void

    .line 475
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input permille string is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPercentString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 534
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    .line 539
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    :goto_0
    return-void

    .line 532
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input percent sign is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusSignString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 741
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2b

    .line 746
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    :goto_0
    return-void

    .line 739
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input plus sign is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
