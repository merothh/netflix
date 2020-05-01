.class public Lcom/ibm/icu/util/SimpleTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x61a030c4b2083e91L

.field private static final staticMonthLength:[B


# instance fields
.field private dst:I

.field private transient dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private transient firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private raw:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private transient stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private transient transitionRulesInitialized:Z

.field private useDaylight:Z

.field private xinfo:Lcom/ibm/icu/util/STZInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 637
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 13

    .line 67
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const p2, 0x36ee80

    .line 943
    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 p2, 0x0

    .line 944
    iput-object p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    const/4 p2, 0x0

    .line 1417
    iput-boolean p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x36ee80

    move-object v0, p0

    move v1, p1

    .line 68
    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 14

    move-object v13, p0

    move-object/from16 v0, p2

    .line 187
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x36ee80

    .line 943
    iput v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    .line 944
    iput-object v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    const/4 v0, 0x0

    .line 1417
    iput-boolean v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 188
    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method private compareToRule(IIIIIIIIIIII)I
    .locals 1

    add-int/2addr p6, p7

    const/4 p7, 0x1

    :cond_0
    :goto_0
    const v0, 0x5265c00

    if-lt p6, v0, :cond_1

    sub-int/2addr p6, v0

    add-int/lit8 p4, p4, 0x1

    .line 860
    rem-int/lit8 p5, p5, 0x7

    add-int/2addr p5, p7

    if-le p4, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p6, :cond_3

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 p5, p5, 0x5

    .line 883
    rem-int/lit8 p5, p5, 0x7

    add-int/2addr p5, p7

    if-ge p4, p7, :cond_2

    add-int/lit8 p1, p1, -0x1

    move p4, p3

    :cond_2
    add-int/2addr p6, v0

    goto :goto_1

    :cond_3
    const/4 p3, -0x1

    if-ge p1, p9, :cond_4

    return p3

    :cond_4
    if-le p1, p9, :cond_5

    return p7

    :cond_5
    if-le p11, p2, :cond_6

    move p11, p2

    :cond_6
    const/4 p1, 0x0

    if-eq p8, p7, :cond_b

    const/4 p9, 0x2

    if-eq p8, p9, :cond_9

    const/4 p2, 0x3

    if-eq p8, p2, :cond_8

    const/4 p2, 0x4

    if-eq p8, p2, :cond_7

    const/4 p11, 0x0

    goto :goto_3

    :cond_7
    rsub-int/lit8 p2, p10, 0x31

    add-int/2addr p2, p11

    add-int/2addr p2, p5

    sub-int/2addr p2, p4

    .line 922
    rem-int/lit8 p2, p2, 0x7

    sub-int/2addr p11, p2

    goto :goto_3

    :cond_8
    add-int/lit8 p10, p10, 0x31

    sub-int/2addr p10, p11

    sub-int/2addr p10, p5

    add-int/2addr p10, p4

    .line 918
    rem-int/lit8 p10, p10, 0x7

    :goto_2
    add-int/2addr p11, p10

    goto :goto_3

    :cond_9
    if-lez p11, :cond_a

    add-int/lit8 p11, p11, -0x1

    mul-int/lit8 p11, p11, 0x7

    add-int/2addr p11, p7

    add-int/lit8 p10, p10, 0x7

    sub-int/2addr p5, p4

    add-int/2addr p5, p7

    sub-int/2addr p10, p5

    .line 909
    rem-int/lit8 p10, p10, 0x7

    goto :goto_2

    :cond_a
    add-int/lit8 p11, p11, 0x1

    mul-int/lit8 p11, p11, 0x7

    add-int/2addr p11, p2

    add-int/2addr p5, p2

    sub-int/2addr p5, p4

    add-int/lit8 p5, p5, 0x7

    sub-int/2addr p5, p10

    .line 913
    rem-int/lit8 p5, p5, 0x7

    sub-int/2addr p11, p5

    :cond_b
    :goto_3
    if-ge p4, p11, :cond_c

    return p3

    :cond_c
    if-le p4, p11, :cond_d

    return p7

    :cond_d
    if-ge p6, p12, :cond_e

    return p3

    :cond_e
    if-le p6, p12, :cond_f

    return p7

    :cond_f
    return p1
.end method

.method private construct(IIIIIIIIIIII)V
    .locals 0

    .line 1000
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    .line 1001
    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    .line 1002
    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    .line 1003
    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1004
    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    .line 1005
    iput p6, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 1006
    iput p7, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    .line 1007
    iput p8, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    .line 1008
    iput p9, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1009
    iput p10, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    .line 1010
    iput p11, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 1011
    iput p12, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 p1, 0x0

    .line 1012
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const/4 p1, 0x1

    .line 1013
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    .line 1014
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    .line 1016
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeRules()V

    if-lez p12, :cond_0

    return-void

    .line 1019
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private decodeEndRule()V
    .locals 5

    .line 1098
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1099
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    const v2, 0x5265c00

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1

    .line 1100
    iput v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 1102
    :cond_1
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    .line 1103
    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ltz v3, :cond_a

    const/16 v4, 0xb

    if-gt v3, v4, :cond_a

    .line 1106
    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ltz v3, :cond_9

    if-gt v3, v2, :cond_9

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ltz v2, :cond_9

    const/4 v3, 0x2

    if-gt v2, v3, :cond_9

    .line 1110
    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v2, :cond_2

    .line 1111
    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    .line 1114
    iput v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_1

    :cond_3
    neg-int v2, v2

    .line 1116
    iput v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_4

    const/4 v0, 0x3

    .line 1118
    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_1

    :cond_4
    neg-int v0, v0

    .line 1120
    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x4

    .line 1121
    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    .line 1124
    :goto_1
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x7

    if-gt v0, v2, :cond_8

    .line 1128
    :goto_2
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_6

    .line 1129
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_5

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5

    goto :goto_3

    .line 1130
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1132
    :cond_6
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_7

    sget-object v1, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_7

    goto :goto_3

    .line 1133
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1125
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1108
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1104
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    :goto_3
    return-void
.end method

.method private decodeRules()V
    .locals 0

    .line 1023
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeStartRule()V

    .line 1024
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeEndRule()V

    return-void
.end method

.method private decodeStartRule()V
    .locals 5

    .line 1052
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1053
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    const v2, 0x5265c00

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1

    .line 1054
    iput v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 1056
    :cond_1
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_b

    .line 1057
    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ltz v3, :cond_a

    const/16 v4, 0xb

    if-gt v3, v4, :cond_a

    .line 1060
    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ltz v3, :cond_9

    if-gt v3, v2, :cond_9

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ltz v2, :cond_9

    const/4 v3, 0x2

    if-gt v2, v3, :cond_9

    .line 1064
    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v2, :cond_2

    .line 1065
    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    .line 1068
    iput v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_1

    :cond_3
    neg-int v2, v2

    .line 1070
    iput v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_4

    const/4 v0, 0x3

    .line 1072
    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_1

    :cond_4
    neg-int v0, v0

    .line 1074
    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x4

    .line 1075
    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    .line 1078
    :goto_1
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x7

    if-gt v0, v2, :cond_8

    .line 1082
    :goto_2
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_6

    .line 1083
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_5

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5

    goto :goto_3

    .line 1084
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1086
    :cond_6
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_7

    sget-object v1, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_7

    goto :goto_3

    .line 1087
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1079
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1062
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1058
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    :goto_3
    return-void
.end method

.method private getOffset(IIIIIIII)I
    .locals 24

    move-object/from16 v13, p0

    move/from16 v0, p1

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    if-nez v0, :cond_c

    :cond_0
    if-ltz v14, :cond_c

    const/16 v1, 0xb

    if-gt v14, v1, :cond_c

    if-lt v15, v8, :cond_c

    if-gt v15, v10, :cond_c

    if-lt v12, v8, :cond_c

    const/4 v1, 0x7

    if-gt v12, v1, :cond_c

    if-ltz v11, :cond_c

    const v1, 0x5265c00

    if-ge v11, v1, :cond_c

    const/16 v1, 0x1c

    if-lt v10, v1, :cond_c

    const/16 v2, 0x1f

    if-gt v10, v2, :cond_c

    if-lt v9, v1, :cond_c

    if-gt v9, v2, :cond_c

    .line 742
    iget v7, v13, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    .line 745
    iget-boolean v1, v13, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_b

    iget v1, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v2, p2

    if-lt v2, v1, :cond_b

    if-eq v0, v8, :cond_1

    goto/16 :goto_5

    .line 749
    :cond_1
    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v1, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v16, 0x0

    if-le v0, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 753
    :goto_0
    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    :goto_1
    iget v4, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    iget v3, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v2, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v1, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move/from16 v1, p3

    move/from16 v20, v2

    move/from16 v2, p7

    move/from16 v21, v3

    move/from16 v3, p8

    move/from16 v22, v4

    move/from16 v4, p4

    const/4 v14, 0x2

    move/from16 v5, p5

    move v14, v6

    move/from16 v6, p6

    move/from16 v23, v7

    move/from16 v7, v17

    const/16 v17, 0x1

    move/from16 v8, v22

    move/from16 v9, v21

    move/from16 v10, v20

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v18

    if-ltz v18, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eq v14, v0, :cond_7

    .line 770
    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-nez v0, :cond_5

    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    neg-int v0, v0

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_4
    iget v8, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    iget v9, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v10, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v12, v13, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v16

    :cond_7
    if-nez v14, :cond_8

    if-ltz v18, :cond_8

    if-ltz v16, :cond_9

    :cond_8
    if-eqz v14, :cond_a

    if-gez v18, :cond_9

    if-gez v16, :cond_a

    .line 784
    :cond_9
    iget v0, v13, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    add-int v7, v23, v0

    move/from16 v23, v7

    :cond_a
    return v23

    :cond_b
    :goto_5
    move/from16 v23, v7

    return v23

    .line 705
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getSTZInfo()Lcom/ibm/icu/util/STZInfo;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Lcom/ibm/icu/util/STZInfo;

    invoke-direct {v0}, Lcom/ibm/icu/util/STZInfo;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    return-object v0
.end method

.method private idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1174
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1338
    :try_start_0
    iget-boolean v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1339
    monitor-exit p0

    return-void

    .line 1341
    :cond_0
    :try_start_1
    iget-boolean v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1347
    iget v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v5, 0x2

    if-ne v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    iget v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1349
    :goto_0
    iget v6, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v6, v3, :cond_6

    if-eq v6, v5, :cond_5

    if-eq v6, v14, :cond_4

    if-eq v6, v13, :cond_3

    goto :goto_1

    .line 1362
    :cond_3
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v7, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v10, 0x0

    iget v11, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move-object v6, v0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_1

    .line 1358
    :cond_4
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v7, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v10, 0x1

    iget v11, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move-object v6, v0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_1

    .line 1354
    :cond_5
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v7, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v10, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move-object v6, v0

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    goto :goto_1

    .line 1351
    :cond_6
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v6, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v7, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct {v0, v6, v7, v8, v4}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    .line 1367
    :goto_1
    new-instance v4, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(DST)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v18

    iget v6, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const v21, 0x7fffffff

    move-object v15, v4

    move-object/from16 v19, v0

    move/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    iput-object v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1371
    iget-object v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v4, v6, v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1374
    iget v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v4, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    iget v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v4, v5, :cond_8

    const/4 v4, 0x2

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    .line 1376
    :goto_2
    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-eq v8, v3, :cond_c

    if-eq v8, v5, :cond_b

    if-eq v8, v14, :cond_a

    if-eq v8, v13, :cond_9

    :goto_3
    move-object v14, v0

    goto :goto_4

    .line 1388
    :cond_9
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v5, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/16 v19, 0x0

    iget v10, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move-object v15, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    move/from16 v21, v4

    invoke-direct/range {v15 .. v21}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_3

    .line 1384
    :cond_a
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v5, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/16 v19, 0x1

    iget v10, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move-object v15, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    move/from16 v21, v4

    invoke-direct/range {v15 .. v21}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_3

    .line 1381
    :cond_b
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v5, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v10, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move-object v15, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    goto :goto_3

    .line 1378
    :cond_c
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    iget v5, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct {v0, v5, v8, v9, v4}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    goto :goto_3

    .line 1393
    :goto_4
    new-instance v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(STD)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v12

    const/4 v13, 0x0

    iget v15, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const v16, 0x7fffffff

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1397
    iget-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    iget-object v5, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gez v0, :cond_d

    .line 1401
    new-instance v0, Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(DST)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v6

    iget-object v7, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1402
    invoke-virtual {v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-direct {v0, v2, v6, v7}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1403
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    iget-object v2, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    iget-object v6, v1, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v4, v5, v2, v6}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_5

    .line 1405
    :cond_d
    new-instance v0, Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(STD)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    invoke-direct {v0, v4, v5, v2}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1406
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    iget-object v2, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    iget-object v4, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v6, v7, v2, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_5

    .line 1411
    :cond_e
    new-instance v0, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    invoke-direct {v0, v4, v5, v2}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1413
    :goto_5
    iput-boolean v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1414
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 582
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 605
    iget-object p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p1, p0}, Lcom/ibm/icu/util/STZInfo;->applyTo(Lcom/ibm/icu/util/SimpleTimeZone;)V

    :cond_0
    return-void
