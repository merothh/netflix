.class public Lcom/ibm/icu/util/IslamicCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/IslamicCalendar$CalculationType;
    }
.end annotation


# static fields
.field private static final LIMITS:[[I

.field private static final UMALQURA_MONTHLENGTH:[I

.field private static final UMALQURA_YEAR_START_ESTIMATE_FIX:[B

.field private static astro:Lcom/ibm/icu/impl/CalendarAstronomer; = null

.field private static cache:Lcom/ibm/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x56c86ac454dd7c0dL


# instance fields
.field private cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

.field private civil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 373
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/util/IslamicCalendar;->LIMITS:[[I

    const/16 v0, 0x12d

    new-array v1, v0, [I

    .line 403
    fill-array-data v1, :array_9

    sput-object v1, Lcom/ibm/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    new-array v0, v0, [B

    .line 523
    fill-array-data v0, :array_a

    sput-object v0, Lcom/ibm/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    .line 708
    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/IslamicCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 710
    new-instance v0, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/IslamicCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x32
        0x33
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1d
        0x1e
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x162
        0x163
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_9
    .array-data 4
        0xaaa
        0xd54
        0xec9
        0x6d4
        0x6ea
        0x36c
        0xaad
        0x555
        0x6a9
        0x792
        0xba9
        0x5d4
        0xada
        0x55c
        0xd2d
        0x695
        0x74a
        0xb54
        0xb6a
        0x5ad
        0x4ae
        0xa4f
        0x517
        0x68b
        0x6a5
        0xad5
        0x2d6
        0x95b
        0x49d
        0xa4d
        0xd26
        0xd95
        0x5ac
        0x9b6
        0x2ba
        0xa5b
        0x52b
        0xa95
        0x6ca
        0xae9
        0x2f4
        0x976
        0x2b6
        0x956
        0xaca
        0xba4
        0xbd2
        0x5d9
        0x2dc
        0x96d
        0x54d
        0xaa5
        0xb52
        0xba5
        0x5b4
        0x9b6
        0x557
        0x297
        0x54b
        0x6a3
        0x752
        0xb65
        0x56a
        0xaab
        0x52b
        0xc95
        0xd4a
        0xda5
        0x5ca
        0xad6
        0x957
        0x4ab
        0x94b
        0xaa5
        0xb52
        0xb6a
        0x575
        0x276
        0x8b7
        0x45b
        0x555
        0x5a9
        0x5b4
        0x9da
        0x4dd
        0x26e
        0x936
        0xaaa
        0xd54
        0xdb2
        0x5d5
        0x2da
        0x95b
        0x4ab
        0xa55
        0xb49
        0xb64
        0xb71
        0x5b4
        0xab5
        0xa55
        0xd25
        0xe92
        0xec9
        0x6d4
        0xae9
        0x96b
        0x4ab
        0xa93
        0xd49
        0xda4
        0xdb2
        0xab9
        0x4ba
        0xa5b
        0x52b
        0xa95
        0xb2a
        0xb55
        0x55c
        0x4bd
        0x23d
        0x91d
        0xa95
        0xb4a
        0xb5a
        0x56d
        0x2b6
        0x93b
        0x49b
        0x655
        0x6a9
        0x754
        0xb6a
        0x56c
        0xaad
        0x555
        0xb29
        0xb92
        0xba9
        0x5d4
        0xada
        0x55a
        0xaab
        0x595
        0x749
        0x764
        0xbaa
        0x5b5
        0x2b6
        0xa56
        0xe4d
        0xb25
        0xb52
        0xb6a
        0x5ad
        0x2ae
        0x92f
        0x497
        0x64b
        0x6a5
        0x6ac
        0xad6
        0x55d
        0x49d
        0xa4d
        0xd16
        0xd95
        0x5aa
        0x5b5
        0x2da
        0x95b
        0x4ad
        0x595
        0x6ca
        0x6e4
        0xaea
        0x4f5
        0x2b6
        0x956
        0xaaa
        0xb54
        0xbd2
        0x5d9
        0x2ea
        0x96d
        0x4ad
        0xa95
        0xb4a
        0xba5
        0x5b2
        0x9b5
        0x4d6
        0xa97
        0x547
        0x693
        0x749
        0xb55
        0x56a
        0xa6b
        0x52b
        0xa8b
        0xd46
        0xda3
        0x5ca
        0xad6
        0x4db
        0x26b
        0x94b
        0xaa5
        0xb52
        0xb69
        0x575
        0x176
        0x8b7
        0x25b
        0x52b
        0x565
        0x5b4
        0x9da
        0x4ed
        0x16d
        0x8b6
        0xaa6
        0xd52
        0xda9
        0x5d4
        0xada
        0x95b
        0x4ab
        0x653
        0x729
        0x762
        0xba9
        0x5b2
        0xab5
        0x555
        0xb25
        0xd92
        0xec9
        0x6d2
        0xae9
        0x56b
        0x4ab
        0xa55
        0xd29
        0xd54
        0xdaa
        0x9b5
        0x4ba
        0xa3b
        0x49b
        0xa4d
        0xaaa
        0xad5
        0x2da
        0x95d
        0x45e
        0xa2e
        0xc9a
        0xd55
        0x6b2
        0x6b9
        0x4ba
        0xa5d
        0x52d
        0xa95
        0xb52
        0xba8
        0xbb4
        0x5b9
        0x2da
        0x95a
        0xb4a
        0xda4
        0xed1
        0x6e8
        0xb6a
        0x56d
        0x535
        0x695
        0xd4a
        0xda8
        0xdd4
        0x6da
        0x55b
        0x29d
        0x62b
        0xb15
        0xb4a
        0xb95
        0x5aa
        0xaae
        0x92e
        0xc8f
        0x527
        0x695
        0x6aa
        0xad6
        0x55d
        0x29d
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 194
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const/4 p1, 0x1

    .line 719
    iput-boolean p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->civil:Z

    .line 727
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    iput-object p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    .line 257
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/IslamicCalendar;->setCalcTypeForLocale(Lcom/ibm/icu/util/ULocale;)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method private static final civilLeapYear(I)Z
    .locals 1

    const/16 v0, 0xb

    mul-int/lit8 p0, p0, 0xb

    add-int/lit8 p0, p0, 0xe

    .line 580
    rem-int/lit8 p0, p0, 0x1e

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private monthStart(II)J
    .locals 5

    .line 615
    div-int/lit8 v0, p2, 0xc

    add-int/2addr v0, p1

    .line 616
    rem-int/lit8 v1, p2, 0xc

    .line 618
    iget-object v2, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x514

    if-ge p1, v2, :cond_0

    goto :goto_1

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    int-to-long p1, v0

    .line 624
    invoke-static {p1, p2}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p1

    goto :goto_2

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_3

    .line 626
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 628
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-wide p1, v0

    goto :goto_2

    :cond_3
    const-wide/16 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const-wide p1, 0x403d800000000000L    # 29.5

    int-to-double v1, v1

    mul-double v1, v1, p1

    .line 621
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    add-int/lit8 v1, v0, -0x1

    mul-int/lit16 v1, v1, 0x162

    int-to-long v1, v1

    add-long/2addr p1, v1

    mul-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    .line 622
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    add-long/2addr p1, v0

    :goto_2
    return-wide p1
.end method

.method static final moonAge(J)D
    .locals 4

    .line 690
    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    monitor-enter v0

    .line 691
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {v1, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 692
    sget-object p0, Lcom/ibm/icu/util/IslamicCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide p0

    .line 693
    monitor-exit v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v2

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    sub-double/2addr p0, v0

    :cond_0
    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1022
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1024
    iget-object p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-nez p1, :cond_1

    .line 1027
    iget-boolean p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->civil:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    :goto_0
    iput-object p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    goto :goto_2

    .line 1030
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->civil:Z

    :goto_2
    return-void
.end method

.method private setCalcTypeForLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 992
    invoke-static {p1}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "islamic-civil"

    .line 993
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IslamicCalendar;->setCalculationType(Lcom/ibm/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_0
    const-string v0, "islamic-umalqura"

    .line 995
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IslamicCalendar;->setCalculationType(Lcom/ibm/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_1
    const-string v0, "islamic-tbla"

    .line 997
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 998
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IslamicCalendar;->setCalculationType(Lcom/ibm/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_2
    const-string v0, "islamic"

    .line 999
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1000
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IslamicCalendar;->setCalculationType(Lcom/ibm/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    .line 1002
    :cond_3
    sget-object p1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IslamicCalendar;->setCalculationType(Lcom/ibm/icu/util/IslamicCalendar$CalculationType;)V

    :goto_0
    return-void
.end method

.method private static final trueMonthStart(J)J
    .locals 11

    .line 645
    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 647
    sget-wide v2, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    long-to-double v0, p0

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double v0, v0, v2

    .line 651
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    const-wide v4, -0x26ac5419b000L

    add-long/2addr v0, v4

    .line 653
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->moonAge(J)D

    .line 655
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_1

    :cond_0
    sub-long/2addr v0, v2

    .line 659
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    cmpl-double v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_0

    :cond_1
    add-long/2addr v0, v2

    .line 666
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    cmpg-double v10, v6, v8

    if-ltz v10, :cond_1

    :goto_0
    sub-long/2addr v0, v4

    .line 670
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 672
    sget-object v2, Lcom/ibm/icu/util/IslamicCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    :cond_2
    return-wide v0
.end method

.method private yearStart(I)J
    .locals 6

    .line 589
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x514

    if-lt p1, v0, :cond_3

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    .line 594
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v0

    goto :goto_1

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_2

    add-int/lit16 p1, p1, -0x514

    const-wide v0, 0x407625e00d1b7176L    # 354.3672

    int-to-double v2, p1

    mul-double v2, v2, v0

    const-wide v0, 0x411c188833333333L    # 460322.05

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    double-to-int v0, v2

    .line 600
    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    aget-byte p1, v1, p1

    add-int/2addr v0, p1

    int-to-long v0, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v0, v0, 0x162

    int-to-long v0, v0

    mul-int/lit8 p1, p1, 0xb

    add-int/lit8 p1, p1, 0x3

    int-to-double v2, p1

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v4

    .line 592
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    :goto_1
    return-wide v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-nez v0, :cond_0

    const-string v0, "islamic"

    return-object v0

    .line 1018
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->bcpType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-wide/32 v3, 0x1dbb18

    sub-long v3, v1, v3

    .line 849
    iget-object v5, v0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    const-wide/16 v9, 0x1d

    const-wide v11, 0x40c4c38000000000L    # 10631.0

    const-wide/16 v13, 0x2996

    const-wide/16 v15, 0x1e

    const-wide/16 v17, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_a

    iget-object v5, v0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_0

    goto/16 :goto_3

    .line 857
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v2, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v2, :cond_3

    long-to-double v1, v3

    const-wide v5, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v1, v5

    .line 859
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v9, v1

    mul-double v9, v9, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v5

    .line 861
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    sub-long v5, v3, v5

    const-wide/16 v9, 0x19

    cmp-long v2, v5, v9

    if-ltz v2, :cond_1

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/IslamicCalendar;->internalGetTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ibm/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpl-double v2, v5, v9

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    int-to-long v5, v1

    .line 870
    invoke-static {v5, v6}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 875
    :cond_2
    div-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v8

    .line 876
    rem-int/lit8 v1, v1, 0xc

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    goto/16 :goto_4

    .line 877
    :cond_3
    iget-object v1, v0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v2, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v2, :cond_9

    const/16 v1, 0x514

    .line 878
    invoke-direct {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    mul-long v15, v15, v3

    add-long v1, v15, v13

    long-to-double v1, v1

    div-double/2addr v1, v11

    .line 881
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-long v5, v3, v9

    .line 882
    invoke-direct {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v9

    sub-long/2addr v5, v9

    long-to-double v5, v5

    const-wide v9, 0x403d800000000000L    # 29.5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/16 v5, 0xb

    .line 883
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_4

    :cond_4
    const/16 v1, 0x513

    move-wide/from16 v1, v17

    const/16 v5, 0x513

    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v6, v1, v9

    if-lez v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 889
    invoke-direct {v0, v5}, Lcom/ibm/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v1

    sub-long v1, v3, v1

    add-long v1, v1, v17

    .line 890
    invoke-virtual {v0, v5}, Lcom/ibm/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    move-result v6

    int-to-long v9, v6

    cmp-long v6, v1, v9

    if-nez v6, :cond_6

    const/16 v9, 0xb

    goto :goto_2

    .line 893
    :cond_6
    invoke-virtual {v0, v5}, Lcom/ibm/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    move-result v6

    int-to-long v9, v6

    cmp-long v6, v1, v9

    if-gez v6, :cond_5

    .line 894
    invoke-virtual {v0, v5, v7}, Lcom/ibm/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v6

    const/4 v9, 0x0

    :goto_1
    int-to-long v10, v6

    cmp-long v6, v1, v10

    if-lez v6, :cond_8

    sub-long/2addr v1, v10

    add-int/lit8 v9, v9, 0x1

    .line 899
    invoke-virtual {v0, v5, v9}, Lcom/ibm/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v6

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :cond_8
    :goto_2
    move v1, v5

    move v2, v9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_4

    .line 850
    :cond_a
    :goto_3
    iget-object v5, v0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_b

    const-wide/32 v3, 0x1dbb17

    sub-long v3, v1, v3

    .line 854
    :cond_b
    invoke-static {v3, v4}, Ljava/lang/Long;->signum(J)I

    mul-long v15, v15, v3

    add-long v1, v15, v13

    long-to-double v1, v1

    div-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-long v5, v3, v9

    .line 855
    invoke-direct {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v9

    sub-long/2addr v5, v9

    long-to-double v5, v5

    const-wide v9, 0x403d800000000000L    # 29.5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/16 v5, 0xb

    .line 856
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 910
    :goto_4
    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v5

    sub-long v5, v3, v5

    long-to-int v6, v5

    add-int/2addr v6, v8

    .line 913
    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v9

    sub-long/2addr v3, v9

    add-long v3, v3, v17

    long-to-int v4, v3

    .line 916
    invoke-virtual {v0, v7, v7}, Lcom/ibm/icu/util/IslamicCalendar;->internalSet(II)V

    .line 917
    invoke-virtual {v0, v8, v1}, Lcom/ibm/icu/util/IslamicCalendar;->internalSet(II)V

    const/16 v3, 0x13

    .line 918
    invoke-virtual {v0, v3, v1}, Lcom/ibm/icu/util/IslamicCalendar;->internalSet(II)V

    const/4 v1, 0x2

    .line 919
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/IslamicCalendar;->internalSet(II)V

    const/4 v1, 0x5

    .line 920
    invoke-virtual {v0, v1, v6}, Lcom/ibm/icu/util/IslamicCalendar;->internalSet(II)V

    const/4 v1, 0x6

    .line 921
    invoke-virtual {v0, v1, v4}, Lcom/ibm/icu/util/IslamicCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 2

    .line 806
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide p1

    iget-object p3, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne p3, v0, :cond_0

    const-wide/32 v0, 0x1dbb17

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1dbb18

    :goto_0
    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 819
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 820
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 822
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/IslamicCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .line 515
    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method protected handleGetMonthLength(II)I
    .locals 6

    .line 745
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    const/16 v2, 0xb

    const/16 v3, 0x1d

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    const/16 v4, 0x514

    if-ne v0, v1, :cond_0

    if-lt p1, v4, :cond_3

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1

    sub-int/2addr p1, v5

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x1

    int-to-long v0, p2

    .line 755
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v0

    int-to-long p1, p1

    invoke-static {p1, p2}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int v3, v0

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v4

    sub-int/2addr v2, p2

    shl-int p2, v5, v2

    .line 760
    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    aget p1, v0, p1

    and-int/2addr p1, p2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 748
    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    if-ne p2, v2, :cond_4

    .line 749
    invoke-static {p1}, Lcom/ibm/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_1
    return v3
.end method

.method protected handleGetYearLength(I)I
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x514

    if-lt p1, v0, :cond_3

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    const/16 v3, 0xc

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0xc

    add-int/lit8 v0, p1, 0xc

    int-to-long v0, v0

    .line 783
    invoke-static {v0, v1}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/ibm/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v2, v0

    goto :goto_2

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 786
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_2

    .line 780
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/ibm/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result p1

    add-int/lit16 v2, p1, 0x162

    :cond_4
    :goto_2
    return v2
.end method

.method public setCalculationType(Lcom/ibm/icu/util/IslamicCalendar$CalculationType;)V
    .locals 1

    .line 970
    iput-object p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    .line 973
    iget-object p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->cType:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Lcom/ibm/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/IslamicCalendar$CalculationType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 974
    iput-boolean p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->civil:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 976
    iput-boolean p1, p0, Lcom/ibm/icu/util/IslamicCalendar;->civil:Z

    :goto_0
    return-void
.end method
