.class public Lcom/ibm/icu/text/SimpleDateFormat;
.super Lcom/ibm/icu/text/DateFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALENDAR_FIELD_TO_LEVEL:[I

.field static final DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

.field static DelayedHebrewMonthCheck:Z = false

.field private static PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final PATTERN_CHAR_TO_INDEX:[I

.field private static final PATTERN_CHAR_TO_LEVEL:[I

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static cachedDefaultLocale:Lcom/ibm/icu/util/ULocale; = null

.field private static cachedDefaultPattern:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

.field private transient decDigits:[C

.field private transient decimalBuf:[C

.field private transient defaultCenturyBase:J

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Lcom/ibm/icu/text/DateFormatSymbols;

.field private transient hasMinute:Z

.field private transient hasSecond:Z

.field private transient locale:Lcom/ibm/icu/util/ULocale;

.field private numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private override:Ljava/lang/String;

.field private overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private transient patternItems:[Ljava/lang/Object;

.field private serialVersionOnStream:I

.field private volatile tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

.field private transient useFastFormat:Z

.field private transient useLocalZeroPaddingNumberFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 744
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    const/16 v1, 0x80

    new-array v2, v1, [I

    .line 763
    fill-array-data v2, :array_1

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    new-array v2, v1, [Z

    .line 789
    fill-array-data v2, :array_2

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    const/4 v2, 0x0

    .line 1182
    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    .line 1183
    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    new-array v1, v1, [I

    .line 1391
    fill-array-data v1, :array_3

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    const/16 v1, 0x25

    new-array v2, v1, [I

    .line 1415
    fill-array-data v2, :array_4

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    const/16 v2, 0x26

    new-array v3, v2, [I

    .line 1439
    fill-array-data v3, :array_5

    sput-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    new-array v2, v2, [Lcom/ibm/icu/text/DateFormat$Field;

    const/4 v3, 0x0

    .line 1462
    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->ERA:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x17

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x19

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1a

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1b

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1c

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1d

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1e

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1f

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x20

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x21

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x22

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x23

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x24

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v0, v2, v1

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    .line 2101
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 2843
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[GyYuUQqMLlwWd]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x14
        0x1e
        0x1e
        0x14
        0x1e
        0x1e
        0x28
        0x32
        0x32
        0x3c
        0x46
        0x50
        0x0
        0x0
        0xa
        0x1e
        0xa
        0x0
        0x28
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        0x14
        0x1e
        0x1e
        0x0
        0x32
        -0x1
        -0x1
        0x32
        0x14
        0x14
        -0x1
        0x0
        -0x1
        0x14
        -0x1
        0x50
        -0x1
        0xa
        0x0
        0x1e
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        0x1e
        0x1e
        0x1e
        -0x1
        0x0
        0x32
        -0x1
        -0x1
        0x32
        -0x1
        0x3c
        -0x1
        -0x1
        -0x1
        0x14
        0xa
        0x46
        -0x1
        0xa
        0x0
        0x14
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        0x24
        -0x1
        0xa
        0x9
        0xb
        0x0
        0x5
        -0x1
        -0x1
        0x10
        0x1a
        0x2
        -0x1
        0x1f
        -0x1
        0x1b
        -0x1
        0x8
        -0x1
        0x1e
        0x1d
        0xd
        0x20
        0x12
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        0x23
        0x19
        0x3
        0x13
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x4
        -0x1
        0x6
        -0x1
        -0x1
        -0x1
        0x1c
        0x22
        0x7
        -0x1
        0x14
        0x18
        0xc
        0x21
        0x1
        0x11
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0xf
        0x12
        0x2
        0x2
        0x2
        0xf
        0x1
        0xf
        0xf
        0xf
        0x13
        -0x1
        -0x2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 979
    invoke-static {}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 991
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 1

    .line 1070
    invoke-direct {p0}, Lcom/ibm/icu/text/DateFormat;-><init>()V

    const/4 v0, 0x2

    .line 852
    iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 930
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 1071
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1072
    iput-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1073
    iput-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1074
    iput-object p4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1075
    iput-object p5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1076
    iput-boolean p6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    .line 1077
    iput-object p7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 1078
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 1013
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(CI)Z
    .locals 0

    .line 722
    invoke-static {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    move-result p0

    return p0
.end method

.method private allowNumericFallback(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .locals 4

    .line 2271
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v1, v0

    if-ge v1, p4, :cond_0

    array-length p4, v0

    :cond_0
    add-int/lit8 v0, p4, -0x1

    .line 2274
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    rem-int/lit8 v3, p2, 0xa

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 2275
    div-int/lit8 p2, p2, 0xa

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int p2, p4, v0

    sub-int/2addr p3, p2

    :goto_2
    const/4 p2, 0x0

    if-lez p3, :cond_3

    if-lez v0, :cond_3

    .line 2283
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char p2, v2, p2

    aput-char p2, v1, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-lez p3, :cond_4

    .line 2289
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 2292
    :cond_4
    iget-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, v0, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/DisplayContext;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v13, 0x0

    .line 1347
    invoke-virtual {v11, v13}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1348
    invoke-virtual {v11, v13}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    .line 1355
    :goto_0
    array-length v0, v14

    if-ge v15, v0, :cond_4

    .line 1356
    aget-object v0, v14, v15

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1357
    aget-object v0, v14, v15

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1359
    :cond_0
    aget-object v0, v14, v15

    move-object v8, v0

    check-cast v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v12, :cond_1

    .line 1363
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1365
    :goto_1
    iget-boolean v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v0, :cond_2

    .line 1366
    iget-char v2, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v5, v15

    move-object/from16 v6, p2

    move v13, v7

    move-object/from16 v7, p4

    move-object v11, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto :goto_2

    :cond_2
    move v13, v7

    move-object v11, v8

    .line 1369
    iget-char v1, v11, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v2, v11, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, p0

    move v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    if-eqz v12, :cond_3

    .line 1374
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int v1, v0, v13

    if-lez v1, :cond_3

    .line 1377
    iget-char v1, v11, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-virtual {v9, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;

    move-result-object v1

    .line 1378
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1379
    invoke-virtual {v2, v13}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1380
    invoke-virtual {v2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1381
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    return-object v10
.end method

.method private getDefaultCenturyStart()Ljava/util/Date;
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1253
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
.end method

.method private getDefaultCenturyStartYear()I
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1262
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1264
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return v0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/ibm/icu/text/SimpleDateFormat;

    monitor-enter v0

    .line 1191
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 1192
    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1193
    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    .line 1194
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "com/ibm/icu/impl/data/icudt59b"

    .line 1198
    sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DateTimePatterns"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "calendar/gregorian/DateTimePatterns"

    .line 1204
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 1206
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 1210
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    const/16 v4, 0xd

    if-lt v3, v4, :cond_2

    const/16 v2, 0xc

    .line 1213
    :cond_2
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 1217
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1215
    invoke-static {v2, v3, v3, v4}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "yy/MM/dd HH:mm"

    .line 1207
    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v1, "yy/MM/dd HH:mm"

    .line 1220
    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    .line 1223
    :cond_4
    :goto_1
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getIndexFromChar(C)I
    .locals 2

    .line 1411
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1094
    :goto_0
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;

    move-result-object v3

    .line 1096
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object v4

    const/4 v5, 0x0

    .line 1098
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v6

    .line 1100
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-object v0
.end method

.method private getPatternItems()[Ljava/lang/Object;
    .locals 12

    .line 2110
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2114
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2115
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    return-object v0

    .line 2121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2127
    :goto_0
    iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_b

    .line 2128
    iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_4

    if-eqz v8, :cond_2

    .line 2131
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v5

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 2136
    new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    move v8, v5

    const/4 v5, 0x1

    :goto_1
    xor-int/lit8 v7, v7, 0x1

    move v11, v8

    move v8, v5

    move v5, v11

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    .line 2144
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v8, 0x0

    goto :goto_4

    .line 2146
    :cond_5
    invoke-static {v9}, Lcom/ibm/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ne v9, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    .line 2152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 2153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 2157
    :cond_7
    new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    move v5, v9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    .line 2165
    new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 2168
    :cond_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-nez v5, :cond_c

    .line 2175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    .line 2180
    :cond_c
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v0, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2183
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2185
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2187
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v0
.end method

.method private initLocalZeroPaddingNumberFormat()V
    .locals 2

    .line 2238
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    .line 2240
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_0

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    .line 2243
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2245
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 2248
    :goto_0
    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 2249
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_2
    return-void
.end method

.method private initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 4452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 4454
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_0

    .line 1108
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    if-nez v0, :cond_1

    .line 1111
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_4

    .line 1117
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1119
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    goto :goto_0

    .line 1121
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 1122
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1124
    new-instance v2, Lcom/ibm/icu/impl/DateNumberFormat;

    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v2, v3, v1, v0}, Lcom/ibm/icu/impl/DateNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1129
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1131
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    sget-object v2, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1132
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 1134
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1135
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V

    .line 1138
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    return-void
.end method

.method private initializeDefaultCenturyStart(J)V
    .locals 1

    .line 1239
    iput-wide p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1242
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 1243
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    const/16 p2, -0x50

    .line 1244
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 1245
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1246
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private declared-synchronized initializeTimeZoneFormat(Z)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1148
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    if-nez p1, :cond_4

    .line 1149
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    const/4 p1, 0x0

    .line 1152
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_1

    .line 1153
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object p1

    .line 1154
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_2

    .line 1156
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1161
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    .line 1164
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final isNumeric(CI)Z
    .locals 1

    const-string v0, "ADdFgHhKkmrSsuWwYy"

    .line 2322
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const-string p1, "ceLMQq"

    .line 2323
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSyntaxChar(C)Z
    .locals 2

    .line 829
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget-boolean p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "I",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    .line 3016
    aget-object v3, p3, v0

    if-eqz v3, :cond_0

    .line 3017
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 3018
    aget-object v4, p3, v0

    .line 3019
    invoke-direct {p0, p1, p2, v4, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    .line 3027
    sget-object p1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object p1, p1, v1

    iput-object p1, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    add-int/2addr p2, v2

    return p2

    :cond_2
    neg-int p1, p2

    return p1
.end method

.method private matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .locals 10

    .line 2773
    aget-object v0, p3, p4

    check-cast v0, Ljava/lang/String;

    .line 2774
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2775
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v5, p2

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_6

    if-ge v5, v2, :cond_6

    .line 2778
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2779
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2780
    invoke-static {v7}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2781
    invoke-static {v8}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v1, :cond_0

    .line 2785
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    :goto_2
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v2, :cond_5

    .line 2789
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v7

    goto :goto_2

    :cond_1
    if-eq v7, v8, :cond_5

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    if-ne v5, p2, :cond_2

    if-lez p4, :cond_2

    .line 2793
    sget-object v8, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v7, p4, -0x1

    .line 2794
    aget-object v7, p3, v7

    .line 2795
    instance-of v8, v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v8, :cond_6

    .line 2796
    check-cast v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v7, v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    if-ne v7, v9, :cond_4

    .line 2802
    :cond_3
    sget-object v7, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eq v5, p2, :cond_6

    .line 2805
    sget-object v7, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_5
    add-int/2addr v4, v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_6
    if-ne v4, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 2814
    :goto_4
    aput-boolean v0, p5, v3

    .line 2815
    aget-boolean v0, p5, v3

    if-nez v0, :cond_a

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-lez p4, :cond_a

    array-length v0, p3

    sub-int/2addr v0, v6

    if-ge p4, v0, :cond_a

    if-ge p2, v2, :cond_a

    add-int/lit8 v0, p4, -0x1

    .line 2820
    aget-object v0, p3, v0

    add-int/2addr p4, v6

    .line 2821
    aget-object p3, p3, p4

    .line 2822
    instance-of p4, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz p4, :cond_a

    instance-of p4, p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz p4, :cond_a

    .line 2823
    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-char p4, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2824
    check-cast p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-char p3, p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2825
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p4

    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p3

    if-eq p4, p3, :cond_a

    move v5, p2

    .line 2828
    :goto_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 2829
    invoke-static {p3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p3

    if-nez p3, :cond_9

    if-le v5, p2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    .line 2834
    :goto_6
    aput-boolean v6, p5, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    return v5
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2892
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne p3, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 2906
    aget-object v7, p4, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 2909
    aget-object v8, p4, v3

    .line 2910
    invoke-direct {p0, p1, p2, v8, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_1

    move v4, v3

    move v5, v7

    const/4 v6, 0x0

    :cond_1
    if-eqz p5, :cond_2

    new-array v7, v2, [Ljava/lang/CharSequence;

    .line 2917
    aget-object v8, p4, v3

    aput-object v8, v7, v1

    invoke-static {p5, v2, v2, v7}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 2919
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 2921
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_2

    move v4, v3

    move v5, v7

    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ltz v4, :cond_6

    if-ltz p3, :cond_5

    if-ne p3, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 2935
    :cond_4
    invoke-virtual {p6, p3, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    if-eqz p5, :cond_5

    const/16 p1, 0x16

    .line 2937
    invoke-virtual {p6, p1, v6}, Lcom/ibm/icu/util/Calendar;->set(II)V

    :cond_5
    add-int/2addr p2, v5

    return p2

    :cond_6
    not-int p1, p2

    return p1
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 1

    .line 1230
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1231
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1232
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 5

    .line 3752
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-eqz p4, :cond_0

    .line 3754
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    goto :goto_0

    .line 3757
    :cond_0
    instance-of p4, p5, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz p4, :cond_1

    .line 3758
    move-object p4, p5

    check-cast p4, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/ibm/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uab00"

    .line 3759
    invoke-virtual {p4, v2}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    .line 3761
    check-cast p5, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p5, v1}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 3763
    :cond_1
    instance-of p4, p5, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz p4, :cond_2

    .line 3765
    move-object v1, p5

    check-cast v1, Lcom/ibm/icu/impl/DateNumberFormat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    .line 3767
    :cond_2
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 3769
    check-cast p5, Lcom/ibm/icu/impl/DateNumberFormat;

    const/4 p4, 0x0

    invoke-virtual {p5, p4}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    :cond_3
    :goto_0
    if-lez p2, :cond_5

    .line 3776
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p4

    sub-int/2addr p4, v0

    if-le p4, p2, :cond_5

    .line 3778
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    sub-int/2addr p4, p2

    :goto_1
    if-lez p4, :cond_4

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, p2

    .line 3784
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    double-to-int p1, v1

    .line 3785
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 3740
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method private parsePattern()V
    .locals 5

    const/4 v0, 0x0

    .line 4512
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4513
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    const/4 v1, 0x0

    .line 4516
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 4517
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    xor-int/lit8 v1, v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    const/16 v3, 0x6d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 4523
    iput-boolean v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    :cond_1
    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    .line 4526
    iput-boolean v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_5

    .line 4460
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_5

    const-string v4, ";"

    .line 4471
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 4474
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, v2

    move v2, v4

    .line 4479
    :goto_1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    .line 4480
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 4485
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4486
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 4487
    iget-object v5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    const/4 v3, 0x0

    .line 4491
    :goto_2
    new-instance v5, Lcom/ibm/icu/util/ULocale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@numbers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 4492
    invoke-static {v5, v1}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v5

    .line 4493
    invoke-virtual {v5, v1}, Lcom/ibm/icu/text/NumberFormat;->setGroupingUsed(Z)V

    if-eqz v3, :cond_3

    .line 4496
    invoke-virtual {p0, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V

    goto :goto_3

    .line 4500
    :cond_3
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    :goto_3
    if-nez v3, :cond_4

    .line 4503
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4504
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 3993
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3994
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3997
    :goto_0
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v0, v1, :cond_1

    .line 3999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    goto :goto_1

    .line 4004
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    :goto_1
    const/4 v0, 0x2

    .line 4006
    iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 4007
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 4008
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_2

    .line 4012
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 4015
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 4017
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 4019
    invoke-static {}, Lcom/ibm/icu/text/DisplayContext;->values()[Lcom/ibm/icu/text/DisplayContext;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 4020
    invoke-virtual {v4}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 4021
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4028
    :cond_4
    :goto_3
    sget-object p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 4029
    sget-object p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;Z)Lcom/ibm/icu/text/DateFormat;

    .line 4032
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    return-void
.end method

.method private regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 2946
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    .line 2950
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    const/4 v6, 0x0

    add-int/lit8 p4, p4, -0x1

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    .line 2951
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return p4

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 2070
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2071
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private static safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 2076
    array-length v0, p0

    if-ge p1, v0, :cond_1

    if-nez p3, :cond_0

    .line 2078
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 2080
    aget-object p0, p0, p1

    aput-object p0, v1, v2

    invoke-static {p3, v0, v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2081
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/MessageFormat;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3068
    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/MessageFormat;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3107
    new-instance v7, Ljava/text/ParsePosition;

    const/4 v15, 0x0

    invoke-direct {v7, v15}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3109
    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v11

    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    move/from16 v0, p2

    not-int v0, v0

    return v0

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    .line 3114
    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v5

    .line 3116
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v4, v1, v11

    if-eqz v9, :cond_1

    .line 3119
    invoke-virtual {v9, v15, v5}, Lcom/ibm/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    .line 3121
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dangi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v16, 0x1

    :goto_1
    move v2, v0

    .line 3126
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_4

    not-int v0, v2

    return v0

    .line 3129
    :cond_4
    invoke-static {v13, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 3130
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 3133
    :cond_5
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 3135
    :cond_6
    :goto_3
    invoke-virtual {v7, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v0, 0x1a

    const/16 v17, 0x0

    const/4 v1, 0x4

    const/4 v15, 0x2

    if-eq v11, v1, :cond_a

    const/16 v1, 0xf

    if-eq v11, v1, :cond_a

    if-ne v11, v15, :cond_7

    if-le v14, v15, :cond_a

    :cond_7
    if-eq v11, v0, :cond_a

    const/16 v1, 0x13

    if-eq v11, v1, :cond_a

    const/16 v1, 0x19

    if-eq v11, v1, :cond_a

    if-eq v11, v3, :cond_a

    const/16 v1, 0x12

    if-eq v11, v1, :cond_a

    const/16 v1, 0x1e

    if-eq v11, v1, :cond_a

    if-nez v11, :cond_8

    if-nez v16, :cond_a

    :cond_8
    const/16 v1, 0x1b

    if-eq v11, v1, :cond_a

    const/16 v1, 0x1c

    if-eq v11, v1, :cond_a

    const/16 v1, 0x8

    if-ne v11, v1, :cond_9

    goto :goto_4

    :cond_9
    move v15, v2

    move/from16 v19, v4

    move-object/from16 v20, v17

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_a
    :goto_4
    if-eqz v9, :cond_e

    if-eq v11, v15, :cond_b

    if-ne v11, v0, :cond_e

    .line 3160
    :cond_b
    invoke-virtual {v9, v13, v7}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3161
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-le v15, v2, :cond_d

    const/4 v15, 0x0

    aget-object v1, v0, v15

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_c

    .line 3163
    aget-object v0, v0, v15

    check-cast v0, Ljava/lang/Number;

    const/16 v1, 0x16

    .line 3164
    invoke-virtual {v8, v1, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/16 v1, 0x16

    goto :goto_5

    :cond_d
    const/16 v1, 0x16

    const/4 v15, 0x0

    .line 3166
    :goto_5
    invoke-virtual {v7, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3167
    invoke-virtual {v8, v1, v15}, Lcom/ibm/icu/util/Calendar;->set(II)V

    :cond_e
    move-object/from16 v1, v17

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_11

    if-eqz p5, :cond_10

    add-int v0, v2, v14

    .line 3173
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_f

    not-int v0, v2

    return v0

    :cond_f
    move-object/from16 v0, p0

    const/4 v15, 0x4

    move-object/from16 v1, p1

    move v15, v2

    move/from16 v2, p4

    const/4 v9, 0x1

    move-object v3, v7

    move/from16 v19, v4

    move/from16 v4, p6

    move-object/from16 v20, v5

    .line 3176
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_7

    :cond_10
    move v15, v2

    move/from16 v19, v4

    const/4 v9, 0x1

    .line 3178
    invoke-direct {v12, v13, v7, v6, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_12

    .line 3180
    invoke-direct {v12, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    move-result v1

    if-nez v1, :cond_12

    not-int v0, v15

    return v0

    :cond_11
    move v15, v2

    move/from16 v19, v4

    const/4 v9, 0x1

    move-object v0, v1

    :cond_12
    if-eqz v0, :cond_13

    .line 3187
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v20, v0

    move v4, v1

    goto :goto_8

    :cond_13
    move-object/from16 v20, v0

    const/4 v4, 0x0

    :goto_8
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x3

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move/from16 v4, v19

    if-eqz p5, :cond_88

    add-int v2, v15, v14

    .line 3699
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_87

    neg-int v0, v15

    return v0

    .line 3605
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3606
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3609
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3610
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    :cond_14
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3615
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "."

    .line 3616
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v1, -0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 3619
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v1

    move-object/from16 p6, v0

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0

    .line 3657
    :pswitch_2
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_17

    if-ne v14, v1, :cond_16

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_a

    .line 3658
    :cond_17
    :goto_9
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_18

    return v0

    .line 3664
    :cond_18
    :goto_a
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x4

    if-ne v14, v1, :cond_1a

    .line 3665
    :cond_19
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1a

    return v0

    .line 3671
    :cond_1a
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x4

    if-ne v14, v1, :cond_1c

    .line 3672
    :cond_1b
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, p11

    invoke-direct/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1c

    :cond_1c
    return v0

    :pswitch_3
    const/16 v3, 0x61

    move-object/from16 v0, p0

    const/4 v11, 0x3

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    const/4 v13, 0x3

    move-object/from16 v11, p11

    .line 3624
    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1d

    return v0

    .line 3631
    :cond_1d
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-ne v14, v13, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c

    .line 3632
    :cond_1f
    :goto_b
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_20

    return v0

    .line 3637
    :cond_20
    :goto_c
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x4

    if-ne v14, v1, :cond_22

    .line 3638
    :cond_21
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_22

    return v0

    .line 3643
    :cond_22
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x4

    if-ne v14, v1, :cond_24

    .line 3644
    :cond_23
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, p11

    invoke-direct/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_24

    :cond_24
    return v0

    :pswitch_4
    const/4 v13, 0x3

    if-eq v14, v9, :cond_28

    const/4 v0, 0x2

    if-eq v14, v0, :cond_27

    if-eq v14, v13, :cond_26

    const/4 v0, 0x4

    if-eq v14, v0, :cond_25

    .line 3539
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3536
    :cond_25
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3533
    :cond_26
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3530
    :cond_27
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3527
    :cond_28
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3542
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    move-object/from16 v13, p1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3544
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3545
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_29
    not-int v0, v15

    return v0

    :pswitch_5
    const/4 v11, 0x3

    if-eq v14, v9, :cond_2d

    const/4 v0, 0x2

    if-eq v14, v0, :cond_2c

    if-eq v14, v11, :cond_2b

    const/4 v0, 0x4

    if-eq v14, v0, :cond_2a

    .line 3512
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3509
    :cond_2a
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3506
    :cond_2b
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3503
    :cond_2c
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3500
    :cond_2d
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3515
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3517
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3518
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_2e
    not-int v0, v15

    return v0

    :pswitch_6
    const/4 v0, 0x4

    if-ge v14, v0, :cond_2f

    .line 3487
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_f

    :cond_2f
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3488
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3490
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3491
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_30
    not-int v0, v15

    return v0

    .line 3257
    :pswitch_7
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_31

    const/4 v3, 0x1

    .line 3258
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v10, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_32

    return v0

    :cond_31
    move v10, v4

    :cond_32
    if-eqz v20, :cond_34

    .line 3263
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v0, v0

    if-le v10, v0, :cond_34

    .line 3264
    :cond_33
    invoke-virtual {v8, v9, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3265
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_34
    not-int v0, v15

    return v0

    :pswitch_8
    const/4 v11, 0x3

    if-eq v14, v9, :cond_37

    const/4 v0, 0x2

    if-eq v14, v0, :cond_36

    if-eq v14, v11, :cond_35

    .line 3475
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    .line 3472
    :cond_35
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    .line 3469
    :cond_36
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    .line 3466
    :cond_37
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3478
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3480
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3481
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_38
    not-int v0, v15

    return v0

    :pswitch_9
    move v10, v4

    const/4 v0, 0x2

    const/4 v11, 0x3

    if-le v14, v0, :cond_3f

    if-eqz v20, :cond_39

    .line 3576
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_14

    .line 3588
    :cond_39
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x4

    if-ne v14, v0, :cond_3a

    goto :goto_11

    :cond_3a
    const/4 v0, 0x0

    goto :goto_12

    :cond_3b
    :goto_11
    const/4 v3, 0x2

    .line 3589
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_3c

    return v0

    .line 3594
    :cond_3c
    :goto_12
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_3e

    if-ne v14, v11, :cond_3d

    goto :goto_13

    :cond_3d
    return v0

    :cond_3e
    :goto_13
    const/4 v0, 0x2

    .line 3595
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0

    :cond_3f
    :goto_14
    add-int/lit8 v4, v10, -0x1

    mul-int/lit8 v4, v4, 0x3

    const/4 v0, 0x2

    .line 3581
    invoke-virtual {v8, v0, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3582
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_a
    move v10, v4

    const/4 v0, 0x2

    const/4 v11, 0x3

    if-le v14, v0, :cond_46

    if-eqz v20, :cond_40

    .line 3550
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_18

    .line 3562
    :cond_40
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x4

    if-ne v14, v0, :cond_41

    goto :goto_15

    :cond_41
    const/4 v0, 0x0

    goto :goto_16

    :cond_42
    :goto_15
    const/4 v3, 0x2

    .line 3563
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_43

    return v0

    .line 3568
    :cond_43
    :goto_16
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_45

    if-ne v14, v11, :cond_44

    goto :goto_17

    :cond_44
    return v0

    :cond_45
    :goto_17
    const/4 v0, 0x2

    .line 3569
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0

    :cond_46
    :goto_18
    add-int/lit8 v4, v10, -0x1

    mul-int/lit8 v4, v4, 0x3

    const/4 v0, 0x2

    .line 3555
    invoke-virtual {v8, v0, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3556
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_b
    move v10, v4

    const/4 v11, 0x3

    if-eq v14, v9, :cond_4f

    if-eqz v20, :cond_47

    .line 3379
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_1b

    .line 3386
    :cond_47
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x4

    if-ne v14, v0, :cond_48

    goto :goto_19

    :cond_48
    const/4 v0, 0x0

    const/4 v9, 0x6

    goto :goto_1a

    :cond_49
    :goto_19
    const/4 v4, 0x7

    .line 3387
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    const/4 v9, 0x6

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4a

    return v0

    .line 3391
    :cond_4a
    :goto_1a
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4b

    if-ne v14, v11, :cond_4c

    :cond_4b
    const/4 v3, 0x7

    .line 3392
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4c

    return v0

    .line 3396
    :cond_4c
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4d

    if-ne v14, v9, :cond_4e

    .line 3397
    :cond_4d
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_4e

    const/4 v3, 0x7

    .line 3398
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :cond_4e
    return v0

    :cond_4f
    :goto_1b
    move/from16 v4, v19

    .line 3381
    invoke-virtual {v8, v4, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3382
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_c
    const/4 v0, 0x4

    if-ge v14, v0, :cond_50

    .line 3453
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1c

    :cond_50
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3454
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 3456
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3457
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_51
    not-int v0, v15

    return v0

    :pswitch_d
    const/4 v0, 0x4

    if-ge v14, v0, :cond_52

    .line 3442
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1d

    :cond_52
    if-ne v14, v2, :cond_53

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1d

    :cond_53
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3443
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 3445
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3446
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_54
    not-int v0, v15

    return v0

    :pswitch_e
    move v10, v4

    move/from16 v4, v19

    const/4 v0, 0x2

    const/4 v9, 0x6

    const/4 v11, 0x3

    if-le v14, v0, :cond_56

    if-eqz v20, :cond_55

    .line 3342
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_1e

    :cond_55
    const/4 v7, 0x5

    goto/16 :goto_22

    .line 3344
    :cond_56
    :goto_1e
    invoke-virtual {v8, v4, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3345
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_f
    const/4 v0, 0x4

    if-ge v14, v0, :cond_57

    .line 3432
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1f

    :cond_57
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3433
    :goto_1f
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 3435
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3436
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_58
    not-int v0, v15

    return v0

    :pswitch_10
    move v10, v4

    const/16 v0, 0xa

    .line 3425
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/2addr v1, v9

    if-ne v10, v1, :cond_59

    const/4 v10, 0x0

    .line 3428
    :cond_59
    invoke-virtual {v8, v0, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3429
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    .line 3409
    :pswitch_11
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v0, :cond_5b

    if-lt v14, v2, :cond_5b

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_20

    :cond_5a
    const/4 v7, 0x5

    goto :goto_21

    :cond_5b
    :goto_20
    const/16 v3, 0x9

    .line 3410
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x5

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5c

    return v0

    .line 3415
    :cond_5c
    :goto_21
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v0, :cond_5e

    if-ge v14, v7, :cond_5d

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5d
    const/16 v3, 0x9

    .line 3416
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5e

    return v0

    :cond_5e
    not-int v0, v15

    return v0

    :pswitch_12
    const/4 v7, 0x5

    const/4 v9, 0x6

    const/4 v11, 0x3

    .line 3352
    :goto_22
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x4

    if-ne v14, v0, :cond_5f

    goto :goto_23

    :cond_5f
    const/4 v0, 0x0

    goto :goto_24

    :cond_60
    :goto_23
    const/4 v3, 0x7

    .line 3353
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_61

    return v0

    .line 3357
    :cond_61
    :goto_24
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_62

    if-ne v14, v11, :cond_63

    :cond_62
    const/4 v3, 0x7

    .line 3358
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_63

    return v0

    .line 3362
    :cond_63
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_64

    if-ne v14, v9, :cond_65

    .line 3363
    :cond_64
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_65

    const/4 v3, 0x7

    .line 3364
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_65

    return v0

    .line 3369
    :cond_65
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_66

    if-ne v14, v7, :cond_67

    .line 3370
    :cond_66
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_67

    const/4 v3, 0x7

    .line 3371
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_67

    :cond_67
    return v0

    :pswitch_13
    move v10, v4

    const/4 v11, 0x3

    .line 3325
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    sub-int/2addr v0, v15

    if-ge v0, v11, :cond_68

    :goto_25
    if-ge v0, v11, :cond_6a

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_68
    :goto_26
    if-le v0, v11, :cond_69

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 3337
    :cond_69
    div-int/2addr v10, v9

    :cond_6a
    const/16 v0, 0xe

    .line 3339
    invoke-virtual {v8, v0, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3340
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_14
    move v10, v4

    const/16 v0, 0xb

    .line 3318
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/2addr v1, v9

    if-ne v10, v1, :cond_6b

    const/4 v10, 0x0

    .line 3321
    :cond_6b
    invoke-virtual {v8, v0, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3322
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_15
    move v10, v4

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v6, 0x3

    if-le v14, v1, :cond_79

    if-eqz v20, :cond_6c

    .line 3270
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto/16 :goto_31

    .line 3293
    :cond_6c
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_6d

    const/4 v7, 0x1

    goto :goto_27

    :cond_6d
    const/4 v7, 0x0

    .line 3296
    :goto_27
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x4

    if-ne v14, v0, :cond_6e

    goto :goto_28

    :cond_6e
    const/4 v0, 0x0

    const/4 v10, 0x3

    goto :goto_2c

    :cond_6f
    :goto_28
    const/4 v0, 0x2

    if-ne v11, v0, :cond_71

    const/4 v3, 0x2

    .line 3297
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v7, :cond_70

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_29

    :cond_70
    move-object/from16 v5, v17

    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    const/4 v10, 0x3

    move-object/from16 v6, p8

    .line 3298
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_2b

    :cond_71
    const/4 v10, 0x3

    const/4 v3, 0x2

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v7, :cond_72

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v10

    move-object v5, v0

    goto :goto_2a

    :cond_72
    move-object/from16 v5, v17

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3300
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :goto_2b
    if-lez v0, :cond_73

    return v0

    .line 3307
    :cond_73
    :goto_2c
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_75

    if-ne v14, v10, :cond_74

    goto :goto_2d

    :cond_74
    return v0

    :cond_75
    :goto_2d
    const/4 v0, 0x2

    if-ne v11, v0, :cond_77

    const/4 v3, 0x2

    .line 3308
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v7, :cond_76

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v9

    move-object v5, v0

    goto :goto_2e

    :cond_76
    move-object/from16 v5, v17

    :goto_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3309
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_30

    :cond_77
    const/4 v3, 0x2

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v7, :cond_78

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_2f

    :cond_78
    move-object/from16 v5, v17

    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3311
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :goto_30
    return v0

    :cond_79
    :goto_31
    add-int/lit8 v4, v10, -0x1

    const/4 v1, 0x2

    .line 3275
    invoke-virtual {v8, v1, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3280
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hebrew"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    if-lt v10, v0, :cond_7b

    .line 3281
    invoke-virtual {v8, v9}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3282
    invoke-virtual {v8, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3283
    invoke-virtual {v8, v1, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_32

    .line 3286
    :cond_7a
    sput-boolean v9, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3289
    :cond_7b
    :goto_32
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_16
    move v10, v4

    move/from16 v4, v19

    .line 3227
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_7d

    const-string v1, "hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v1, "y=hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7d

    :cond_7c
    const/16 v0, 0x3e8

    if-ge v10, v0, :cond_7d

    add-int/lit16 v0, v10, 0x1388

    goto :goto_35

    :cond_7d
    const/4 v0, 0x2

    if-ne v14, v0, :cond_80

    .line 3229
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v15

    if-ne v1, v0, :cond_80

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->haveDefaultCentury()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3230
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_80

    add-int/lit8 v2, v15, 0x1

    .line 3231
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3241
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v0

    const/16 v15, 0x64

    rem-int/2addr v0, v15

    const/4 v1, 0x0

    if-ne v10, v0, :cond_7e

    const/16 v18, 0x1

    goto :goto_33

    :cond_7e
    const/16 v18, 0x0

    .line 3242
    :goto_33
    aput-boolean v18, p7, v1

    .line 3243
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v1

    div-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    if-ge v10, v0, :cond_7f

    goto :goto_34

    :cond_7f
    const/4 v15, 0x0

    :goto_34
    add-int/2addr v1, v15

    add-int v0, v10, v1

    goto :goto_35

    :cond_80
    move v0, v10

    .line 3246
    :goto_35
    invoke-virtual {v8, v4, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3249
    sget-boolean v1, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    if-eqz v1, :cond_82

    .line 3250
    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_81

    const/4 v0, 0x2

    .line 3251
    invoke-virtual {v8, v0, v9}, Lcom/ibm/icu/util/Calendar;->add(II)V

    :cond_81
    const/4 v0, 0x0

    .line 3253
    sput-boolean v0, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3255
    :cond_82
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_17
    move v10, v4

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz v16, :cond_83

    .line 3197
    invoke-virtual {v8, v0, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3198
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_83
    if-ne v14, v1, :cond_84

    const/4 v3, 0x0

    .line 3202
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_36

    :cond_84
    const/4 v0, 0x4

    if-ne v14, v0, :cond_85

    const/4 v3, 0x0

    .line 3204
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_36

    :cond_85
    const/4 v3, 0x0

    .line 3206
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :goto_36
    not-int v1, v15

    if-ne v0, v1, :cond_86

    const/16 v0, -0x7d00

    :cond_86
    return v0

    :cond_87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object v3, v7

    move v9, v4

    move/from16 v4, p6

    .line 3700
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_37

    :cond_88
    move v9, v4

    .line 3702
    invoke-direct {v12, v13, v7, v6, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    :goto_37
    if-eqz v0, :cond_8a

    const/16 v1, 0x22

    if-eq v11, v1, :cond_89

    .line 3706
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v9, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_38

    .line 3708
    :cond_89
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setRelatedYear(I)V

    .line 3710
    :goto_38
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_8a
    not-int v0, v15

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1176
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 3977
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 3980
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    :cond_0
    const/4 v0, 0x0

    .line 3982
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 3983
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3984
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 0

    .line 3855
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 3856
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    const/4 p1, 0x0

    .line 3858
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 3860
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 3937
    invoke-super {p0}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 3938
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols;

    iput-object v1, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3941
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    .line 3942
    iput-object v1, v0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 3966
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3967
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 3968
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object p1, p1, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3969
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .line 1325
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1330
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 1331
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1332
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    .line 1334
    sget-object p1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 1337
    iget-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p2, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_1
    return-object p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 10

    .line 4046
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 4047
    instance-of v1, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v1, :cond_0

    .line 4048
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 4049
    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 4050
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 4051
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 4052
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 4056
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4057
    new-instance v8, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 4058
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4059
    sget-object v2, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v6

    move-object v4, p0

    move-object v7, p1

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 4061
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 4064
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 4065
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/FieldPosition;

    .line 4066
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    .line 4067
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    invoke-virtual {v2, v3, v3, v4, p1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4070
    :cond_2
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 4054
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot format given Object as a Date"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 4081
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 4440
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 4441
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4442
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4443
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    return-object p1

    .line 4446
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 3955
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 6

    .line 2978
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2987
    aget-object v4, p4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 2990
    aget-object v5, p4, v1

    .line 2991
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    mul-int/lit8 v2, v2, 0x3

    .line 2999
    invoke-virtual {p5, p3, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    add-int/2addr p2, v3

    return p2

    :cond_2
    neg-int p1, p2

    return p1
.end method

.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 2865
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 30

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    .line 2336
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    const/4 v14, 0x0

    move-object/from16 v1, p2

    if-eq v1, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2340
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2341
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 2342
    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 2344
    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    move-object v11, v0

    move-object v10, v1

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object v15, v1

    move-object v10, v14

    move-object v11, v10

    .line 2347
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    const/4 v8, 0x0

    if-gez v9, :cond_1

    .line 2349
    invoke-virtual {v13, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 2357
    :cond_1
    new-instance v7, Lcom/ibm/icu/util/Output;

    invoke-direct {v7, v14}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 2359
    new-instance v6, Lcom/ibm/icu/util/Output;

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v6, v0}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    new-array v4, v5, [Z

    aput-boolean v8, v4, v8

    .line 2370
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 2371
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    move-object/from16 v16, v0

    goto :goto_1

    :cond_2
    move-object/from16 v16, v14

    .line 2374
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, -0x1

    move v0, v9

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 2376
    :goto_2
    array-length v8, v3

    if-ge v1, v8, :cond_15

    .line 2377
    aget-object v8, v3, v1

    instance-of v8, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v8, :cond_12

    .line 2379
    aget-object v8, v3, v1

    check-cast v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 2380
    iget-boolean v14, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v14, :cond_3

    if-ne v5, v2, :cond_3

    add-int/lit8 v14, v1, 0x1

    .line 2390
    array-length v2, v3

    if-ge v14, v2, :cond_3

    aget-object v2, v3, v14

    instance-of v2, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_3

    aget-object v2, v3, v14

    check-cast v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v2, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v2, :cond_3

    .line 2395
    iget v2, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    move/from16 v18, v0

    move v14, v1

    move/from16 v17, v2

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    const/4 v2, -0x1

    if-eq v14, v2, :cond_8

    .line 2402
    iget v5, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    if-ne v14, v1, :cond_4

    move/from16 v5, v17

    .line 2408
    :cond_4
    iget-char v8, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v24, v1

    move-object/from16 v1, p1

    const/16 v25, -0x1

    move/from16 v2, v23

    move-object/from16 v26, v3

    move v3, v8

    move-object/from16 v27, v4

    move v4, v5

    const/4 v8, 0x1

    move/from16 v5, v21

    move-object/from16 p2, v6

    move/from16 v6, v22

    move-object/from16 v21, v7

    move-object/from16 v7, v27

    move-object v8, v15

    move/from16 v28, v9

    move-object/from16 v9, v16

    move/from16 v19, v14

    move-object v14, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I

    move-result v0

    if-gez v0, :cond_7

    add-int/lit8 v17, v17, -0x1

    if-nez v17, :cond_6

    move/from16 v10, v28

    .line 2418
    invoke-virtual {v13, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2419
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v11, :cond_5

    .line 2421
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v11}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v6, p2

    move-object v10, v14

    move/from16 v0, v18

    move/from16 v1, v19

    move v5, v1

    move-object/from16 v7, v21

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v9, v28

    const/4 v2, -0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v22, v14

    move/from16 v1, v24

    move-object/from16 v6, v26

    move/from16 v7, v28

    move-object v14, v11

    goto/16 :goto_8

    :cond_8
    move/from16 v23, v0

    move/from16 v24, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move/from16 v19, v14

    const/16 v25, -0x1

    move-object v14, v10

    move v10, v9

    .line 2430
    iget-char v0, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_11

    .line 2435
    iget-char v3, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v7, v27

    move-object v8, v15

    move-object/from16 v9, v16

    move/from16 v29, v10

    move-object/from16 v10, p2

    move-object/from16 v22, v14

    move-object v14, v11

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v0

    if-gez v0, :cond_10

    const/16 v1, -0x7d00

    if-ne v0, v1, :cond_e

    add-int/lit8 v1, v24, 0x1

    move-object/from16 v6, v26

    .line 2443
    array-length v0, v6

    if-ge v1, v0, :cond_d

    .line 2448
    :try_start_0
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_9

    .line 2460
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    .line 2461
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_a

    .line 2468
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2469
    invoke-static {v4}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    if-ne v3, v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v1, v24

    :goto_5
    move/from16 v0, v23

    move/from16 v7, v29

    goto :goto_7

    :catch_0
    move/from16 v7, v29

    .line 2450
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    move/from16 v9, v23

    .line 2451
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_c

    .line 2453
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_c
    return-void

    :cond_d
    move/from16 v9, v23

    move/from16 v7, v29

    move v0, v9

    goto :goto_6

    :cond_e
    move/from16 v9, v23

    move/from16 v7, v29

    .line 2482
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2483
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_f

    .line 2485
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_f
    return-void

    :cond_10
    move-object/from16 v6, v26

    move/from16 v7, v29

    :goto_6
    move/from16 v1, v24

    :goto_7
    const/16 v19, -0x1

    goto :goto_8

    :cond_11
    move v7, v10

    move-object/from16 v22, v14

    move/from16 v9, v23

    move-object/from16 v6, v26

    move-object v14, v11

    move v0, v9

    move/from16 v1, v24

    :goto_8
    move/from16 v24, v1

    move/from16 v5, v19

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_9

    :cond_12
    move/from16 v24, v1

    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move v7, v9

    move-object/from16 v22, v10

    move-object v14, v11

    const/4 v8, 0x1

    const/16 v25, -0x1

    move v9, v0

    move-object v6, v3

    new-array v10, v8, [Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move/from16 v4, v24

    move-object v5, v10

    .line 2496
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    move-result v0

    const/4 v1, 0x0

    .line 2497
    aget-boolean v2, v10, v1

    if-nez v2, :cond_14

    .line 2499
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2500
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_13

    .line 2502
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_13
    return-void

    :cond_14
    const/4 v5, -0x1

    :goto_9
    add-int/lit8 v2, v24, 0x1

    move v1, v2

    move-object v3, v6

    move v9, v7

    move-object v11, v14

    move-object/from16 v7, v21

    move-object/from16 v10, v22

    move-object/from16 v4, v27

    const/4 v2, -0x1

    const/4 v14, 0x0

    move-object/from16 v6, p2

    goto/16 :goto_2

    :cond_15
    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move v7, v9

    move-object/from16 v22, v10

    move-object v14, v11

    const/4 v1, 0x0

    const/4 v8, 0x1

    move v9, v0

    move-object v6, v3

    .line 2511
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_16

    move-object/from16 v0, p1

    .line 2512
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_16

    .line 2513
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_16

    array-length v0, v6

    if-eqz v0, :cond_16

    .line 2515
    array-length v0, v6

    sub-int/2addr v0, v8

    aget-object v0, v6, v0

    .line 2516
    instance-of v2, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_16

    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v0, :cond_16

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    :cond_16
    move-object/from16 v0, v21

    .line 2523
    iget-object v2, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    .line 2524
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;

    move-result-object v2

    const/16 v3, 0xa

    .line 2526
    invoke-virtual {v15, v3}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v4

    const/16 v5, 0xc

    const/16 v6, 0xb

    if-nez v4, :cond_18

    invoke-virtual {v15, v6}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2529
    iget-object v0, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v10, v0

    sub-double/2addr v2, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v2, v10

    if-lez v4, :cond_17

    const/16 v2, 0x1e

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 2537
    :goto_a
    invoke-virtual {v15, v6, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2538
    invoke-virtual {v15, v5, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_d

    .line 2542
    :cond_18
    invoke-virtual {v15, v6}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2543
    invoke-virtual {v15, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_b

    .line 2545
    :cond_19
    invoke-virtual {v15, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_1a

    const/16 v3, 0xc

    :cond_1a
    :goto_b
    if-eqz v3, :cond_1e

    const/16 v4, 0xd

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x17

    if-gt v3, v4, :cond_1b

    goto :goto_c

    :cond_1b
    if-ne v3, v5, :cond_1c

    const/4 v3, 0x0

    :cond_1c
    int-to-double v3, v3

    .line 2570
    invoke-virtual {v15, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v10

    add-double/2addr v3, v5

    .line 2571
    iget-object v0, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, -0x3fe8000000000000L    # -6.0

    const/16 v0, 0x9

    cmpg-double v2, v5, v3

    if-gtz v2, :cond_1d

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    cmpg-double v2, v3, v5

    if-gez v2, :cond_1d

    .line 2578
    invoke-virtual {v15, v0, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_d

    .line 2580
    :cond_1d
    invoke-virtual {v15, v0, v8}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_d

    .line 2556
    :cond_1e
    :goto_c
    invoke-virtual {v15, v6, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2590
    :cond_1f
    :goto_d
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    .line 2615
    :try_start_1
    iget-object v0, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 2616
    aget-boolean v2, v27, v1

    if-nez v2, :cond_20

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v2, :cond_34

    .line 2622
    :cond_20
    aget-boolean v2, v27, v1

    if-eqz v2, :cond_21

    .line 2623
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Calendar;

    .line 2624
    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 2625
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2627
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {v15, v8, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2630
    :cond_21
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v2, :cond_34

    .line 2631
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Calendar;

    .line 2632
    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v3

    .line 2634
    instance-of v4, v3, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v4, :cond_22

    .line 2635
    move-object v4, v3

    check-cast v4, Lcom/ibm/icu/util/BasicTimeZone;

    goto :goto_e

    :cond_22
    const/4 v4, 0x0

    :goto_e
    const/16 v5, 0xf

    .line 2639
    invoke-virtual {v2, v5, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 v6, 0x10

    .line 2640
    invoke-virtual {v2, v6, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2641
    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const/4 v2, 0x2

    new-array v2, v2, [I

    if-eqz v4, :cond_24

    .line 2647
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_23

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, v4

    move-wide/from16 v17, v10

    move-object/from16 v21, v2

    .line 2648
    invoke-virtual/range {v16 .. v21}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_f

    :cond_23
    const/16 v19, 0x3

    const/16 v20, 0x3

    move-object/from16 v16, v4

    move-wide/from16 v17, v10

    move-object/from16 v21, v2

    .line 2651
    invoke-virtual/range {v16 .. v21}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_f

    .line 2657
    :cond_24
    invoke-virtual {v3, v10, v11, v8, v2}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2659
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_25

    aget v6, v2, v8

    if-nez v6, :cond_26

    :cond_25
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_27

    aget v6, v2, v8

    if-nez v6, :cond_27

    :cond_26
    const-wide/32 v16, 0x5265c00

    sub-long v5, v10, v16

    .line 2666
    invoke-virtual {v3, v5, v6, v8, v2}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2672
    :cond_27
    :goto_f
    aget v5, v2, v8

    .line 2673
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_28

    .line 2674
    aget v0, v2, v8

    if-eqz v0, :cond_32

    const/4 v8, 0x0

    goto/16 :goto_15

    .line 2679
    :cond_28
    aget v0, v2, v8

    if-nez v0, :cond_32

    if-eqz v4, :cond_30

    .line 2681
    aget v0, v2, v1

    int-to-long v5, v0

    add-long/2addr v10, v5

    move-wide v5, v10

    const/4 v0, 0x0

    .line 2689
    :cond_29
    invoke-virtual {v4, v5, v6, v8}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v3

    if-nez v3, :cond_2a

    :goto_10
    move-wide/from16 v16, v5

    move-wide v5, v10

    const/4 v8, 0x0

    goto :goto_11

    .line 2693
    :cond_2a
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    const-wide/16 v16, 0x1

    sub-long v5, v5, v16

    .line 2694
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_10

    .line 2702
    :cond_2b
    :goto_11
    invoke-virtual {v4, v5, v6, v1}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v18

    if-nez v18, :cond_2c

    goto :goto_12

    .line 2706
    :cond_2c
    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    .line 2707
    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_2b

    :goto_12
    if-eqz v3, :cond_2d

    if-eqz v18, :cond_2d

    sub-long v3, v10, v16

    sub-long/2addr v5, v10

    cmp-long v10, v3, v5

    if-lez v10, :cond_31

    goto :goto_13

    :cond_2d
    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2e

    goto :goto_14

    :cond_2e
    if-eqz v18, :cond_2f

    if-eqz v8, :cond_2f

    :goto_13
    move v0, v8

    goto :goto_14

    .line 2724
    :cond_2f
    invoke-virtual {v4}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    goto :goto_14

    .line 2727
    :cond_30
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I

    move-result v0

    :cond_31
    :goto_14
    move v8, v0

    if-nez v8, :cond_33

    const v8, 0x36ee80

    goto :goto_15

    :cond_32
    move v8, v5

    .line 2735
    :cond_33
    :goto_15
    aget v0, v2, v1

    const/16 v1, 0xf

    invoke-virtual {v15, v1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 v0, 0x10

    .line 2736
    invoke-virtual {v15, v0, v8}, Lcom/ibm/icu/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_34
    if-eqz v22, :cond_35

    .line 2753
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 2754
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_35
    if-eqz v14, :cond_36

    .line 2758
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_36
    return-void

    :catch_1
    nop

    .line 2743
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2744
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v14, :cond_37

    .line 2746
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_37
    return-void
.end method

.method protected patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;
    .locals 1

    .line 1494
    invoke-static {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1496
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 1

    .line 1300
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 1301
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 1304
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    :cond_1
    return-void
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
    .locals 1

    .line 2221
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V

    .line 2222
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    const/4 p1, 0x1

    .line 2223
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 2225
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2226
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 2228
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 2229
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method protected subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1535
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1536
    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    .line 1537
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    move/from16 v4, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v8, p8

    .line 1561
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 1562
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 1563
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1566
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v15

    const/16 v5, 0x22

    const/4 v6, -0x1

    if-ne v15, v6, :cond_1

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    return-void

    .line 1571
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' in \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1577
    :cond_1
    sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v7, v7, v15

    move-wide/from16 v16, v2

    if-ltz v7, :cond_3

    if-eq v15, v5, :cond_2

    .line 1581
    invoke-virtual {v8, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getRelatedYear()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1584
    :goto_0
    invoke-virtual {v9, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v5

    .line 1585
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const/16 v0, 0xd

    const/16 v6, 0xc

    const/16 v19, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x3

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 2023
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_23

    .line 2007
    :pswitch_1
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v6, 0x1

    :goto_2
    const/4 v11, 0x2

    :cond_4
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_23

    .line 1927
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/DayPeriodRules;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;

    move-result-object v1

    if-nez v1, :cond_5

    const/16 v3, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x3

    move v2, v3

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1931
    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto :goto_1

    :cond_5
    const/16 v2, 0xb

    const/4 v11, 0x3

    .line 1936
    invoke-virtual {v8, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1939
    iget-boolean v3, v9, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v3, :cond_6

    invoke-virtual {v8, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 1940
    :goto_4
    iget-boolean v5, v9, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v5, :cond_7

    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-nez v2, :cond_8

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    .line 1944
    invoke-virtual {v1}, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1945
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_6

    :cond_8
    if-ne v2, v6, :cond_9

    if-nez v3, :cond_9

    if-nez v0, :cond_9

    .line 1946
    invoke-virtual {v1}, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1947
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_6

    .line 1949
    :cond_9
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    .line 1961
    :goto_6
    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    .line 1963
    invoke-virtual {v0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v3

    if-gt v4, v11, :cond_a

    .line 1965
    iget-object v5, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    goto :goto_8

    :cond_a
    if-eq v4, v7, :cond_c

    const/4 v5, 0x5

    if-le v4, v5, :cond_b

    goto :goto_7

    .line 1969
    :cond_b
    iget-object v5, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    goto :goto_8

    .line 1967
    :cond_c
    :goto_7
    iget-object v5, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    :cond_d
    :goto_8
    if-nez v19, :cond_12

    .line 1978
    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_e

    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v0, v3, :cond_12

    .line 1981
    :cond_e
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    .line 1982
    invoke-virtual {v0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v1

    if-gt v4, v11, :cond_f

    .line 1985
    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    goto :goto_a

    :cond_f
    if-eq v4, v7, :cond_11

    const/4 v2, 0x5

    if-le v4, v2, :cond_10

    goto :goto_9

    .line 1989
    :cond_10
    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    goto :goto_a

    .line 1987
    :cond_11
    :goto_9
    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    :cond_12
    :goto_a
    move-object/from16 v1, v19

    .line 1994
    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v2, :cond_14

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v2, :cond_14

    if-nez v1, :cond_13

    goto :goto_b

    .line 2000
    :cond_13
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_14
    :goto_b
    const/16 v2, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1997
    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0xb

    const/4 v11, 0x3

    .line 1890
    invoke-virtual {v8, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v6, :cond_1a

    .line 1896
    iget-boolean v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v1, :cond_15

    .line 1897
    invoke-virtual {v8, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1a

    :cond_15
    iget-boolean v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v1, :cond_16

    .line 1898
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1a

    :cond_16
    const/16 v0, 0x9

    .line 1902
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v4, v11, :cond_17

    .line 1905
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    goto :goto_d

    :cond_17
    if-eq v4, v7, :cond_19

    const/4 v1, 0x5

    if-le v4, v1, :cond_18

    goto :goto_c

    .line 1909
    :cond_18
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    goto :goto_d

    .line 1907
    :cond_19
    :goto_c
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    :cond_1a
    :goto_d
    move-object/from16 v0, v19

    if-nez v0, :cond_1b

    const/16 v2, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1916
    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto/16 :goto_1

    .line 1918
    :cond_1b
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4
    const/4 v6, 0x1

    const/4 v11, 0x3

    if-ne v4, v6, :cond_1c

    .line 1828
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-wide/from16 v3, v16

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    const/4 v8, 0x2

    goto :goto_f

    :cond_1c
    move-wide/from16 v2, v16

    const/4 v8, 0x2

    if-ne v4, v8, :cond_1e

    .line 1831
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_1d
    :goto_e
    move-object/from16 v0, v19

    goto :goto_f

    :cond_1e
    if-ne v4, v11, :cond_1f

    .line 1834
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    :cond_1f
    if-ne v4, v7, :cond_20

    .line 1837
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    :cond_20
    const/4 v0, 0x5

    if-ne v4, v0, :cond_1d

    .line 1840
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    .line 1842
    :goto_f
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_5
    move-wide/from16 v2, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    if-ne v4, v6, :cond_22

    .line 1809
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_21
    :goto_10
    move-object/from16 v0, v19

    goto :goto_11

    :cond_22
    if-ne v4, v8, :cond_23

    .line 1812
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    :cond_23
    if-ne v4, v11, :cond_24

    .line 1815
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    :cond_24
    if-ne v4, v7, :cond_25

    .line 1818
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    :cond_25
    const/4 v0, 0x5

    if-ne v4, v0, :cond_21

    .line 1821
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    .line 1823
    :goto_11
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_6
    move-wide/from16 v2, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    if-ne v4, v6, :cond_26

    .line 1799
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_12

    :cond_26
    if-ne v4, v7, :cond_27

    .line 1802
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_27
    :goto_12
    move-object/from16 v0, v19

    .line 1804
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_7
    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    .line 1606
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v0, v0

    if-gt v3, v0, :cond_53

    .line 1607
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    sub-int/2addr v3, v6

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :pswitch_8
    move-wide/from16 v11, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    if-ne v4, v6, :cond_29

    .line 1782
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_28
    :goto_13
    move-object/from16 v0, v19

    goto :goto_14

    :cond_29
    if-ne v4, v8, :cond_2a

    .line 1785
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_13

    :cond_2a
    const/4 v0, 0x3

    if-ne v4, v0, :cond_2b

    .line 1788
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_13

    :cond_2b
    if-ne v4, v7, :cond_28

    .line 1791
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1792
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_13

    .line 1794
    :goto_14
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_18

    :pswitch_9
    const/4 v6, 0x1

    const/4 v8, 0x2

    if-lt v4, v7, :cond_2c

    .line 1878
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const/4 v1, 0x3

    div-int/2addr v3, v1

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :cond_2c
    const/4 v1, 0x3

    if-ne v4, v1, :cond_2d

    .line 1880
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    div-int/2addr v3, v1

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1882
    :cond_2d
    div-int/2addr v3, v1

    add-int/2addr v3, v6

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :pswitch_a
    const/4 v6, 0x1

    const/4 v8, 0x2

    if-lt v4, v7, :cond_2e

    .line 1869
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const/4 v11, 0x3

    div-int/2addr v3, v11

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :cond_2e
    const/4 v11, 0x3

    if-ne v4, v11, :cond_2f

    .line 1871
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    div-int/2addr v3, v11

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1873
    :cond_2f
    div-int/2addr v3, v11

    add-int/2addr v3, v6

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :pswitch_b
    const/4 v6, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ge v4, v11, :cond_30

    const/4 v4, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v5, v7

    .line 1847
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_30
    const/4 v0, 0x7

    .line 1852
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v4, v1, :cond_31

    .line 1854
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1855
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_31
    if-ne v4, v7, :cond_32

    .line 1857
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1858
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_32
    const/4 v1, 0x6

    if-ne v4, v1, :cond_33

    .line 1859
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 1860
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1861
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    .line 1863
    :cond_33
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1864
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :pswitch_c
    move-wide/from16 v11, v16

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_34

    .line 1770
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1771
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_15

    :cond_34
    if-ne v4, v7, :cond_35

    .line 1774
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1775
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :cond_35
    :goto_15
    move-object/from16 v0, v19

    .line 1777
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_18

    :pswitch_d
    move-wide/from16 v11, v16

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ge v4, v7, :cond_36

    .line 1757
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_36
    const/4 v0, 0x5

    if-ne v4, v0, :cond_37

    .line 1760
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1763
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1765
    :goto_16
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_e
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ge v4, v0, :cond_38

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    const/4 v11, 0x2

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1703
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_3

    :cond_38
    const/4 v0, 0x7

    const/4 v11, 0x2

    .line 1708
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    goto/16 :goto_1a

    :pswitch_f
    move-wide/from16 v11, v16

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ge v4, v7, :cond_39

    .line 1746
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1747
    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_17

    .line 1749
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1750
    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_17
    move-object/from16 v18, v1

    .line 1752
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_18
    move-object/from16 v0, v18

    const/4 v11, 0x2

    goto :goto_1c

    :pswitch_10
    const/4 v2, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_3a

    const/16 v0, 0xa

    .line 1736
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    const/4 v11, 0x2

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1735
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_3

    :cond_3a
    const/4 v11, 0x2

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1739
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_3

    :pswitch_11
    const/4 v0, 0x5

    const/4 v6, 0x1

    const/4 v11, 0x2

    if-lt v4, v0, :cond_3c

    .line 1727
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-nez v0, :cond_3b

    goto :goto_19

    .line 1730
    :cond_3b
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_3

    .line 1728
    :cond_3c
    :goto_19
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_3

    :pswitch_12
    const/4 v6, 0x1

    const/4 v11, 0x2

    :goto_1a
    const/4 v0, 0x5

    if-ne v4, v0, :cond_3d

    .line 1712
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1713
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_1b
    move-object/from16 v0, v18

    :goto_1c
    const/4 v12, 0x0

    goto/16 :goto_24

    :cond_3d
    if-ne v4, v7, :cond_3e

    .line 1715
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1716
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1b

    :cond_3e
    const/4 v0, 0x6

    if-ne v4, v0, :cond_3f

    .line 1717
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 1718
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1719
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1b

    .line 1721
    :cond_3f
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1722
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1b

    :pswitch_13
    const/4 v6, 0x1

    const/4 v11, 0x2

    .line 1686
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const/4 v1, 0x3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1687
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    if-ne v4, v6, :cond_40

    .line 1689
    div-int/lit8 v3, v3, 0x64

    goto :goto_1d

    :cond_40
    if-ne v4, v11, :cond_41

    .line 1691
    div-int/lit8 v3, v3, 0xa

    .line 1693
    :cond_41
    :goto_1d
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1694
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3, v10, v0}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    if-le v4, v1, :cond_4

    .line 1696
    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    add-int/lit8 v3, v4, -0x3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1697
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v10, v0}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :pswitch_14
    const/4 v6, 0x1

    const/4 v11, 0x2

    if-nez v3, :cond_42

    const/16 v0, 0xb

    .line 1677
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1676
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_3

    :cond_42
    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1680
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v6, 0x1

    const/4 v11, 0x2

    .line 1631
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hebrew"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1632
    invoke-virtual {v8, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v12, 0x3

    if-eqz v1, :cond_43

    if-ne v3, v2, :cond_43

    if-lt v4, v12, :cond_43

    const/16 v3, 0xd

    :cond_43
    if-nez v1, :cond_44

    if-lt v3, v2, :cond_44

    if-ge v4, v12, :cond_44

    add-int/lit8 v3, v3, -0x1

    .line 1640
    :cond_44
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_45

    const/16 v0, 0x16

    .line 1641
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    move v8, v2

    const/4 v0, 0x5

    goto :goto_1e

    :cond_45
    const/4 v0, 0x5

    const/4 v8, 0x0

    :goto_1e
    if-ne v4, v0, :cond_49

    if-ne v15, v11, :cond_47

    .line 1645
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    if-eqz v8, :cond_46

    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v11

    :cond_46
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1f

    .line 1647
    :cond_47
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    if-eqz v8, :cond_48

    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v19, v1, v2

    :cond_48
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1649
    :goto_1f
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1b

    :cond_49
    if-ne v4, v7, :cond_4d

    if-ne v15, v11, :cond_4b

    .line 1652
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v8, :cond_4a

    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v19, v1, v12

    goto :goto_20

    :cond_4a
    const/4 v12, 0x0

    :goto_20
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1653
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_23

    :cond_4b
    const/4 v12, 0x0

    .line 1655
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v8, :cond_4c

    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v19, v1, v2

    goto :goto_21

    :cond_4c
    const/4 v2, 0x3

    :goto_21
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1656
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_23

    :cond_4d
    const/4 v2, 0x3

    const/4 v12, 0x0

    if-ne v4, v2, :cond_51

    if-ne v15, v11, :cond_4f

    .line 1660
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_4e

    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v6

    :cond_4e
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1661
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_23

    .line 1663
    :cond_4f
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_50

    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v7

    :cond_50
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1664
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_23

    .line 1667
    :cond_51
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v3, v6

    const v17, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v4, p3

    move/from16 v5, v17

    .line 1668
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    new-array v0, v6, [Ljava/lang/String;

    .line 1670
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    if-eqz v8, :cond_52

    .line 1671
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v19, v1, v2

    :cond_52
    move-object/from16 v1, v19

    invoke-static {v0, v12, v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_16
    const/4 v6, 0x1

    :cond_53
    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 1613
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_55

    const-string v1, "hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v1, "y=hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_55

    :cond_54
    const/16 v0, 0x1388

    if-le v3, v0, :cond_55

    const/16 v0, 0x1770

    if-ge v3, v0, :cond_55

    add-int/lit16 v3, v3, -0x1388

    :cond_55
    if-ne v4, v11, :cond_56

    const/4 v4, 0x2

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v5, v7

    .line 1624
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_23

    :cond_56
    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1626
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_23

    :pswitch_17
    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 1589
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dangi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_22

    :cond_57
    const/4 v0, 0x5

    if-ne v4, v0, :cond_58

    .line 1594
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1595
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_23

    :cond_58
    if-ne v4, v7, :cond_59

    .line 1597
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1598
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_23

    .line 1600
    :cond_59
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1601
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_23

    :cond_5a
    :goto_22
    const/4 v4, 0x1

    const/16 v7, 0x9

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v5, v7

    .line 1591
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    :goto_23
    move-object/from16 v0, v18

    :goto_24
    if-nez p5, :cond_60

    move-object/from16 v1, p6

    if-eqz v1, :cond_60

    .line 2027
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2029
    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_5d

    if-eq v2, v11, :cond_5b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5b

    goto :goto_26

    .line 2035
    :cond_5b
    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    if-eqz v2, :cond_5e

    .line 2036
    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 2037
    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne v1, v2, :cond_5c

    aget-boolean v0, v0, v12

    goto :goto_25

    :cond_5c
    aget-boolean v0, v0, v6

    :goto_25
    move v2, v0

    move v12, v2

    goto :goto_26

    :cond_5d
    const/4 v12, 0x1

    :cond_5e
    :goto_26
    if-eqz v12, :cond_60

    .line 2045
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_5f

    .line 2047
    iget-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, v9, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 2049
    :cond_5f
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2050
    iget-object v1, v9, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v2, v9, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v1, v0, v2, v3}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    .line 2052
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v10, v14, v1, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2057
    :cond_60
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-ne v0, v1, :cond_62

    .line 2058
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v1, v1, v15

    if-ne v0, v1, :cond_61

    move/from16 v0, p4

    .line 2059
    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2060
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_27

    :cond_61
    move/from16 v0, p4

    .line 2061
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v2, v2, v15

    if-ne v1, v2, :cond_62

    .line 2063
    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2064
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_62
    :goto_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 3829
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2202
    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    .line 2203
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ibm/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    goto :goto_0

    .line 2205
    :cond_0
    invoke-virtual {p1, p4}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2206
    invoke-virtual {p1, p5}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    int-to-long p3, p3

    .line 2207
    new-instance p5, Ljava/text/FieldPosition;

    const/4 v0, -0x1

    invoke-direct {p5, v0}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method