.end method

.method private setEndRule(IIIII)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    .line 530
    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    .line 531
    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 532
    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    .line 533
    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 534
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeEndRule()V

    const/4 p1, 0x0

    .line 536
    iput-boolean p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private setEndRule(IIIIIZ)V
    .locals 6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    move v2, p2

    neg-int v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    .line 506
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void
.end method

.method private setStartRule(IIIII)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    .line 370
    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    .line 371
    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 372
    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    .line 373
    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 374
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeStartRule()V

    const/4 p1, 0x0

    .line 376
    iput-boolean p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1213
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1444
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    .line 1445
    iput-boolean v1, v0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1147
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1148
    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_2

    .line 1150
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    iget p1, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 1434
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    return v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 8

    .line 1263
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1267
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1268
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_6

    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 1274
    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1276
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1277
    :cond_2
    new-instance p1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 1279
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1280
    :cond_4
    new-instance p2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {p2, v0, v1, p1, p3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    return-object p2

    :cond_5
    return-object v1

    .line 1270
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1
.end method

.method public getOffset(IIIIII)I
    .locals 9

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-gt p3, v0, :cond_0

    .line 658
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    move-result p1

    return p1

    .line 655
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getOffset(IIIIIII)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v3, p3

    if-ltz v3, :cond_0

    const/16 v0, 0xb

    if-gt v3, v0, :cond_0

    .line 681
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->previousMonthLength(II)I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 680
    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    move-result v0

    return v0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p1

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v2

    const/4 v3, 0x0

    aput v2, p5, v3

    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 800
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    .line 801
    aget v6, v2, v3

    const/4 v11, 0x1

    aget v7, v2, v11

    const/4 v12, 0x2

    aget v8, v2, v12

    const/4 v13, 0x3

    aget v9, v2, v13

    const/4 v14, 0x5

    aget v10, v2, v14

    const/4 v5, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v4

    aget v5, p5, v3

    sub-int/2addr v4, v5

    aput v4, p5, v11

    .line 808
    aget v4, p5, v11

    const/16 v5, 0xc

    if-lez v4, :cond_1

    and-int/lit8 v4, p3, 0x3

    if-eq v4, v11, :cond_0

    if-eq v4, v13, :cond_2

    and-int/lit8 v4, p3, 0xc

    if-eq v4, v5, :cond_2

    .line 812
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v4

    goto :goto_1

    :cond_1
    and-int/lit8 v4, p4, 0x3

    if-eq v4, v13, :cond_3

    if-eq v4, v11, :cond_2

    and-int/lit8 v4, p4, 0xc

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    const/4 v0, 0x0

    goto :goto_2

    .line 819
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v4

    :goto_1
    int-to-long v4, v4

    sub-long/2addr v0, v4

    move-wide v4, v0

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 825
    invoke-static {v4, v5, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/16 v16, 0x1

    .line 826
    aget v17, v2, v3

    aget v18, v2, v11

    aget v19, v2, v12

    aget v20, v2, v13

    aget v21, v2, v14

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v21}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    aget v1, p5, v3

    sub-int/2addr v0, v1

    aput v0, p5, v11

    :cond_4
    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 8

    .line 1291
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1295
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1296
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_5

    if-nez p3, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    .line 1300
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1301
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    move v7, p3

    .line 1300
    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 1302
    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1303
    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    .line 1302
    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1304
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1305
    :cond_2
    new-instance p1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 1307
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1308
    :cond_4
    new-instance p2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {p2, v0, v1, p1, p3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    return-object p2

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getRawOffset()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1185
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v1, 0x8

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    xor-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    xor-int/2addr v0, v1

    if-nez v2, :cond_0

    .line 1189
    iget v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    ushr-int/lit8 v2, v1, 0xa

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xb

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xc

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xd

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xe

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xf

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x10

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x11

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x12

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x13

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x14

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x15

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x16

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x17

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    .line 980
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    .line 981
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 982
    invoke-virtual {v0}, Lcom/ibm/icu/util/GregorianCalendar;->inDaylightTime()Z

    move-result p1

    return p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 1425
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    return v0
.end method

.method public setEndRule(III)V
    .locals 8

    .line 469
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move v2, p1

    move v5, p3

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    return-void

    .line 470
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndRule(IIII)V
    .locals 14

    .line 448
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 453
    invoke-direct/range {v8 .. v13}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndRule(IIIIZ)V
    .locals 11

    .line 495
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p2

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    .line 500
    invoke-direct/range {v4 .. v10}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIIIZ)V

    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartRule(III)V
    .locals 14

    .line 392
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/STZInfo;->setStart(IIIIIZ)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v12, p3

    .line 397
    invoke-direct/range {v8 .. v13}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartRule(IIII)V
    .locals 14

    .line 320
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/STZInfo;->setStart(IIIIIZ)V

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 325
    invoke-direct/range {v8 .. v13}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartRule(IIIIZ)V
    .locals 8

    .line 418
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p2

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/STZInfo;->setStart(IIIIIZ)V

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    move v2, p2

    neg-int v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p4

    .line 423
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    .line 419
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartYear(I)V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    iput p1, v0, Lcom/ibm/icu/util/STZInfo;->sy:I

    .line 293
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const/4 p1, 0x0

    .line 294
    iput-boolean p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 289
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTimeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .line 961
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
