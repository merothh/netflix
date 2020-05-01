.class public Lcom/ibm/icu/util/DateTimeRule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DOWSTR:[Ljava/lang/String;

.field private static final MONSTR:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1e4bc5ae0dd30373L


# instance fields
.field private final dateRuleType:I

.field private final dayOfMonth:I

.field private final dayOfWeek:I

.field private final millisInDay:I

.field private final month:I

.field private final timeRuleType:I

.field private final weekInMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, ""

    const-string v1, "Sun"

    const-string v2, "Mon"

    const-string v3, "Tue"

    const-string v4, "Wed"

    const-string v5, "Thu"

    const-string v6, "Fri"

    const-string v7, "Sat"

    .line 258
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    const-string v11, "Nov"

    const-string v12, "Dec"

    .line 259
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    .line 105
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    .line 106
    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    .line 108
    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 109
    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    .line 112
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    .line 113
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    .line 135
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    .line 136
    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    .line 137
    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    .line 139
    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 140
    iput p5, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    return-void
.end method

.method public constructor <init>(IIIZII)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    const/4 p4, 0x3

    .line 164
    :goto_0
    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    .line 165
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    .line 166
    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    .line 167
    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    .line 169
    iput p5, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 170
    iput p6, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    const/4 p1, 0x0

    .line 173
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return-void
.end method


# virtual methods
.method public getDateRuleType()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    return v0
.end method

.method public getRuleDayOfMonth()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    return v0
.end method

.method public getRuleDayOfWeek()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    return v0
.end method

.method public getRuleMillisInDay()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    return v0
.end method

.method public getRuleMonth()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    return v0
.end method

.method public getRuleWeekInMonth()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return v0
.end method

.method public getTimeRuleType()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 273
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v5, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v5, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v5, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_3
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    iget v4, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    if-eq v4, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "UTC"

    goto :goto_1

    :cond_5
    const-string v3, "STD"

    goto :goto_1

    :cond_6
    const-string v3, "WALL"

    .line 300
    :goto_1
    iget v1, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 301
    rem-int/lit16 v2, v1, 0x3e8

    .line 302
    div-int/lit16 v1, v1, 0x3e8

    .line 303
    rem-int/lit8 v4, v1, 0x3c

    .line 304
    div-int/lit8 v1, v1, 0x3c

    .line 305
    rem-int/lit8 v5, v1, 0x3c

    .line 306
    div-int/lit8 v1, v1, 0x3c

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "month="

    .line 309
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v7, Lcom/ibm/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    iget v8, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", date="

    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    .line 313
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    .line 315
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    div-int/lit8 v1, v5, 0xa

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    div-int/lit8 v0, v4, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    .line 321
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    div-int/lit8 v0, v2, 0x64

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    div-int/lit8 v0, v2, 0xa

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    .line 325
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
