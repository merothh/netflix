.class public Lcom/ibm/icu/util/TimeArrayTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source ""


# static fields
.field private static final serialVersionUID:J = -0xf80c4d5c99c274dL


# instance fields
.field private final startTimes:[J

.field private final timeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[JI)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    if-eqz p4, :cond_0

    .line 46
    array-length p1, p4

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    .line 50
    iget-object p1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 52
    iput p5, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No start times are specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getUTC(JII)J
    .locals 2

    .line 159
    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 162
    :cond_0
    iget p3, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-nez p3, :cond_1

    int-to-long p3, p4

    sub-long/2addr p1, p3

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v1, v0

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1

    if-nez p5, :cond_0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_2
    new-instance p2, Ljava/util/Date;

    add-int/lit8 v0, v0, 0x1

    aget-wide v0, p1, v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    return-object p2
.end method

.method public isTransitionRule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-super {p0}, Lcom/ibm/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeType="

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTimes=["

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
