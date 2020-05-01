.class public Lcom/ibm/icu/util/HebrewCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source ""


# static fields
.field private static final LEAP_MONTH_START:[[I

.field private static final LIMITS:[[I

.field private static final MONTH_LENGTH:[[I

.field private static final MONTH_START:[[I

.field private static cache:Lcom/ibm/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x1b18c2be311f64d8L


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 173
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v0, v6

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v3, [I

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v3, [I

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v3, [I

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v3, [I

    const/16 v14, 0xc

    aput-object v2, v0, v14

    new-array v2, v3, [I

    const/16 v15, 0xd

    aput-object v2, v0, v15

    new-array v2, v3, [I

    const/16 v14, 0xe

    aput-object v2, v0, v14

    new-array v2, v3, [I

    const/16 v17, 0xf

    aput-object v2, v0, v17

    new-array v2, v3, [I

    const/16 v17, 0x10

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/16 v17, 0x11

    aput-object v2, v0, v17

    new-array v2, v3, [I

    const/16 v17, 0x12

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v17, 0x13

    aput-object v2, v0, v17

    new-array v2, v3, [I

    const/16 v17, 0x14

    aput-object v2, v0, v17

    new-array v2, v3, [I

    const/16 v17, 0x15

    aput-object v2, v0, v17

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LIMITS:[[I

    new-array v0, v15, [[I

    new-array v2, v6, [I

    .line 207
    fill-array-data v2, :array_9

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    new-array v2, v6, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v7

    new-array v2, v6, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v8

    new-array v2, v6, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v9

    new-array v2, v6, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v10

    new-array v2, v6, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v11

    new-array v2, v6, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v12

    new-array v2, v6, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v13

    new-array v2, v6, [I

    fill-array-data v2, :array_15

    const/16 v16, 0xc

    aput-object v2, v0, v16

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    new-array v0, v14, [[I

    new-array v2, v6, [I

    .line 229
    fill-array-data v2, :array_16

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    new-array v2, v6, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v7

    new-array v2, v6, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v8

    new-array v2, v6, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v9

    new-array v2, v6, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v10

    new-array v2, v6, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v11

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v12

    new-array v2, v6, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v13

    new-array v2, v6, [I

    fill-array-data v2, :array_22

    const/16 v16, 0xc

    aput-object v2, v0, v16

    new-array v2, v6, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v15

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I

    new-array v0, v14, [[I

    new-array v2, v6, [I

    .line 250
    fill-array-data v2, :array_24

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v9

    new-array v1, v6, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v10

    new-array v1, v6, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_30

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_31

    aput-object v1, v0, v15

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    .line 272
    new-instance v0, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

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
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xc
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x33
        0x38
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
        0x161
        0x181
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
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_8
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_9
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_b
    .array-data 4
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_e
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_f
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_13
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_15
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_18
    .array-data 4
        0x3b
        0x3b
        0x3c
    .end array-data

    :array_19
    .array-data 4
        0x58
        0x59
        0x5a
    .end array-data

    :array_1a
    .array-data 4
        0x75
        0x76
        0x77
    .end array-data

    :array_1b
    .array-data 4
        0x93
        0x94
        0x95
    .end array-data

    :array_1c
    .array-data 4
        0x93
        0x94
        0x95
    .end array-data

    :array_1d
    .array-data 4
        0xb0
        0xb1
        0xb2
    .end array-data

    :array_1e
    .array-data 4
        0xce
        0xcf
        0xd0
    .end array-data

    :array_1f
    .array-data 4
        0xeb
        0xec
        0xed
    .end array-data

    :array_20
    .array-data 4
        0x109
        0x10a
        0x10b
    .end array-data

    :array_21
    .array-data 4
        0x126
        0x127
        0x128
    .end array-data

    :array_22
    .array-data 4
        0x144
        0x145
        0x146
    .end array-data

    :array_23
    .array-data 4
        0x161
        0x162
        0x163
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_26
    .array-data 4
        0x3b
        0x3b
        0x3c
    .end array-data

    :array_27
    .array-data 4
        0x58
        0x59
        0x5a
    .end array-data

    :array_28
    .array-data 4
        0x75
        0x76
        0x77
    .end array-data

    :array_29
    .array-data 4
        0x93
        0x94
        0x95
    .end array-data

    :array_2a
    .array-data 4
        0xb1
        0xb2
        0xb3
    .end array-data

    :array_2b
    .array-data 4
        0xce
        0xcf
        0xd0
    .end array-data

    :array_2c
    .array-data 4
        0xec
        0xed
        0xee
    .end array-data

    :array_2d
    .array-data 4
        0x109
        0x10a
        0x10b
    .end array-data

    :array_2e
    .array-data 4
        0x127
        0x128
        0x129
    .end array-data

    :array_2f
    .array-data 4
        0x144
        0x145
        0x146
    .end array-data

    :array_30
    .array-data 4
        0x162
        0x163
        0x164
    .end array-data

    :array_31
    .array-data 4
        0x17f
        0x180
        0x181
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 285
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/HebrewCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x11

    .line 694
    rem-int/lit8 p0, p0, 0x13

    if-gez p0, :cond_0

    const/4 v0, -0x7

    :cond_0
    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static monthsInYear(I)I
    .locals 0

    .line 699
    invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    return p0
.end method

.method private static startOfYear(I)J
    .locals 13

    .line 608
    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v3

    .line 610
    sget-wide v5, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    mul-int/lit16 v0, p0, 0xeb

    add-int/lit16 v0, v0, -0xea

    .line 611
    div-int/lit8 v0, v0, 0x13

    int-to-long v3, v0

    const-wide/16 v5, 0x35b9

    mul-long v3, v3, v5

    const-wide/16 v5, 0x2f34

    add-long/2addr v3, v5

    mul-int/lit8 v0, v0, 0x1d

    int-to-long v5, v0

    const-wide/16 v7, 0x6540

    .line 614
    div-long v9, v3, v7

    add-long/2addr v5, v9

    .line 615
    rem-long/2addr v3, v7

    const-wide/16 v7, 0x7

    .line 617
    rem-long v9, v5, v7

    long-to-int v0, v9

    const/4 v9, 0x2

    const-wide/16 v10, 0x1

    if-eq v0, v9, :cond_0

    const/4 v9, 0x4

    if-eq v0, v9, :cond_0

    const/4 v9, 0x6

    if-ne v0, v9, :cond_1

    :cond_0
    add-long/2addr v5, v10

    .line 622
    rem-long v7, v5, v7

    long-to-int v0, v7

    :cond_1
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const-wide/16 v8, 0x4014

    cmp-long v12, v3, v8

    if-lez v12, :cond_2

    .line 624
    invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v8

    if-nez v8, :cond_2

    const-wide/16 v3, 0x2

    add-long/2addr v5, v3

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-wide/16 v8, 0x5ae5

    cmp-long v0, v3, v8

    if-lez v0, :cond_3

    sub-int/2addr p0, v7

    .line 630
    invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_3

    add-long/2addr v5, v10

    :cond_3
    :goto_0
    move-wide v3, v5

    .line 636
    sget-object p0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    :cond_4
    return-wide v3
.end method

.method private final yearType(I)I
    .locals 4

    .line 661
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->handleGetYearLength(I)I

    move-result v0

    const/16 v1, 0x17c

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1e

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 677
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal year length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in year "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x161
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(II)V
    .locals 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 497
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    goto :goto_3

    .line 458
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I

    move-result p1

    const/4 v1, 0x1

    .line 459
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-lez p2, :cond_4

    if-ge p1, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/2addr p1, p2

    :goto_0
    if-eqz v3, :cond_2

    if-lt p1, v4, :cond_2

    .line 465
    invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    const/16 p2, 0xc

    if-gt p1, p2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0xd

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-le p1, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/2addr p1, p2

    :goto_1
    if-eqz v3, :cond_6

    if-gt p1, v4, :cond_6

    .line 479
    invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result p2

    if-nez p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    if-ltz p1, :cond_7

    .line 490
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V

    .line 491
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V

    .line 492
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/HebrewCalendar;->pinField(I)V

    :goto_3
    return-void

    :cond_7
    add-int/lit8 p1, p1, 0xd

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "hebrew"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 7

    const v0, 0x54f5d

    sub-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/16 v2, 0x6540

    mul-long v2, v2, v0

    const-wide/32 v4, 0xbadf9

    .line 796
    div-long/2addr v2, v4

    const-wide/16 v4, 0x13

    mul-long v2, v2, v4

    const-wide/16 v4, 0xea

    add-long/2addr v2, v4

    const-wide/16 v4, 0xeb

    .line 797
    div-long/2addr v2, v4

    long-to-int p1, v2

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 798
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v3

    :goto_0
    sub-long v3, v0, v3

    long-to-int v4, v3

    if-ge v4, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 804
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v3

    goto :goto_0

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result v0

    .line 810
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 813
    :goto_2
    aget-object v6, v1, v5

    aget v6, v6, v0

    if-le v4, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 817
    aget-object v1, v1, v5

    aget v0, v1, v0

    sub-int v0, v4, v0

    .line 819
    invoke-virtual {p0, v3, v3}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 820
    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    const/16 v1, 0x13

    .line 821
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    const/4 p1, 0x2

    .line 822
    invoke-virtual {p0, p1, v5}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 823
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 824
    invoke-virtual {p0, p1, v4}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 2

    :goto_0
    if-gez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 857
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result p3

    add-int/2addr p2, p3

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p3, 0xc

    if-le p2, p3, :cond_1

    add-int/lit8 p3, p1, 0x1

    .line 861
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result p1

    sub-int/2addr p2, p1

    move p1, p3

    goto :goto_1

    .line 864
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    if-eqz p2, :cond_3

    .line 867
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 868
    sget-object p3, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    aget-object p2, p3, p2

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result p1

    aget p1, p2, p1

    goto :goto_2

    .line 870
    :cond_2
    sget-object p3, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I

    aget-object p2, p3, p2

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result p1

    aget p1, p2, p1

    :goto_2
    int-to-long p1, p1

    add-long/2addr v0, p1

    :cond_3
    const-wide/32 p1, 0x54f5d

    add-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 836
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 837
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .line 710
    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method protected handleGetMonthLength(II)I
    .locals 1

    :goto_0
    if-gez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 725
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0xc

    if-le p2, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 729
    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result p1

    sub-int/2addr p2, p1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 740
    sget-object p1, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    .line 736
    :cond_2
    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object p2, v0, p2

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result p1

    aget p1, p2, p1

    return p1
.end method

.method protected handleGetYearLength(I)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 749
    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method protected validateField(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/ibm/icu/util/HebrewCalendar;->handleGetExtendedYear()I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MONTH cannot be ADAR_1(5) except leap years"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->validateField(I)V

    return-void
.end method
