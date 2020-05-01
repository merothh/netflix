.class public Lcom/ibm/icu/util/PersianCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I

.field private static final serialVersionUID:J = -0x5d5c320ee73c81dbL


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    new-array v1, v0, [[I

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 75
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v14, 0xb

    aput-object v3, v1, v14

    sput-object v1, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    const/16 v1, 0x16

    new-array v1, v1, [[I

    new-array v3, v7, [I

    .line 267
    fill-array-data v3, :array_c

    aput-object v3, v1, v4

    new-array v3, v7, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v5

    new-array v3, v7, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    new-array v2, v4, [I

    aput-object v2, v1, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v8

    new-array v2, v7, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v9

    new-array v2, v4, [I

    aput-object v2, v1, v10

    new-array v2, v7, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v11

    new-array v2, v4, [I

    aput-object v2, v1, v12

    new-array v2, v4, [I

    aput-object v2, v1, v13

    new-array v2, v4, [I

    aput-object v2, v1, v14

    new-array v2, v4, [I

    aput-object v2, v1, v0

    new-array v0, v4, [I

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-array v0, v7, [I

    fill-array-data v0, :array_13

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-array v0, v7, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Lcom/ibm/icu/util/PersianCalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0x1f
        0x3e
    .end array-data

    :array_3
    .array-data 4
        0x1f
        0x1f
        0x5d
    .end array-data

    :array_4
    .array-data 4
        0x1f
        0x1f
        0x7c
    .end array-data

    :array_5
    .array-data 4
        0x1f
        0x1f
        0x9b
    .end array-data

    :array_6
    .array-data 4
        0x1e
        0x1e
        0xba
    .end array-data

    :array_7
    .array-data 4
        0x1e
        0x1e
        0xd8
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0x1e
        0xf6
    .end array-data

    :array_9
    .array-data 4
        0x1e
        0x1e
        0x114
    .end array-data

    :array_a
    .array-data 4
        0x1e
        0x1e
        0x132
    .end array-data

    :array_b
    .array-data 4
        0x1d
        0x1e
        0x150
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x34
        0x35
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1d
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_12
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_13
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_14
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/PersianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/PersianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method private static final isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    mul-int/lit8 p0, p0, 0x19

    add-int/lit8 p0, p0, 0xb

    const/16 v2, 0x21

    .line 313
    invoke-static {p0, v2, v1}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II[I)I

    const/4 p0, 0x0

    .line 314
    aget v1, v1, p0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "persian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1dbaa0

    sub-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/16 v2, 0x21

    mul-long v4, v0, v2

    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2f15

    .line 423
    invoke-static {v4, v5, v6, v7}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    const/4 v4, 0x1

    add-int/2addr p1, v4

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    sub-long v7, v5, v7

    const-wide/16 v9, 0x16d

    mul-long v7, v7, v9

    const-wide/16 v9, 0x8

    mul-long v5, v5, v9

    const-wide/16 v9, 0x15

    add-long/2addr v5, v9

    .line 425
    invoke-static {v5, v6, v2, v3}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v7, v2

    sub-long/2addr v0, v7

    long-to-int v1, v0

    const/16 v0, 0xd8

    if-ge v1, v0, :cond_0

    .line 428
    div-int/lit8 v0, v1, 0x1f

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x6

    .line 430
    div-int/lit8 v0, v0, 0x1e

    .line 432
    :goto_0
    sget-object v2, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-int v2, v1, v2

    add-int/2addr v2, v4

    add-int/2addr v1, v4

    const/4 v5, 0x0

    .line 435
    invoke-virtual {p0, v5, v5}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 436
    invoke-virtual {p0, v4, p1}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    const/16 v4, 0x13

    .line 437
    invoke-virtual {p0, v4, p1}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 438
    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 439
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 440
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    const/16 p3, 0xb

    if-le p2, p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [I

    const/16 v0, 0xc

    .line 371
    invoke-static {p2, v0, p3}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 372
    aget p2, p3, p2

    :cond_1
    const p3, 0x1dba9f

    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v0, v0, 0x16d

    add-int/2addr v0, p3

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x15

    const/16 p3, 0x21

    .line 375
    invoke-static {p1, p3}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II)I

    move-result p1

    add-int/2addr v0, p1

    if-eqz p2, :cond_2

    .line 377
    sget-object p1, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object p1, p1, p2

    const/4 p2, 0x2

    aget p1, p1, p2

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 393
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/PersianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 394
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/PersianCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/PersianCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    sget-object v0, Lcom/ibm/icu/util/PersianCalendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method protected handleGetMonthLength(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xc

    .line 337
    invoke-static {p2, v1, v0}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 338
    aget p2, v0, p2

    .line 341
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object p2, v0, p2

    invoke-static {p1}, Lcom/ibm/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result p1

    aget p1, p2, p1

    return p1
.end method

.method protected handleGetYearLength(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    invoke-static {p1}, Lcom/ibm/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1
.end method
