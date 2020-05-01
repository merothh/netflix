.class public Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;
.super Ljava/lang/Object;
.source "ScreenMargins.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mHorizontalMargin:F

.field private mHorizontalScale:F

.field private mVerticalMargin:F

.field private mVerticalScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalMargin:F

    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalScale:F

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalMargin:F

    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalScale:F

    return-void
.end method

.method public static getScreenMargins(Ljava/lang/String;Ljava/lang/String;F)Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;
    .locals 10

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;

    invoke-direct {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;-><init>()V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calculate AspectDiff using extent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v5

    int-to-float v0, v0

    :goto_0
    cmpl-float v5, v3, v2

    if-lez v5, :cond_3

    cmpl-float v5, v0, v2

    if-lez v5, :cond_3

    div-float v0, v3, v0

    :goto_1
    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    :goto_2
    div-float v2, v0, p2

    sub-float v3, p2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_5

    sub-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, v4, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalMargin:F

    iput v2, v4, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalScale:F

    :cond_1
    :goto_3
    return-object v4

    :cond_2
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move p2, v1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "not implemented when videoAspect < aspect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Default AspectDiff"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v0, v2

    move v3, v2

    goto :goto_0
.end method


# virtual methods
.method public getHorizontalMargin()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalMargin:F

    return v0
.end method

.method public getHorizontalScale()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalScale:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalMargin:F

    return v0
.end method

.method public getVerticalScale()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalScale:F

    return v0
.end method
