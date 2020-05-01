.class public Lcom/netflix/mediaclient/util/net/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/net/BackOff;


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MS:I = 0x3e8

.field public static final DEFAULT_MAX_ELAPSED_TIME_MS:I = 0x1d4c0

.field public static final DEFAULT_MAX_INTERVAL_MS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5

.field protected static final TAG:Ljava/lang/String; = "nf_backoff"


# instance fields
.field private mCurrentIntervalInMs:I

.field private mInitialIntervalInMs:I

.field private mMaxElapsedTimeInMs:I

.field private mMaxIntervalInMs:I

.field private mMultiplier:D

.field private mRandomizationFactor:D

.field private mStartTimeInNanos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    const v0, 0xea60

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    const v0, 0x1d4c0

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->reset()V

    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    const v0, 0xea60

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    const v0, 0x1d4c0

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    iput p1, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_0

    cmpg-double v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    iput-wide v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    :goto_0
    iput-wide p4, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    iput p6, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    iput p7, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->reset()V

    return-void

    :cond_1
    iput-wide p2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    goto :goto_0
.end method

.method private static getRandomValueFromInterval(DDI)I
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    :goto_0
    return p4

    :cond_0
    int-to-double v0, p4

    mul-double/2addr v0, p0

    int-to-double v2, p4

    sub-double/2addr v2, v0

    int-to-double v4, p4

    add-double/2addr v0, v4

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    mul-double/2addr v0, p2

    add-double/2addr v0, v2

    double-to-int p4, v0

    goto :goto_0
.end method

.method private incrementCurrentInterval()V
    .locals 6

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    int-to-double v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_backoff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new currentInterval [sec]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    goto :goto_0
.end method


# virtual methods
.method public canRetry()Z
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->getElapsedTimeInMs()J

    move-result-wide v0

    iget v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_backoff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canRetry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIntervalInMs()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    return v0
.end method

.method public final getElapsedTimeInMs()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mStartTimeInNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitialIntervalInMs()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    return v0
.end method

.method public getMaxElapsedTimeInMs()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    return v0
.end method

.method public getMaxIntervalInMs()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    return v0
.end method

.method public getMultiplier()D
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    return-wide v0
.end method

.method public getRandomizationFactor()D
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    return-wide v0
.end method

.method public getStartTimeInNs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mStartTimeInNanos:J

    return-wide v0
.end method

.method public nextBackOffInMs()J
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->canRetry()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->getRandomValueFromInterval(DDI)I

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->incrementCurrentInterval()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_backoff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "randomizedInterval [sec]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    int-to-long v0, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mStartTimeInNanos:J

    return-void
.end method
