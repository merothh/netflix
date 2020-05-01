.class public Lcom/ibm/icu/text/TimeZoneFormat;
.super Lcom/ibm/icu/text/UFormat;
.source ""

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;,
        Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;,
        Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;,
        Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;,
        Lcom/ibm/icu/text/TimeZoneFormat$TimeType;,
        Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;,
        Lcom/ibm/icu/text/TimeZoneFormat$Style;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/text/UFormat;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1fa89ded0bc7456eL


# instance fields
.field private transient _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient _frozen:Z

.field private _gmtOffsetDigits:[Ljava/lang/String;

.field private transient _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private _gmtOffsetPatterns:[Ljava/lang/String;

.field private _gmtPattern:Ljava/lang/String;

.field private transient _gmtPatternPrefix:Ljava/lang/String;

.field private transient _gmtPatternSuffix:Ljava/lang/String;

.field private _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient _gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

.field private _locale:Lcom/ibm/icu/util/ULocale;

.field private _parseAllStyles:Z

.field private _parseTZDBNames:Z

.field private transient _region:Ljava/lang/String;

.field private volatile transient _tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

.field private _tznames:Lcom/ibm/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "GMT"

    const-string v1, "UTC"

    const-string v2, "UT"

    .line 361
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

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

    .line 365
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 376
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 396
    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Lcom/ibm/icu/text/TimeZoneFormat$1;)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->_tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    .line 399
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v9, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v10, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v11, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v1, v2, v9, v10, v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    .line 406
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v9, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v1, v2, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 3134
    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v9, Lcom/ibm/icu/util/ULocale;

    const-string v10, "_locale"

    invoke-direct {v2, v10, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Lcom/ibm/icu/text/TimeZoneNames;

    const-string v9, "_tznames"

    invoke-direct {v2, v9, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Ljava/lang/String;

    const-string v4, "_gmtPattern"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [Ljava/lang/String;

    const-string v4, "_gmtOffsetPatterns"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [Ljava/lang/String;

    const-string v4, "_gmtOffsetDigits"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Ljava/lang/String;

    const-string v4, "_gmtZeroFormat"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "_parseAllStyles"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v0

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 6

    .line 418
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 420
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    const-string v0, "GMT"

    .line 425
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com/ibm/icu/impl/data/icudt59b/zone"

    .line 428
    invoke-static {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "zoneStrings/gmtFormat"

    .line 431
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    :goto_0
    :try_start_2
    const-string v3, "zoneStrings/hourFormat"

    .line 436
    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string v3, "zoneStrings/gmtZeroFormat"

    .line 441
    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_3
    move-object v1, v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "GMT{0}"

    .line 452
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    const-string v4, ";"

    .line 456
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 457
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 458
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v4, v1, v2

    aput-object v4, v0, v3

    .line 459
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/ibm/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 460
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 461
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v1, v3

    aput-object v4, v0, v2

    .line 462
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_3

    .line 464
    :cond_1
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 465
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$100(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 468
    :cond_2
    :goto_3
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 471
    invoke-static {p1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    sub-int v5, p3, v2

    if-ge v4, v5, :cond_1

    .line 2167
    iget-object v5, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v0, :cond_2

    .line 2170
    iget-object p3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    div-int/lit8 v0, p2, 0xa

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    :cond_2
    iget-object p3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    rem-int/2addr p2, v1

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkAbuttingHoursAndMinutes()V
    .locals 11

    const/4 v0, 0x0

    .line 1961
    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    .line 1962
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1964
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 1965
    instance-of v9, v8, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v9, :cond_1

    .line 1966
    check-cast v8, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 1968
    iput-boolean v9, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    goto :goto_2

    .line 1969
    :cond_0
    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v8

    const/16 v10, 0x48

    if-ne v8, v10, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "mm"

    .line 2119
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 2124
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 2126
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ":"

    .line 2128
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ss"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2121
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bad time zone hour pattern data"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatExemplarLocation(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 1803
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p1

    const-string v0, "Etc/Unknown"

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    return-object p1
.end method

.method private formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .locals 6

    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/16 v1, 0x3e8

    const v2, 0xea60

    if-eqz p3, :cond_2

    if-lt v0, v1, :cond_1

    if-eqz p5, :cond_2

    if-ge v0, v2, :cond_2

    :cond_1
    const-string p1, "Z"

    return-object p1

    :cond_2
    if-eqz p4, :cond_3

    .line 1715
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    :goto_1
    if-eqz p5, :cond_4

    .line 1716
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_2

    :cond_4
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    :goto_2
    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    const/16 p2, 0x3a

    .line 1717
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :goto_3
    const p5, 0x5265c00

    if-ge v0, p5, :cond_d

    const/4 p5, 0x3

    new-array p5, p5, [I

    const v3, 0x36ee80

    .line 1727
    div-int v4, v0, v3

    const/4 v5, 0x0

    aput v4, p5, v5

    .line 1728
    rem-int/2addr v0, v3

    .line 1729
    div-int v3, v0, v2

    const/4 v4, 0x1

    aput v3, p5, v4

    .line 1730
    rem-int/2addr v0, v2

    const/4 v2, 0x2

    .line 1731
    div-int/2addr v0, v1

    aput v0, p5, v2

    .line 1737
    invoke-virtual {p4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p4

    .line 1738
    :goto_4
    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v0

    if-le p4, v0, :cond_7

    .line 1739
    aget v0, p5, p4

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    .line 1745
    :cond_7
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2b

    if-gez p1, :cond_9

    const/4 p1, 0x0

    :goto_6
    if-gt p1, p4, :cond_9

    .line 1750
    aget v1, p5, p1

    if-eqz v1, :cond_8

    const/16 v0, 0x2d

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1756
    :cond_9
    :goto_7
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    if-gt v5, p4, :cond_c

    if-eqz p2, :cond_a

    if-eqz v5, :cond_a

    .line 1760
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1762
    :cond_a
    aget p1, p5, v5

    const/16 v0, 0xa

    if-ge p1, v0, :cond_b

    const/16 p1, 0x30

    .line 1763
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1765
    :cond_b
    aget p1, p5, v5

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1767
    :cond_c
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1723
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Offset out of range :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    .line 1637
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p1

    .line 1640
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p1, :cond_1

    neg-int p1, p1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    const v4, 0x36ee80

    .line 1647
    div-int v5, p1, v4

    .line 1648
    rem-int/2addr p1, v4

    const v4, 0xea60

    .line 1649
    div-int v6, p1, v4

    .line 1650
    rem-int/2addr p1, v4

    .line 1651
    div-int/lit16 v4, p1, 0x3e8

    const/16 v7, 0x17

    if-gt v5, v7, :cond_10

    const/16 v7, 0x3b

    if-gt v6, v7, :cond_10

    if-gt v4, v7, :cond_10

    if-eqz v3, :cond_5

    if-eqz v4, :cond_2

    .line 1660
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_2
    if-nez v6, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 1664
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    .line 1662
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 1668
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_6
    if-nez v6, :cond_8

    if-nez p2, :cond_7

    goto :goto_2

    .line 1672
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    .line 1670
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    .line 1677
    :goto_3
    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    array-length v3, p1

    :goto_4
    if-ge v1, v3, :cond_f

    aget-object v7, p1, v1

    .line 1680
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 1682
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1683
    :cond_9
    instance-of v8, v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v8, :cond_e

    .line 1685
    check-cast v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1686
    invoke-virtual {v7}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v7

    const/16 v8, 0x48

    const/4 v9, 0x2

    if-eq v7, v8, :cond_c

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_b

    const/16 v8, 0x73

    if-eq v7, v8, :cond_a

    goto :goto_5

    .line 1694
    :cond_a
    invoke-direct {p0, v0, v4, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_5

    .line 1691
    :cond_b
    invoke-direct {p0, v0, v6, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    const/4 v9, 0x1

    .line 1688
    :cond_d
    invoke-direct {p0, v0, v5, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    :cond_e
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1699
    :cond_f
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1654
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset out of range :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/TimeZone;",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            "J",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1784
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p2

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p3

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p6, :cond_2

    if-eqz v0, :cond_1

    .line 1790
    sget-object p2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_1
    iput-object p2, p6, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    if-eqz p0, :cond_0

    .line 492
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    invoke-virtual {v0, p0, p0}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat;

    return-object p0

    .line 490
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "locale is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_1

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 553
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 555
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    return-object v0
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1849
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1853
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1854
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    .line 1855
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    .line 1868
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1878
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p1

    .line 1875
    :cond_0
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p1

    .line 1871
    :cond_1
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p1
.end method

.method private getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "Etc/GMT"

    .line 2183
    invoke-static {p1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 2185
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(I)Lcom/ibm/icu/util/SimpleTimeZone;

    move-result-object p1

    return-object p1
.end method

.method private getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_1

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    .line 536
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 538
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    return-object v0
.end method

.method private getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    .line 1832
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1834
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mzID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private initGMTOffsetPatterns([Ljava/lang/String;)V
    .locals 9

    .line 1941
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    .line 1942
    array-length v1, p1

    if-lt v1, v0, :cond_1

    .line 1945
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1946
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 1947
    invoke-virtual {v6}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v7

    .line 1950
    aget-object v8, p1, v7

    invoke-static {v6}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$200(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 1951
    aput-object v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1954
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 1955
    iget-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1956
    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    .line 1957
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-void

    .line 1943
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Insufficient number of elements in gmtOffsetPatterns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initGMTPattern(Ljava/lang/String;)V
    .locals 3

    const-string v0, "{0}"

    .line 1892
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1896
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1897
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    .line 1898
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    return-void

    .line 1894
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad localized GMT pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .locals 10

    .line 2818
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2820
    invoke-virtual {p2}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    const/4 v2, 0x2

    mul-int/lit8 p2, p2, 0x2

    xor-int/lit8 v3, p4, 0x1

    sub-int/2addr p2, v3

    .line 2821
    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x2

    .line 2823
    new-array p3, p3, [I

    const/4 v3, 0x0

    move v5, v0

    const/4 v4, 0x0

    .line 2826
    :goto_0
    array-length v6, p3

    if-ge v4, v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2827
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const-string v7, "0123456789"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    .line 2831
    :cond_0
    aput v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    and-int/lit8 p0, v4, 0x1

    if-eqz p0, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    if-ge v4, p2, :cond_3

    .line 2842
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v3

    :cond_3
    :goto_2
    if-lt v4, p2, :cond_6

    const/4 p0, 0x4

    const/4 v5, 0x3

    packed-switch v4, :pswitch_data_0

    const/4 p0, 0x0

    :goto_3
    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    goto :goto_6

    .line 2870
    :pswitch_0
    aget v6, p3, v3

    mul-int/lit8 v6, v6, 0xa

    aget v7, p3, v1

    add-int/2addr v6, v7

    .line 2871
    aget v7, p3, v2

    mul-int/lit8 v7, v7, 0xa

    aget v5, p3, v5

    add-int/2addr v5, v7

    .line 2872
    aget p0, p3, p0

    mul-int/lit8 p0, p0, 0xa

    const/4 v7, 0x5

    aget v7, p3, v7

    add-int/2addr p0, v7

    goto :goto_5

    .line 2865
    :pswitch_1
    aget v6, p3, v3

    .line 2866
    aget v7, p3, v1

    mul-int/lit8 v7, v7, 0xa

    aget v8, p3, v2

    add-int/2addr v7, v8

    .line 2867
    aget v5, p3, v5

    mul-int/lit8 v5, v5, 0xa

    aget p0, p3, p0

    add-int/2addr p0, v5

    move v5, v7

    :goto_5
    move v9, v6

    move v6, p0

    move p0, v9

    goto :goto_6

    .line 2861
    :pswitch_2
    aget p0, p3, v3

    mul-int/lit8 p0, p0, 0xa

    aget v6, p3, v1

    add-int/2addr p0, v6

    .line 2862
    aget v6, p3, v2

    mul-int/lit8 v6, v6, 0xa

    aget v5, p3, v5

    add-int/2addr v5, v6

    goto :goto_4

    .line 2857
    :pswitch_3
    aget p0, p3, v3

    .line 2858
    aget v5, p3, v1

    mul-int/lit8 v5, v5, 0xa

    aget v6, p3, v2

    add-int/2addr v5, v6

    goto :goto_4

    .line 2854
    :pswitch_4
    aget p0, p3, v3

    mul-int/lit8 p0, p0, 0xa

    aget v5, p3, v1

    add-int/2addr p0, v5

    goto :goto_3

    .line 2851
    :pswitch_5
    aget p0, p3, v3

    goto :goto_3

    :goto_6
    const/16 v7, 0x17

    if-gt p0, v7, :cond_4

    const/16 v7, 0x3b

    if-gt v5, v7, :cond_4

    if-gt v6, v7, :cond_4

    goto :goto_8

    :cond_4
    if-eqz p4, :cond_5

    const/4 p0, 0x2

    goto :goto_7

    :cond_5
    const/4 p0, 0x1

    :goto_7
    sub-int/2addr v4, p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    if-nez v1, :cond_7

    .line 2888
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v3

    :cond_7
    add-int/2addr v0, v4

    .line 2891
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v6

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .locals 10

    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    move v7, p2

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 2572
    invoke-direct {p0, p1, v7, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v9

    aput v9, v1, v6

    .line 2573
    aget v9, v1, v6

    if-gez v9, :cond_0

    goto :goto_1

    .line 2576
    :cond_0
    aget v9, v4, v5

    add-int/2addr v7, v9

    sub-int v9, v7, p2

    .line 2577
    aput v9, v2, v6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v8, :cond_2

    .line 2582
    aput v5, p3, v5

    return v5

    :cond_2
    :goto_2
    if-lez v8, :cond_4

    const/4 p1, 0x4

    const/4 p2, 0x3

    const/4 v0, 0x2

    packed-switch v8, :pswitch_data_0

    const/4 p1, 0x0

    :goto_3
    const/4 p2, 0x0

    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    .line 2614
    :pswitch_0
    aget v4, v1, v5

    mul-int/lit8 v4, v4, 0xa

    aget v6, v1, v3

    add-int/2addr v4, v6

    .line 2615
    aget v0, v1, v0

    mul-int/lit8 v0, v0, 0xa

    aget p2, v1, p2

    add-int/2addr p2, v0

    .line 2616
    aget p1, v1, p1

    mul-int/lit8 p1, p1, 0xa

    const/4 v0, 0x5

    aget v0, v1, v0

    add-int/2addr p1, v0

    goto :goto_5

    .line 2609
    :pswitch_1
    aget v4, v1, v5

    .line 2610
    aget v6, v1, v3

    mul-int/lit8 v6, v6, 0xa

    aget v0, v1, v0

    add-int/2addr v0, v6

    .line 2611
    aget p2, v1, p2

    mul-int/lit8 p2, p2, 0xa

    aget p1, v1, p1

    add-int/2addr p1, p2

    move p2, v0

    :goto_5
    move v0, p1

    move p1, v4

    goto :goto_6

    .line 2605
    :pswitch_2
    aget p1, v1, v5

    mul-int/lit8 p1, p1, 0xa

    aget v4, v1, v3

    add-int/2addr p1, v4

    .line 2606
    aget v0, v1, v0

    mul-int/lit8 v0, v0, 0xa

    aget p2, v1, p2

    add-int/2addr p2, v0

    goto :goto_4

    .line 2601
    :pswitch_3
    aget p1, v1, v5

    .line 2602
    aget p2, v1, v3

    mul-int/lit8 p2, p2, 0xa

    aget v0, v1, v0

    add-int/2addr p2, v0

    goto :goto_4

    .line 2598
    :pswitch_4
    aget p1, v1, v5

    mul-int/lit8 p1, p1, 0xa

    aget p2, v1, v3

    add-int/2addr p1, p2

    goto :goto_3

    .line 2595
    :pswitch_5
    aget p1, v1, v5

    goto :goto_3

    :goto_6
    const/16 v4, 0x17

    if-gt p1, v4, :cond_3

    const/16 v4, 0x3b

    if-gt p2, v4, :cond_3

    if-gt v0, v4, :cond_3

    const v1, 0x36ee80

    mul-int p1, p1, v1

    const v1, 0xea60

    mul-int p2, p2, v1

    add-int/2addr p1, p2

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    sub-int/2addr v8, v3

    .line 2622
    aget p2, v2, v8

    aput p2, p3, v5

    goto :goto_7

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_7
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;)I
    .locals 11

    .line 2910
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 2911
    fill-array-data v2, :array_0

    new-array v1, v1, [I

    .line 2912
    fill-array-data v1, :array_1

    const/4 v3, 0x0

    move v4, v0

    const/4 v5, 0x0

    .line 2913
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v6, :cond_7

    invoke-virtual {p4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v6

    if-gt v5, v6, :cond_7

    .line 2914
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v9, -0x1

    if-ne v6, p2, :cond_3

    if-nez v5, :cond_1

    .line 2917
    aget v6, v1, v3

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2924
    :cond_1
    aget v6, v1, v5

    if-eq v6, v9, :cond_2

    goto :goto_3

    .line 2928
    :cond_2
    aput v3, v1, v5

    goto :goto_2

    .line 2931
    :cond_3
    aget v10, v1, v5

    if-ne v10, v9, :cond_4

    goto :goto_3

    :cond_4
    const-string v9, "0123456789"

    .line 2935
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_5

    goto :goto_3

    .line 2940
    :cond_5
    aget v9, v2, v5

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v6

    aput v9, v2, v5

    .line 2941
    aget v6, v1, v5

    add-int/2addr v6, v8

    aput v6, v1, v5

    .line 2942
    aget v6, v1, v5

    if-lt v6, v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 2953
    aget p2, v1, v3

    if-nez p2, :cond_8

    const/4 p2, 0x0

    move-object p4, p0

    const/4 p0, 0x0

    goto :goto_4

    .line 2956
    :cond_8
    aget p0, v2, v3

    const/16 p2, 0x17

    const p4, 0x36ee80

    if-le p0, p2, :cond_9

    .line 2957
    aget p0, v2, v3

    div-int/lit8 p0, p0, 0xa

    mul-int p0, p0, p4

    .line 2958
    sget-object p2, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move-object p4, p2

    const/4 p2, 0x1

    goto :goto_4

    .line 2962
    :cond_9
    aget p0, v2, v3

    mul-int p0, p0, p4

    .line 2963
    aget p2, v1, v3

    .line 2964
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    .line 2967
    aget v4, v1, v8

    if-ne v4, v7, :cond_c

    aget v4, v2, v8

    const/16 v5, 0x3b

    if-le v4, v5, :cond_a

    goto :goto_4

    .line 2970
    :cond_a
    aget p4, v2, v8

    const v4, 0xea60

    mul-int p4, p4, v4

    add-int/2addr p0, p4

    .line 2971
    aget p4, v1, v8

    add-int/2addr p4, v8

    add-int/2addr p2, p4

    .line 2972
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    .line 2975
    aget v4, v1, v7

    if-ne v4, v7, :cond_c

    aget v4, v2, v7

    if-le v4, v5, :cond_b

    goto :goto_4

    .line 2978
    :cond_b
    aget p4, v2, v7

    mul-int/lit16 p4, p4, 0x3e8

    add-int/2addr p0, p4

    .line 2979
    aget p4, v1, v7

    add-int/2addr p4, v8

    add-int/2addr p2, p4

    .line 2980
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    :cond_c
    :goto_4
    if-eqz p4, :cond_e

    .line 2983
    invoke-virtual {p4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p4

    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p3

    if-ge p4, p3, :cond_d

    goto :goto_5

    :cond_d
    add-int/2addr v0, p2

    .line 2988
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return p0

    .line 2984
    :cond_e
    :goto_5
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .locals 18

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 2517
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v14, 0x0

    aput v14, v13, v14

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v13

    .line 2523
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v15

    .line 2524
    aget v0, v13, v14

    if-nez v0, :cond_0

    move v8, v9

    goto :goto_1

    .line 2527
    :cond_0
    aget v0, v13, v14

    add-int v7, v9, v0

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v11, :cond_4

    .line 2529
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v7

    move-object v7, v13

    .line 2530
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v17

    .line 2531
    aget v0, v13, v14

    if-nez v0, :cond_1

    move/from16 v8, v16

    goto :goto_0

    .line 2534
    :cond_1
    aget v0, v13, v14

    add-int/2addr v0, v12

    add-int v7, v16, v0

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v11, :cond_3

    .line 2536
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v7

    move-object v7, v13

    .line 2537
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v0

    .line 2538
    aget v1, v13, v14

    if-nez v1, :cond_2

    goto :goto_2

    .line 2541
    :cond_2
    aget v1, v13, v14

    add-int/2addr v1, v12

    add-int/2addr v1, v8

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move/from16 v16, v7

    move/from16 v8, v16

    :goto_1
    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ne v8, v9, :cond_5

    .line 2547
    aput v14, p4, v14

    return v14

    :cond_5
    sub-int/2addr v8, v9

    .line 2551
    aput v8, p4, v14

    const v1, 0x36ee80

    mul-int v15, v15, v1

    const v1, 0xea60

    mul-int v17, v17, v1

    add-int v15, v15, v17

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v15, v0

    return v15
.end method

.method private parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6

    .line 3076
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 3080
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 3081
    iget-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3084
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 3085
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    add-int/2addr v5, v0

    if-le v5, v3, :cond_0

    .line 3087
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v2

    add-int/2addr v2, v0

    move v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 3091
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3092
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    if-nez v1, :cond_3

    .line 3096
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_3
    return-object v1
.end method

.method private parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .locals 11

    .line 2451
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v7, v0, v3

    .line 2452
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p2

    move v9, v10

    .line 2453
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    add-int/2addr v10, p2

    add-int/lit8 v0, v10, 0x1

    .line 2464
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_5

    .line 2470
    :cond_3
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_7

    const/4 v1, -0x1

    :goto_2
    new-array v3, v4, [I

    aput v2, v3, v2

    const/16 v5, 0x3a

    .line 2483
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    move-result v5

    .line 2484
    aget v6, v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v0

    if-ne v6, v7, :cond_5

    mul-int v5, v5, v1

    .line 2487
    aget p1, v3, v2

    :goto_3
    add-int/2addr v0, p1

    goto :goto_4

    :cond_5
    new-array v4, v4, [I

    aput v2, v4, v2

    .line 2491
    invoke-direct {p0, p1, v0, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    move-result p1

    .line 2493
    aget v6, v3, v2

    aget v7, v4, v2

    if-le v6, v7, :cond_6

    mul-int v5, v5, v1

    .line 2495
    aget p1, v3, v2

    goto :goto_3

    :cond_6
    mul-int p1, p1, v1

    .line 2498
    aget v1, v4, v2

    add-int/2addr v0, v1

    move v5, p1

    :goto_4
    sub-int p1, v0, p2

    goto :goto_6

    :cond_7
    :goto_5
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 2504
    :goto_6
    aput p1, p3, v2

    return v5
.end method

.method private parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .locals 7

    const/4 v0, 0x0

    .line 2647
    aput v0, p7, v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2653
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    if-ge v3, p4, :cond_2

    .line 2654
    invoke-direct {p0, p1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v5, v6

    if-le v5, p6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2664
    aget v4, v1, v0

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v3, p3, :cond_4

    if-ge v4, p5, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v2, p2

    .line 2672
    aput v2, p7, v0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, -0x1

    :goto_3
    return v4
.end method

.method private parseOffsetFields(Ljava/lang/String;IZ[I)I
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 2317
    array-length v0, v7

    if-lt v0, v8, :cond_0

    .line 2318
    aput v9, v7, v9

    :cond_0
    const/4 v0, 0x3

    new-array v10, v0, [I

    .line 2324
    fill-array-data v10, :array_0

    .line 2325
    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v12, v11

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    const/4 v15, -0x1

    if-ge v13, v12, :cond_3

    aget-object v16, v11, v13

    .line 2326
    iget-object v0, v6, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v3, v0, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v5, v10

    .line 2329
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v0

    if-lez v0, :cond_2

    .line 2331
    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 2332
    :goto_1
    aget v2, v10, v9

    .line 2333
    aget v3, v10, v8

    .line 2334
    aget v4, v10, v14

    move v11, v0

    move v12, v1

    move v13, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move v11, v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-lez v11, :cond_7

    .line 2338
    iget-boolean v0, v6, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    if-eqz v0, :cond_7

    .line 2345
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v4, v5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v18, v5, v3

    .line 2346
    iget-object v0, v6, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v19, v0, v1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v21, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v20

    move-object/from16 v20, v5

    move-object v5, v10

    .line 2350
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v0

    if-lez v0, :cond_4

    .line 2352
    invoke-static/range {v18 .. v18}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v21, 0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v15, 0x1

    :cond_6
    if-le v0, v11, :cond_7

    .line 2360
    aget v13, v10, v9

    .line 2361
    aget v16, v10, v8

    .line 2362
    aget v17, v10, v14

    move v11, v0

    move v12, v15

    :cond_7
    if-eqz v7, :cond_8

    .line 2366
    array-length v0, v7

    if-lt v0, v8, :cond_8

    .line 2367
    aput v11, v7, v9

    :cond_8
    if-lez v11, :cond_9

    mul-int/lit8 v13, v13, 0x3c

    add-int v13, v13, v16

    mul-int/lit8 v13, v13, 0x3c

    add-int v13, v13, v17

    mul-int/lit16 v13, v13, 0x3e8

    mul-int v9, v13, v12

    :cond_9
    return v9

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .locals 18

    move-object/from16 v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2389
    aput v2, p5, v1

    const/4 v3, 0x1

    aput v2, p5, v3

    aput v2, p5, v2

    new-array v12, v3, [I

    aput v2, v12, v2

    move/from16 v14, p2

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2396
    :goto_0
    array-length v4, v0

    if-ge v13, v4, :cond_7

    .line 2397
    aget-object v4, v0, v13

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2398
    aget-object v4, v0, v13

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 2399
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move v6, v14

    move v9, v10

    .line 2400
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_5

    :cond_0
    add-int/2addr v14, v10

    goto :goto_4

    .line 2407
    :cond_1
    aget-object v4, v0, v13

    check-cast v4, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 2408
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_3

    if-eqz p4, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    :goto_2
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x17

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2411
    invoke-direct/range {v4 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v15

    goto :goto_3

    :cond_3
    const/16 v5, 0x6d

    if-ne v4, v5, :cond_4

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2413
    invoke-direct/range {v4 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v16

    goto :goto_3

    :cond_4
    const/16 v5, 0x73

    if-ne v4, v5, :cond_5

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2415
    invoke-direct/range {v4 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v17

    .line 2418
    :cond_5
    :goto_3
    aget v4, v12, v2

    if-nez v4, :cond_6

    goto :goto_1

    .line 2422
    :cond_6
    aget v4, v12, v2

    add-int/2addr v14, v4

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    return v2

    .line 2430
    :cond_8
    aput v15, p5, v2

    .line 2431
    aput v16, p5, v3

    .line 2432
    aput v17, p5, v1

    sub-int v14, v14, p2

    return v14
.end method

.method private static parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2752
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2754
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2755
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2756
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0

    .line 2760
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2761
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const-string v4, "Z"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/2addr v1, v5

    .line 2763
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return v0

    :cond_2
    const/16 v3, 0x2b

    const/4 v4, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_7

    const/4 v2, -0x1

    .line 2777
    :goto_0
    new-instance v3, Ljava/text/ParsePosition;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/16 v7, 0x3a

    .line 2778
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v3, v7, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;)I

    move-result v7

    .line 2779
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-ne v8, v4, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v8, 0x3

    if-gt p2, v8, :cond_4

    .line 2783
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2784
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, p2, v6, v8, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Z)I

    move-result p0

    .line 2785
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    if-ne v6, v4, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-le v6, v8, :cond_4

    .line 2787
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1

    :cond_4
    move p0, v7

    .line 2791
    :goto_1
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    if-eq p2, v4, :cond_5

    .line 2792
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0

    .line 2796
    :cond_5
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_6

    .line 2798
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_6
    mul-int v2, v2, p0

    return v2

    .line 2774
    :cond_7
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0
.end method

.method private parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 2202
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    const/4 v0, 0x1

    .line 2204
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    if-eqz p4, :cond_0

    .line 2207
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2210
    :cond_0
    invoke-direct {p0, p1, v6, p3, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    move-result p3

    .line 2220
    aget v2, v0, v7

    if-lez v2, :cond_2

    if-eqz p4, :cond_1

    .line 2222
    iput-object v1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2224
    :cond_1
    aget p1, v0, v7

    add-int/2addr v6, p1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return p3

    .line 2229
    :cond_2
    invoke-direct {p0, p1, v6, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    move-result p3

    .line 2230
    aget v2, v0, v7

    if-lez v2, :cond_4

    if-eqz p4, :cond_3

    .line 2232
    iput-object v1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2234
    :cond_3
    aget p1, v0, v7

    add-int/2addr v6, p1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return p3

    :cond_4
    const/4 v1, 0x1

    .line 2239
    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2240
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return v7

    .line 2245
    :cond_5
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length p4, p3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p4, :cond_7

    aget-object v9, p3, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2246
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, v6

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2247
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return v7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2253
    :cond_7
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v7
.end method

.method private parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .locals 16

    move-object/from16 v0, p0

    .line 2273
    iget-object v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_0

    const/4 v2, 0x1

    .line 2274
    iget-object v4, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v1, p2

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    add-int v1, p2, v7

    new-array v2, v8, [I

    move-object/from16 v3, p1

    .line 2282
    invoke-direct {v0, v3, v1, v9, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    move-result v4

    .line 2283
    aget v5, v2, v9

    if-nez v5, :cond_1

    :goto_0
    const/4 v8, 0x0

    goto :goto_1

    .line 2287
    :cond_1
    aget v2, v2, v9

    add-int/2addr v1, v2

    .line 2290
    iget-object v2, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v11, 0x1

    .line 2291
    iget-object v13, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move v12, v1

    move v15, v2

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    :goto_1
    if-eqz v8, :cond_3

    sub-int v1, v1, p2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2299
    :goto_2
    aput v1, p4, v9

    return v4
.end method

.method private static parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2022
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    new-instance v2, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2025
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 2026
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x27

    if-ne v10, v11, :cond_3

    if-eqz v7, :cond_0

    .line 2029
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_2

    .line 2034
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2035
    new-instance v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v7, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_5

    :cond_2
    const/4 v7, 0x1

    :goto_1
    xor-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_4

    .line 2047
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v7, 0x0

    goto :goto_4

    .line 2049
    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_8

    if-ne v10, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    .line 2056
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 2057
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 2061
    :cond_6
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2062
    new-instance v11, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    :cond_7
    :goto_3
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v10

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    .line 2075
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2076
    new-instance v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v7, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 2083
    :cond_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_c

    if-nez v8, :cond_b

    .line 2091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 2092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    .line 2096
    :cond_b
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2097
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v0, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    move v3, v5

    :cond_d
    if-nez v3, :cond_e

    .line 2104
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_e

    .line 2108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2105
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad localized GMT offset pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 7

    .line 3038
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3039
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat;

    monitor-enter v0

    .line 3040
    :try_start_0
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v3, :cond_2

    .line 3042
    new-instance v3, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {v3, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 3043
    sget-object v4, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v4, v2, v2}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v4

    .line 3044
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3045
    invoke-static {v5}, Lcom/ibm/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3047
    invoke-virtual {v3, v6, v5}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_0

    :cond_1
    const-string v4, "unk"

    const-string v5, "Etc/Unknown"

    .line 3051
    invoke-virtual {v3, v4, v5}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 3052
    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 3054
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 3058
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v3, p0, v4, v0}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3060
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 3061
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    aget v0, v0, v1

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 3063
    :cond_4
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_2
    return-object v2
.end method

.method private parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .locals 4

    const/4 v0, 0x0

    .line 2690
    aput v0, p3, v0

    .line 2691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 2692
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, 0x0

    .line 2695
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 2696
    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_1
    if-gez p2, :cond_2

    .line 2703
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result p2

    :cond_2
    move v2, p2

    if-ltz v2, :cond_3

    .line 2707
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    aput p1, p3, v0

    :cond_3
    return v2
.end method

.method private static parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 8

    .line 3000
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3001
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat;

    monitor-enter v0

    .line 3002
    :try_start_0
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v3, :cond_1

    .line 3004
    new-instance v3, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {v3, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 3005
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v4

    .line 3006
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 3007
    invoke-virtual {v3, v7, v7}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3009
    :cond_0
    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 3011
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 3015
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v1, p0, v3, v0}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3017
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3018
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    aget v0, v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 3025
    :cond_3
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7

    .line 3170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "_locale"

    .line 3172
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 3173
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    if-eqz v1, :cond_b

    const-string v1, "_tznames"

    .line 3177
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/TimeZoneNames;

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 3178
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    if-eqz v1, :cond_a

    const-string v1, "_gmtPattern"

    .line 3182
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    .line 3183
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "_gmtOffsetPatterns"

    .line 3187
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 3190
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 3193
    iput-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 3194
    array-length v2, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 3196
    iget-object v5, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    aget-object v6, v1, v2

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3198
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3199
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 3201
    :cond_1
    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    :goto_1
    const-string v1, "_gmtOffsetDigits"

    .line 3204
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 3205
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3207
    array-length v1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    const-string v1, "_gmtZeroFormat"

    .line 3211
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 3212
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "_parseAllStyles"

    .line 3216
    invoke-virtual {p1, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 3217
    invoke-virtual {p1, v1}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3236
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    instance-of v1, p1, Lcom/ibm/icu/impl/TimeZoneNamesImpl;

    if-eqz v1, :cond_2

    .line 3237
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 3238
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    goto :goto_2

    .line 3242
    :cond_2
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    .line 3246
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 3247
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    return-void

    .line 3218
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: parseAllStyles"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3213
    :cond_4
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtZeroFormat"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3208
    :cond_5
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Incompatible field: gmtOffsetDigits"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3206
    :cond_6
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtOffsetDigits"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3191
    :cond_7
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Incompatible field: gmtOffsetPatterns"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3189
    :cond_8
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtOffsetPatterns"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3184
    :cond_9
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtPattern"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3179
    :cond_a
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: tznames"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3174
    :cond_b
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: locale"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 2722
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 2723
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2726
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 2727
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 2728
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "mm"

    .line 2139
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Bad time zone hour pattern data"

    if-ltz v0, :cond_2

    const/4 v2, 0x0

    .line 2143
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v3, 0x2

    .line 2145
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2147
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2149
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2151
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2141
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x27

    .line 1908
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    .line 1913
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1914
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1915
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_2

    if-eqz v4, :cond_1

    .line 1918
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 1926
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1929
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .line 3150
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 3152
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "_locale"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3153
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    const-string v2, "_tznames"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3154
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    const-string v2, "_gmtPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3155
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    const-string v2, "_gmtOffsetPatterns"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3156
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    const-string v2, "_gmtOffsetDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3157
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const-string v2, "_gmtZeroFormat"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3158
    iget-boolean v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    const-string v2, "_parseAllStyles"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 3160
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .line 3280
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat;

    const/4 v1, 0x0

    .line 3281
    iput-boolean v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return-object v0
.end method

.method public final format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 860
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Lcom/ibm/icu/util/TimeZone;",
            "J",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 884
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    iput-object v0, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 889
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    goto :goto_2

    .line 918
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatExemplarLocation(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 911
    :pswitch_1
    invoke-static {p2}, Lcom/ibm/icu/impl/ZoneMeta;->getShortID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "unk"

    goto :goto_1

    .line 907
    :pswitch_2
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 903
    :pswitch_3
    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-object v3, p0

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 900
    :pswitch_4
    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-object v3, p0

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 897
    :pswitch_5
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v3, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :pswitch_6
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v3, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 891
    :pswitch_7
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    invoke-static {p2}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 928
    fill-array-data v3, :array_0

    .line 929
    invoke-virtual {p2, p3, p4, v2, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 930
    aget p2, v3, v2

    aget p3, v3, v1

    add-int/2addr p2, p3

    .line 932
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_1

    :pswitch_8
    goto :goto_3

    .line 983
    :pswitch_9
    invoke-virtual {p0, p2, v2, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 979
    :pswitch_a
    invoke-virtual {p0, p2, v1, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 975
    :pswitch_b
    invoke-virtual {p0, p2, v2, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 971
    :pswitch_c
    invoke-virtual {p0, p2, v1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 967
    :pswitch_d
    invoke-virtual {p0, p2, v2, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 963
    :pswitch_e
    invoke-virtual {p0, p2, v1, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 959
    :pswitch_f
    invoke-virtual {p0, p2, v2, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 955
    :pswitch_10
    invoke-virtual {p0, p2, v1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 951
    :pswitch_11
    invoke-virtual {p0, p2, v2, v1, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 947
    :pswitch_12
    invoke-virtual {p0, p2, v1, v1, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 943
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 937
    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz p5, :cond_3

    .line 994
    aget p1, v3, v1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_4

    :cond_2
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_4
    iput-object p1, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1580
    instance-of v2, p1, Lcom/ibm/icu/util/TimeZone;

    if-eqz v2, :cond_0

    .line 1581
    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    goto :goto_0

    .line 1582
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_3

    .line 1583
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 1584
    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move-object p1, v0

    move-wide v0, v1

    .line 1590
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p1

    .line 1591
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1593
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    if-eq v0, v1, :cond_1

    .line 1594
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 1595
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1596
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    return-object p2

    .line 1586
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot format given Object ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a time zone"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 771
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 790
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 836
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3

    .line 1608
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1609
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1610
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1613
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1614
    sget-object p1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    invoke-virtual {v0, p1, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1616
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1
.end method

.method public freeze()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    const/4 v0, 0x1

    .line 3270
    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return-object p0
.end method

.method public getDefaultParseOptions()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    .line 745
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 747
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_1

    .line 748
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_2

    .line 750
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 752
    :cond_2
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getGMTOffsetDigits()Ljava/lang/String;
    .locals 5

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 656
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 657
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 3261
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return v0
.end method

.method public parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Lcom/ibm/icu/util/TimeZone;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1530
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Lcom/ibm/icu/util/TimeZone;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v5, :cond_0

    .line 1073
    new-instance v5, Lcom/ibm/icu/util/Output;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v5, v6}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 1075
    :cond_0
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    iput-object v6, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1078
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1079
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1083
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const/4 v10, 0x0

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 1085
    :goto_2
    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-eq v1, v11, :cond_4

    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x1

    .line 1089
    :goto_4
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v14, -0x1

    if-nez v8, :cond_6

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, -0x1

    const v11, 0x7fffffff

    const/4 v13, 0x0

    goto :goto_8

    .line 1096
    :cond_6
    :goto_5
    new-instance v8, Lcom/ibm/icu/util/Output;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1097
    invoke-direct {v0, v2, v12, v11, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v11

    .line 1098
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v15

    if-ne v15, v14, :cond_9

    .line 1103
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-eq v15, v7, :cond_8

    iget-object v8, v8, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_6

    .line 1108
    :cond_7
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    goto :goto_7

    .line 1104
    :cond_8
    :goto_6
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1105
    invoke-direct {v0, v11}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_9
    const/4 v8, -0x1

    const v11, 0x7fffffff

    .line 1113
    :goto_7
    sget-object v15, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v15, v15, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    sget-object v13, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v13, v13, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v13, v15

    or-int/2addr v13, v10

    :goto_8
    if-nez v4, :cond_a

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v15

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v15, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_9

    :cond_a
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 1118
    invoke-virtual {v4, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1121
    :goto_9
    sget-object v15, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v17

    aget v15, v15, v17

    const/16 v17, 0x0

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_f

    .line 1176
    :pswitch_0
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1177
    invoke-virtual {v12, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1180
    new-instance v15, Lcom/ibm/icu/util/Output;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v15, v14}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1181
    invoke-static {v2, v12, v10, v15}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v14

    .line 1182
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    const/4 v4, -0x1

    if-ne v10, v4, :cond_18

    iget-object v4, v15, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1183
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1184
    invoke-direct {v0, v14}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1159
    :pswitch_1
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v4, -0x1

    .line 1160
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1162
    invoke-virtual {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1163
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1164
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1165
    invoke-direct {v0, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :pswitch_2
    const/4 v4, -0x1

    .line 1139
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1140
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1142
    invoke-virtual {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1143
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_b

    .line 1144
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1145
    invoke-direct {v0, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1149
    :cond_b
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    goto :goto_a

    :pswitch_3
    const/4 v4, -0x1

    .line 1124
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1125
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1127
    invoke-virtual {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1128
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_c

    .line 1129
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1130
    invoke-direct {v0, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1134
    :cond_c
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    :goto_a
    or-int/2addr v13, v10

    goto/16 :goto_f

    :pswitch_4
    const/4 v4, -0x1

    .line 1293
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1294
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1296
    invoke-direct {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1297
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1298
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1299
    invoke-static {v10}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :pswitch_5
    const/4 v4, -0x1

    .line 1281
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1282
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1284
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1285
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1286
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1287
    invoke-static {v10}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :pswitch_6
    const/4 v4, -0x1

    .line 1269
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1270
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1272
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1273
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1274
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1275
    invoke-static {v10}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1194
    :pswitch_7
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v4, :cond_d

    .line 1195
    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v10, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_b

    .line 1198
    :cond_d
    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v10, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1200
    :goto_b
    iget-object v10, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v10, v2, v6, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 1203
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v14, v8

    move-object/from16 v8, v17

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1204
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v18

    move-object/from16 v19, v10

    add-int v10, v6, v18

    if-le v10, v14, :cond_e

    .line 1206
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    move v14, v8

    move-object v8, v15

    :cond_e
    move-object/from16 v10, v19

    goto :goto_c

    :cond_f
    if-eqz v8, :cond_10

    .line 1210
    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1211
    invoke-virtual {v3, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1212
    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_10
    move v8, v14

    :cond_11
    if-eqz v9, :cond_18

    .line 1216
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v10, :cond_18

    .line 1221
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1224
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v10, v8

    move-object/from16 v8, v17

    :cond_12
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1225
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v15

    add-int/2addr v15, v6

    if-le v15, v10, :cond_12

    .line 1227
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    move v10, v8

    move-object v8, v14

    goto :goto_d

    :cond_13
    if-eqz v8, :cond_14

    .line 1231
    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1232
    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1233
    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_14
    move v8, v10

    goto :goto_f

    .line 1244
    :pswitch_8
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v10

    aget v4, v4, v10

    const/4 v10, 0x1

    if-eq v4, v10, :cond_17

    const/4 v10, 0x2

    if-eq v4, v10, :cond_16

    const/4 v10, 0x3

    if-eq v4, v10, :cond_15

    move-object/from16 v4, v17

    goto :goto_e

    .line 1252
    :cond_15
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_e

    .line 1249
    :cond_16
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_e

    .line 1246
    :cond_17
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1259
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1260
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    if-le v10, v8, :cond_18

    .line 1261
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1262
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v1

    add-int/2addr v6, v1

    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1263
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1304
    :cond_18
    :goto_f
    iget v1, v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v1, v13

    if-le v8, v6, :cond_19

    .line 1314
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1315
    invoke-direct {v0, v11}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1322
    :cond_19
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ge v8, v7, :cond_1d

    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_1a

    and-int/lit16 v10, v1, 0x100

    if-nez v10, :cond_1d

    .line 1329
    :cond_1a
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1330
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1332
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1333
    invoke-static {v2, v12, v14, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v15

    .line 1334
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v10, :cond_1d

    .line 1335
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_1c

    iget-object v10, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_10

    .line 1342
    :cond_1b
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_1d

    .line 1345
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1346
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v11, v15

    goto :goto_11

    .line 1336
    :cond_1c
    :goto_10
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1337
    invoke-direct {v0, v15}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_1d
    :goto_11
    if-ge v8, v7, :cond_20

    .line 1354
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v10, v1

    if-nez v10, :cond_20

    .line 1356
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1357
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1359
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1360
    invoke-direct {v0, v2, v12, v14, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v15

    .line 1361
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v10, :cond_20

    .line 1362
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_1f

    iget-object v10, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1e

    goto :goto_12

    .line 1367
    :cond_1e
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_20

    .line 1370
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1371
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v11, v15

    goto :goto_13

    .line 1363
    :cond_1f
    :goto_12
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1364
    invoke-direct {v0, v15}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_20
    :goto_13
    if-ge v8, v7, :cond_23

    .line 1376
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v10, v1

    if-nez v10, :cond_23

    .line 1378
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1379
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1381
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    .line 1382
    invoke-direct {v0, v2, v12, v14, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v14

    .line 1383
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v15

    if-ne v15, v10, :cond_23

    .line 1384
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_22

    iget-object v10, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_21

    goto :goto_14

    .line 1389
    :cond_21
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_23

    .line 1392
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1393
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move-object v10, v4

    move v13, v14

    goto :goto_15

    .line 1385
    :cond_22
    :goto_14
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1386
    invoke-direct {v0, v14}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_23
    move-object v10, v4

    move v13, v11

    :goto_15
    move-object/from16 v4, p4

    if-nez v4, :cond_24

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v4

    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v4, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_16

    :cond_24
    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 1409
    invoke-virtual {v4, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_16
    if-eqz v4, :cond_30

    if-ge v8, v7, :cond_28

    .line 1414
    iget-object v4, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v4, v2, v6, v11}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 1418
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v11, v17

    const/4 v14, -0x1

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1419
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 p1, v4

    add-int v4, v6, v16

    if-le v4, v14, :cond_25

    .line 1421
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int v14, v6, v4

    move-object v11, v15

    :cond_25
    move-object/from16 v4, p1

    goto :goto_17

    :cond_26
    move-object/from16 v11, v17

    const/4 v14, -0x1

    :cond_27
    if-ge v8, v14, :cond_28

    .line 1427
    invoke-virtual {v11}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1428
    invoke-virtual {v11}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    const v13, 0x7fffffff

    goto :goto_18

    :cond_28
    move v14, v8

    move-object/from16 v4, v17

    :goto_18
    if-eqz v9, :cond_2b

    if-ge v14, v7, :cond_2b

    .line 1432
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v8, v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v8, v1

    if-nez v8, :cond_2b

    .line 1434
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v8, v2, v6, v9}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v8

    if-eqz v8, :cond_2b

    .line 1438
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v11, v17

    const/4 v9, -0x1

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1439
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 p1, v4

    add-int v4, v6, v16

    if-le v4, v9, :cond_29

    .line 1441
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v6

    move v9, v4

    move-object v11, v15

    :cond_29
    move-object/from16 v4, p1

    goto :goto_19

    :cond_2a
    move-object/from16 p1, v4

    if-ge v14, v9, :cond_2c

    .line 1446
    invoke-virtual {v11}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1447
    invoke-virtual {v11}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    move v14, v9

    const v13, 0x7fffffff

    goto :goto_1a

    :cond_2b
    move-object/from16 p1, v4

    :cond_2c
    move-object/from16 v4, p1

    :goto_1a
    if-ge v14, v7, :cond_2d

    .line 1455
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v8, v2, v6, v9}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v8

    if-eqz v8, :cond_2d

    .line 1456
    invoke-virtual {v8}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v9

    add-int/2addr v9, v6

    if-ge v14, v9, :cond_2d

    .line 1457
    invoke-virtual {v8}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    add-int v14, v6, v4

    .line 1458
    invoke-virtual {v8}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    .line 1459
    invoke-virtual {v8}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    const v13, 0x7fffffff

    :cond_2d
    if-ge v14, v7, :cond_2e

    .line 1465
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v8, v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v8, v1

    if-nez v8, :cond_2e

    .line 1466
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v8, -0x1

    .line 1467
    invoke-virtual {v12, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1469
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    .line 1470
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v11

    if-ne v11, v8, :cond_2e

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ge v14, v8, :cond_2e

    .line 1471
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1473
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-object v10, v8

    const v13, 0x7fffffff

    move v8, v4

    move-object v4, v9

    goto :goto_1b

    :cond_2e
    move v8, v14

    :goto_1b
    if-ge v8, v7, :cond_2f

    .line 1478
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v7, v7, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v1, v7

    if-nez v1, :cond_2f

    .line 1479
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v1, -0x1

    .line 1480
    invoke-virtual {v12, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1482
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 1483
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-ne v7, v1, :cond_2f

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ge v8, v1, :cond_2f

    .line 1484
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1486
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    const v13, 0x7fffffff

    goto :goto_1c

    :cond_2f
    move-object v2, v4

    goto :goto_1c

    :cond_30
    move-object/from16 v2, v17

    :goto_1c
    if-le v8, v6, :cond_32

    if-eqz v2, :cond_31

    .line 1496
    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    goto :goto_1d

    .line 1499
    :cond_31
    invoke-direct {v0, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 1501
    :goto_1d
    iput-object v10, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1502
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v1

    .line 1506
    :cond_32
    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;
    .locals 6

    .line 1547
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public final parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1019
    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result p1

    return p1
.end method

.method public parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1036
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result p1

    return p1
.end method

.method public parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1053
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result p1

    return p1
.end method

.method public setGMTOffsetDigits(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 679
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 680
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 683
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    return-object p0

    .line 681
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of digits must be 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null GMT offset digits"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
