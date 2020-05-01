.class public final Lcom/ibm/icu/util/CopticCalendar;
.super Lcom/ibm/icu/util/CECalendar;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x51ee93e0021d7b7fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ibm/icu/util/CECalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1bd799

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "coptic"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 275
    invoke-virtual {p0}, Lcom/ibm/icu/util/CopticCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/util/CopticCalendar;->jdToCE(II[I)V

    const/4 p1, 0x0

    .line 281
    aget v1, v0, p1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    .line 283
    aget v1, v0, p1

    rsub-int/lit8 v1, v1, 0x1

    move v3, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 286
    :cond_0
    aget v1, v0, p1

    move v3, v1

    const/4 v1, 0x1

    :goto_0
    const/16 v4, 0x13

    .line 289
    aget v5, v0, p1

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 290
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 291
    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 292
    aget p1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 293
    aget v3, v0, v1

    invoke-virtual {p0, p1, v3}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 294
    aget v2, v0, v2

    mul-int/lit8 v2, v2, 0x1e

    aget v0, v0, v1

    add-int/2addr v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0
.end method
