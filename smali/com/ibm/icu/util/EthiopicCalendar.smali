.class public final Lcom/ibm/icu/util/EthiopicCalendar;
.super Lcom/ibm/icu/util/CECalendar;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x21d746fbfcf8d998L


# instance fields
.field private eraType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const/4 p1, 0x0

    .line 150
    iput p1, p0, Lcom/ibm/icu/util/EthiopicCalendar;->eraType:I

    .line 216
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/EthiopicCalendar;->setCalcTypeForLocale(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private setCalcTypeForLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 402
    invoke-static {p1}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ethiopic-amete-alem"

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 404
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 406
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1a4dd0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ethiopic-amete-alem"

    return-object v0

    :cond_0
    const-string v0, "ethiopic"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 330
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->jdToCE(II[I)V

    .line 336
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 338
    aget p1, v0, v2

    :goto_0
    add-int/lit16 p1, p1, 0x157c

    move v3, p1

    const/4 p1, 0x0

    goto :goto_1

    .line 340
    :cond_0
    aget p1, v0, v2

    if-lez p1, :cond_1

    .line 342
    aget p1, v0, v2

    move v3, p1

    const/4 p1, 0x1

    goto :goto_1

    .line 345
    :cond_1
    aget p1, v0, v2

    goto :goto_0

    :goto_1
    const/16 v4, 0x13

    .line 349
    aget v5, v0, v2

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 350
    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 351
    invoke-virtual {p0, v1, v3}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 352
    aget p1, v0, v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 353
    aget v3, v0, v2

    invoke-virtual {p0, p1, v3}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 354
    aget v1, v0, v1

    mul-int/lit8 v1, v1, 0x1e

    aget v0, v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    goto :goto_1

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x157d

    .line 307
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, -0x157c

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 313
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    :goto_1
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;->handleGetLimit(II)I

    move-result p1

    return p1
.end method

.method public isAmeteAlemEra()Z
    .locals 2

    .line 291
    iget v0, p0, Lcom/ibm/icu/util/EthiopicCalendar;->eraType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAmeteAlemEra(Z)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/ibm/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method
