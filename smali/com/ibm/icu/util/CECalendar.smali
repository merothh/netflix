.class abstract Lcom/ibm/icu/util/CECalendar;
.super Lcom/ibm/icu/util/Calendar;
.source ""


# static fields
.field private static final LIMITS:[[I

.field private static final serialVersionUID:J = -0xddf1b4470f5acbfL


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 23
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

    sput-object v0, Lcom/ibm/icu/util/CECalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
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
        0xc
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x34
        0x35
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x5
        0x1e
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x1
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
.end method

.method protected constructor <init>()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static ceToJD(JIII)I
    .locals 4

    if-ltz p2, :cond_0

    .line 241
    div-int/lit8 v0, p2, 0xd

    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 242
    rem-int/lit8 p2, p2, 0xd

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 245
    div-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 246
    rem-int/lit8 p2, p2, 0xd

    add-int/lit8 p2, p2, 0xc

    :goto_0
    int-to-long v0, p4

    const-wide/16 v2, 0x16d

    mul-long v2, v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    .line 251
    invoke-static {p0, p1, v2, v3}, Lcom/ibm/icu/util/CECalendar;->floorDivide(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    mul-int/lit8 p2, p2, 0x1e

    int-to-long p0, p2

    add-long/2addr v0, p0

    int-to-long p0, p3

    add-long/2addr v0, p0

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static jdToCE(II[I)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    sub-int/2addr p0, p1

    const/16 p1, 0x5b5

    .line 264
    invoke-static {p0, p1, v1}, Lcom/ibm/icu/util/CECalendar;->floorDivide(II[I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    const/4 p1, 0x0

    .line 267
    aget v2, v1, p1

    const/16 v3, 0x16d

    div-int/2addr v2, v3

    aget v4, v1, p1

    const/16 v5, 0x5b4

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    add-int/2addr p0, v2

    aput p0, p2, p1

    .line 269
    aget p0, v1, p1

    if-ne p0, v5, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v1, p1

    rem-int/lit16 v3, p0, 0x16d

    .line 272
    :goto_0
    div-int/lit8 p0, v3, 0x1e

    aput p0, p2, v0

    const/4 p0, 0x2

    .line 274
    rem-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v0

    aput v3, p2, p0

    return-void
.end method


# virtual methods
.method protected abstract getJDEpochOffset()I
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 2

    int-to-long v0, p1

    .line 181
    invoke-virtual {p0}, Lcom/ibm/icu/util/CECalendar;->getJDEpochOffset()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {v0, v1, p2, p3, p1}, Lcom/ibm/icu/util/CECalendar;->ceToJD(JIII)I

    move-result p1

    return p1
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .line 188
    sget-object v0, Lcom/ibm/icu/util/CECalendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method protected handleGetMonthLength(II)I
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 208
    rem-int/lit8 p2, p2, 0xd

    if-eqz p2, :cond_0

    const/16 p1, 0x1e

    return p1

    .line 216
    :cond_0
    rem-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x5

    return p1
.end method
