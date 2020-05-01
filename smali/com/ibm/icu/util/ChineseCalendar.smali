.class public Lcom/ibm/icu/util/ChineseCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source ""


# static fields
.field private static final CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

.field static final CHINESE_DATE_PRECEDENCE:[[[I

.field private static final LIMITS:[[I

.field private static final serialVersionUID:J = 0x6579d5fcd7c0e78cL


# instance fields
.field private transient astro:Lcom/ibm/icu/impl/CalendarAstronomer;

.field private epochYear:I

.field private transient isLeapYear:Z

.field private transient newYearCache:Lcom/ibm/icu/impl/CalendarCache;

.field private transient winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

.field private zoneAstro:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 401
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

    const/16 v12, 0xb

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0xc

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0xd

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0xe

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0xf

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0x10

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/16 v12, 0x11

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0x12

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v12, 0x13

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0x14

    aput-object v2, v0, v12

    new-array v2, v3, [I

    const/16 v12, 0x15

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v12, 0x16

    aput-object v2, v0, v12

    sput-object v0, Lcom/ibm/icu/util/ChineseCalendar;->LIMITS:[[I

    new-array v0, v5, [[[I

    new-array v2, v11, [[I

    new-array v11, v4, [I

    aput v7, v11, v3

    aput-object v11, v2, v3

    new-array v11, v5, [I

    .line 489
    fill-array-data v11, :array_a

    aput-object v11, v2, v4

    new-array v11, v5, [I

    fill-array-data v11, :array_b

    aput-object v11, v2, v5

    new-array v11, v5, [I

    fill-array-data v11, :array_c

    aput-object v11, v2, v6

    new-array v11, v5, [I

    fill-array-data v11, :array_d

    aput-object v11, v2, v1

    new-array v11, v5, [I

    fill-array-data v11, :array_e

    aput-object v11, v2, v7

    new-array v11, v5, [I

    fill-array-data v11, :array_f

    aput-object v11, v2, v8

    new-array v11, v4, [I

    aput v8, v11, v3

    aput-object v11, v2, v9

    new-array v8, v5, [I

    fill-array-data v8, :array_10

    aput-object v8, v2, v10

    aput-object v2, v0, v3

    new-array v2, v7, [[I

    new-array v7, v4, [I

    aput v6, v7, v3

    aput-object v7, v2, v3

    new-array v7, v4, [I

    aput v1, v7, v3

    aput-object v7, v2, v4

    new-array v7, v4, [I

    aput v10, v7, v3

    aput-object v7, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v1

    aput-object v2, v0, v4

    sput-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    .line 652
    new-instance v0, Lcom/ibm/icu/util/SimpleTimeZone;

    const v1, 0x1b77400

    const-string v2, "CHINA_ZONE"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x14585
        0x14585
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x3c
        0x3c
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
        0x37
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
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x25
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x28
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x28
        0x12
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 151
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    const/16 v3, -0xa4c

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 331
    sget-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    const/16 v1, -0xa4c

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 121
    new-instance p1, Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p1}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 127
    new-instance p1, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {p1}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    .line 133
    new-instance p1, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {p1}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    .line 344
    iput p3, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    .line 345
    iput-object p4, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/ChineseCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method private computeChineseFields(IIIZ)V
    .locals 8

    .line 861
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 863
    invoke-direct {p0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 866
    invoke-direct {p0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 872
    invoke-direct {p0, v0, v2}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    add-int/2addr v1, v2

    const/4 v3, 0x0

    .line 873
    invoke-direct {p0, v1, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    add-int/lit8 v4, p1, 0x1

    .line 874
    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    .line 876
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v1

    const/16 v5, 0xc

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/ibm/icu/util/ChineseCalendar;->isLeapYear:Z

    .line 878
    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v1

    .line 879
    iget-boolean v5, p0, Lcom/ibm/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0xc

    .line 886
    :cond_3
    iget-boolean v5, p0, Lcom/ibm/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v5, :cond_4

    .line 887
    invoke-direct {p0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v4, -0x19

    .line 888
    invoke-direct {p0, v5, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/ibm/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const/4 v5, 0x2

    add-int/lit8 v6, v1, -0x1

    .line 890
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    const/16 v5, 0x16

    .line 891
    invoke-virtual {p0, v5, v0}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    if-eqz p4, :cond_8

    .line 896
    iget p4, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    sub-int p4, p2, p4

    add-int/lit16 v0, p2, 0xa4c

    const/16 v5, 0xb

    const/4 v6, 0x6

    if-lt v1, v5, :cond_5

    if-lt p3, v6, :cond_6

    :cond_5
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_6
    sub-int p3, p1, v4

    add-int/2addr p3, v2

    const/16 v1, 0x13

    .line 905
    invoke-virtual {p0, v1, p4}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    new-array p4, v2, [I

    sub-int/2addr v0, v2

    const/16 v1, 0x3c

    .line 909
    invoke-static {v0, v1, p4}, Lcom/ibm/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v0

    add-int/2addr v0, v2

    .line 910
    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 911
    aget p4, p4, v3

    add-int/2addr p4, v2

    invoke-virtual {p0, v2, p4}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    const/4 p4, 0x5

    .line 913
    invoke-virtual {p0, p4, p3}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 919
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->newYear(I)I

    move-result p3

    if-ge p1, p3, :cond_7

    sub-int/2addr p2, v2

    .line 921
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->newYear(I)I

    move-result p3

    :cond_7
    sub-int/2addr p1, p3

    add-int/2addr p1, v2

    .line 923
    invoke-virtual {p0, v6, p1}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    :cond_8
    return-void
.end method

.method private final daysToMillis(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    .line 675
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private hasNoMajorSolarTerm(I)Z
    .locals 2

    .line 774
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x19

    const/4 v1, 0x1

    .line 775
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    .line 776
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLeapMonthBetween(II)Z
    .locals 3

    .line 801
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    if-lt p2, p1, :cond_1

    add-int/lit8 v1, p2, -0x19

    .line 808
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 809
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 802
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeapMonthBetween("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): Invalid parameters"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private majorSolarTerm(I)I
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 760
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x2

    rem-int/lit8 p1, p1, 0xc

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    :cond_0
    return p1
.end method

.method private final millisToDays(J)I
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->floorDivide(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private newMoonNear(IZ)I
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 733
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    sget-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->NEW_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonTime(Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;Z)J

    move-result-wide p1

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result p1

    return p1
.end method

.method private newYear(I)I
    .locals 7

    .line 939
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v3

    .line 941
    sget-wide v5, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 943
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v0

    .line 944
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result p1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 945
    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    add-int/lit8 v4, v0, 0x19

    .line 946
    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    add-int/2addr p1, v3

    const/4 v5, 0x0

    .line 947
    invoke-direct {p0, p1, v5}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    .line 949
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result p1

    const/16 v5, 0xc

    if-ne p1, v5, :cond_1

    .line 950
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x19

    .line 951
    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    int-to-long v3, p1

    goto :goto_0

    :cond_1
    int-to-long v3, v4

    .line 956
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    :cond_2
    long-to-int p1, v3

    return p1
.end method

.method private offsetMonth(III)V
    .locals 4

    int-to-double v0, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double v0, v0, v2

    double-to-int p3, v0

    add-int/2addr p1, p3

    const/4 p3, 0x1

    .line 535
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    const v0, 0x253d8c    # 3.419992E-39f

    add-int/2addr p1, v0

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    const/16 p3, 0x14

    const/16 v0, 0x1d

    if-le p2, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 543
    invoke-virtual {p0, p3, v0}, Lcom/ibm/icu/util/ChineseCalendar;->set(II)V

    .line 548
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->complete()V

    const/4 v0, 0x5

    .line 549
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->getActualMaximum(I)I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 550
    invoke-virtual {p0, p3, p1}, Lcom/ibm/icu/util/ChineseCalendar;->set(II)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/ibm/icu/util/ChineseCalendar;->set(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    const/16 v0, -0xa4c

    .line 1039
    iput v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    .line 1040
    sget-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    iput-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    .line 1042
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1045
    new-instance p1, Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p1}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 1046
    new-instance p1, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {p1}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    .line 1047
    new-instance p1, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {p1}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    return-void
.end method

.method private synodicMonthsBetween(II)I
    .locals 2

    sub-int/2addr p2, p1

    int-to-double p1, p2

    const-wide v0, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr p1, v0

    .line 746
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private winterSolstice(I)I
    .locals 7

    .line 701
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v3

    .line 703
    sget-wide v5, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const/16 v0, 0xb

    .line 708
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->computeGregorianMonthStart(II)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const v3, 0x253d8c    # 3.419992E-39f

    sub-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v3

    .line 710
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {p1, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 713
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    sget-object v3, Lcom/ibm/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    invoke-virtual {p1, v3, v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunTime(Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;Z)J

    move-result-wide v3

    .line 715
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result p1

    int-to-long v3, p1

    .line 716
    iget-object p1, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    :cond_0
    long-to-int p1, v3

    return p1
.end method


# virtual methods
.method public add(II)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 572
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x5

    .line 565
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->get(I)I

    move-result p1

    const/16 v0, 0x14

    .line 566
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->get(I)I

    move-result v0

    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 568
    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/util/ChineseCalendar;->offsetMonth(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    .line 516
    sget-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "chinese"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 3

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr p1, v0

    .line 833
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianMonth()I

    move-result v1

    const/4 v2, 0x1

    .line 832
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ibm/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/16 v2, 0xb

    if-le p2, v2, :cond_1

    :cond_0
    new-array v2, v1, [I

    const/16 v3, 0xc

    .line 980
    invoke-static {p2, v3, v2}, Lcom/ibm/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    .line 981
    aget p2, v2, v0

    .line 984
    :cond_1
    iget v2, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    .line 985
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->newYear(I)I

    move-result p1

    mul-int/lit8 v2, p2, 0x1d

    add-int/2addr p1, v2

    .line 986
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    const v2, 0x253d8c    # 3.419992E-39f

    add-int v3, p1, v2

    const/4 v4, 0x2

    .line 991
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v5

    const/16 v6, 0x16

    .line 992
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v7

    if-eqz p3, :cond_2

    move p3, v7

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 997
    :goto_0
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/ChineseCalendar;->computeGregorianFields(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianYear()I

    move-result v8

    .line 1001
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianMonth()I

    move-result v9

    .line 1000
    invoke-direct {p0, p1, v8, v9, v0}, Lcom/ibm/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    .line 1003
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1004
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result p2

    if-eq p3, p2, :cond_4

    :cond_3
    add-int/lit8 p1, p1, 0x19

    .line 1005
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    add-int v3, p1, v2

    .line 1009
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 1010
    invoke-virtual {p0, v6, v7}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    sub-int/2addr v3, v1

    return v3
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 483
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetExtendedYear()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 446
    invoke-virtual {p0, v0, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newestStamp(III)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/ChineseCalendar;->getStamp(I)I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 447
    invoke-virtual {p0, v3, v1}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    .line 451
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    add-int/lit16 v1, v1, 0xa4c

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .line 434
    sget-object v0, Lcom/ibm/icu/util/ChineseCalendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method protected handleGetMonthLength(II)I
    .locals 1

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/util/ChineseCalendar;->handleComputeMonthStart(IIZ)I

    move-result p1

    const p2, 0x253d8c    # 3.419992E-39f

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    add-int/lit8 p2, p1, 0x19

    .line 467
    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p2

    sub-int/2addr p2, p1

    return p2
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
