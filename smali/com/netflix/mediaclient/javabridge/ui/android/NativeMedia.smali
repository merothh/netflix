.class public Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeMedia.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/IMedia;


# static fields
.field private static final NAME_STREAMING:Ljava/lang/String; = "streaming"

.field private static final TAG:Ljava/lang/String; = "nf-bridge"

.field private static final TAG1:Ljava/lang/String; = "nf-media"


# instance fields
.field private mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

.field private mCurrentAudioTrackIndex:I

.field private mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

.field private mCurrentSubtitleTrackIndex:I

.field private mCurrentVideoBitrate:I

.field private mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

.field private mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private mDisplayAspectRatioX:I

.field private mDisplayAspectRatioY:I

.field private mDuration:I

.field private mFrameX:I

.field private mFrameY:I

.field private mPosition:I

.field private mState:I

.field private mSubtitleOutputMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

.field private mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field private mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

.field private mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

.field private mTrickplayUrlList:[Lcom/netflix/mediaclient/media/TrickplayUrl;

.field private mWatermark:Lcom/netflix/mediaclient/media/Watermark;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 196
    return-void
.end method

.method private calculateVideoSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 450
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string/jumbo v0, "nf-media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePropertyUpdate:: displayAspectRatio x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getDisplaySize()Landroid/view/Display;

    move-result-object v0

    .line 455
    if-nez v0, :cond_3

    .line 456
    const-string/jumbo v0, "nf-media"

    const-string/jumbo v1, "Screen size null, use default calculation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    if-nez v0, :cond_2

    .line 458
    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    .line 459
    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    .line 477
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    const-string/jumbo v0, "nf-media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePropertyUpdate:: frame x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    return-void

    .line 461
    :cond_2
    const/16 v0, 0x438

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    .line 462
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    goto :goto_0

    .line 465
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    const-string/jumbo v1, "nf-media"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePropertyUpdate:: screen size x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_4
    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    if-nez v1, :cond_5

    .line 469
    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    .line 470
    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    goto :goto_0

    .line 472
    :cond_5
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    .line 473
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    goto/16 :goto_0
.end method

.method private getAudioSources(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 603
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 604
    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Empty audio source list"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 613
    :goto_0
    return-object v0

    .line 608
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 609
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 610
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    aput-object v2, v1, v0

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 613
    goto :goto_0
.end method

.method private getDefaultOrderInfo(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v1, v1

    if-ge v1, v2, :cond_1

    .line 493
    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Restrictions not found! Audio track list is empty!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 524
    :goto_0
    return-object v0

    .line 497
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 498
    :cond_2
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "No defaults found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    goto :goto_0

    .line 502
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 504
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 507
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;-><init>(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 514
    const-string/jumbo v3, "nf-bridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Default found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_4
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->isValid(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 518
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 508
    :catch_0
    move-exception v1

    .line 509
    const-string/jumbo v3, "nf-bridge"

    const-string/jumbo v4, "Failed to parse default "

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 522
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 523
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDisplaySize()Landroid/view/Display;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getDisplaySize()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getSubtitle(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 598
    :goto_0
    return-object v0

    .line 587
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 588
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    aget-object v2, v2, v0

    .line 589
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v2

    .line 593
    goto :goto_0

    .line 587
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 597
    :cond_3
    const-string/jumbo v0, "nf-bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle not found for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 598
    goto :goto_0
.end method

.method private getSubtitle(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 618
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 619
    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Empty subtitle list"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    .line 628
    :goto_0
    return-object v0

    .line 623
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/Subtitle;

    .line 624
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 625
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 628
    goto :goto_0
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 656
    .line 657
    const-string/jumbo v1, "data"

    invoke-virtual {p0, p1, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 658
    if-nez v3, :cond_1

    .line 659
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media::processUpdate: Data not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    :goto_0
    return v0

    .line 663
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v3, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    const-string/jumbo v4, "Nccp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 668
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: NCCP Type!!!"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {v3}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v1

    .line 671
    if-nez v1, :cond_2

    .line 672
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Uknown event for NCCP type!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_2
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v3, "Media::processUpdate: Event found NccpError"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    const-string/jumbo v0, "nf-bridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Passing event to MP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_3
    if-eqz v1, :cond_4

    instance-of v0, v1, Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;

    if-eqz v0, :cond_4

    .line 894
    invoke-interface {v1}, Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    :cond_4
    move v0, v2

    .line 896
    goto :goto_0

    .line 679
    :cond_5
    const-string/jumbo v4, "background"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 681
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: background NCCP error"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {v3}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v1

    .line 684
    if-nez v1, :cond_6

    .line 685
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Uknown event for background type!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 688
    :cond_6
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v3, "Media::processUpdate: Event found NccpError"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 692
    :cond_7
    const-string/jumbo v4, "audioTrackChanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 694
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found AudioTrackChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    .line 696
    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;->getTrackIndex()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    goto :goto_1

    .line 699
    :cond_8
    const-string/jumbo v4, "buffering"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 701
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Buffering"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 705
    :cond_9
    const-string/jumbo v4, "bufferrange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 707
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found BufferRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 711
    :cond_a
    const-string/jumbo v4, "error"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 713
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Error;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Error;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 717
    :cond_b
    const-string/jumbo v4, "exception"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 719
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Exception"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Exception;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Exception;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 723
    :cond_c
    const-string/jumbo v4, "nccperror"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 725
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found NccpError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {v3}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v1

    goto/16 :goto_1

    .line 729
    :cond_d
    const-string/jumbo v4, "newStream"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 731
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: Event found NewStream, process"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/NewStream;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/NewStream;-><init>(Lorg/json/JSONObject;)V

    .line 733
    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/media/NewStream;->getStreamInfo()Lcom/netflix/mediaclient/javabridge/StreamInfo;

    move-result-object v3

    .line 734
    if-nez v3, :cond_e

    .line 735
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Stream is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    :cond_e
    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getStreamType()I

    move-result v4

    if-ne v4, v5, :cond_f

    .line 738
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v4, "Video stream"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    goto/16 :goto_1

    .line 741
    :cond_f
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Not vdeo stream, ignore"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :cond_10
    const-string/jumbo v4, "removeSubtitle"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 750
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found RemoveSubtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/RemoveSubtitle;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/RemoveSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 754
    :cond_11
    const-string/jumbo v4, "setvideobitraterange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 756
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SetVideoBitrateRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 759
    goto/16 :goto_0

    .line 761
    :cond_12
    const-string/jumbo v4, "setvideoresolutionrange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 763
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SetVideoResolutionRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 766
    goto/16 :goto_0

    .line 768
    :cond_13
    const-string/jumbo v4, "showSubtitle"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 770
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found ShowSubtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 774
    :cond_14
    const-string/jumbo v4, "skip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 776
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Skip. NOOP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 779
    goto/16 :goto_0

    .line 781
    :cond_15
    const-string/jumbo v4, "statechanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 783
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Statechanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 787
    :cond_16
    const-string/jumbo v4, "streamSelected"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 789
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: Event found StreamSelected"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;-><init>(Lorg/json/JSONObject;)V

    .line 791
    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->getStreamInfo()Lcom/netflix/mediaclient/javabridge/StreamInfo;

    move-result-object v3

    .line 792
    if-nez v3, :cond_17

    .line 793
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Stream is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 795
    :cond_17
    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getStreamType()I

    move-result v4

    if-ne v4, v5, :cond_18

    .line 796
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v4, "Video stream"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    goto/16 :goto_1

    .line 799
    :cond_18
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Not vdeo stream, ignore"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 806
    :cond_19
    const-string/jumbo v4, "subtitledata"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 808
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SubtitleData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 812
    :cond_1a
    const-string/jumbo v4, "subtitleTrackChanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 814
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SubtitleTrackChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 817
    goto/16 :goto_0

    .line 826
    :cond_1b
    const-string/jumbo v4, "updatePts"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 828
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found UpdatePts. Consuming."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;-><init>(Lorg/json/JSONObject;)V

    .line 830
    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;->getPts()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    goto/16 :goto_1

    .line 834
    :cond_1c
    const-string/jumbo v4, "updateVideoBitrate"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 836
    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;-><init>(Lorg/json/JSONObject;)V

    .line 837
    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;->getBitsPerSecond()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoBitrate:I

    .line 838
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 839
    const-string/jumbo v1, "nf-bridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Media::processUpdate: Event found UpdateVideoBitrate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;->getBitsPerSecond()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move v0, v2

    .line 842
    goto/16 :goto_0

    .line 844
    :cond_1e
    const-string/jumbo v4, "videoWindowChanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 846
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found VideoWindowChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 849
    goto/16 :goto_0

    .line 851
    :cond_1f
    const-string/jumbo v4, "warning"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 853
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Warning"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Warning;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Warning;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 857
    :cond_20
    const-string/jumbo v4, "bufferingComplete"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 859
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found bufferingComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    const-string/jumbo v0, "bufferingComplete"

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 863
    :cond_21
    const-string/jumbo v4, "openComplete"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 865
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found openComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    .line 867
    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    goto/16 :goto_1

    .line 870
    :cond_22
    const-string/jumbo v3, "endOfStream"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 872
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found endOfStream"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    const-string/jumbo v0, "endOfStream"

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 876
    :cond_23
    const-string/jumbo v3, "underflow"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 878
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found underflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    const-string/jumbo v0, "underflow"

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 883
    :cond_24
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    const-string/jumbo v2, "nf-bridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Media::processUpdate: uknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 331
    const-string/jumbo v2, "properties"

    invoke-virtual {p0, p1, v2, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 332
    if-nez v2, :cond_0

    .line 333
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "handlePropertyUpdate:: properties does not exist"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return v0

    .line 337
    :cond_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->setCurrentAudioTrackIndex(Lorg/json/JSONObject;)V

    .line 338
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->setCurrentSubtitleTrackIndex(Lorg/json/JSONObject;)V

    .line 340
    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    const-string/jumbo v3, "state"

    invoke-virtual {p0, v2, v3, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mState:I

    .line 344
    :cond_1
    const-string/jumbo v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    const-string/jumbo v3, "duration"

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    .line 348
    :cond_2
    const-string/jumbo v3, "subtitleTrackList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 349
    const-string/jumbo v3, "subtitleTrackList"

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 350
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getSubtitle(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    .line 353
    :cond_3
    const-string/jumbo v3, "displayAspectRatio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 354
    const-string/jumbo v3, "displayAspectRatio"

    invoke-virtual {p0, v2, v3, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 355
    if-eqz v3, :cond_9

    .line 356
    const-string/jumbo v4, "nf-media"

    const-string/jumbo v5, "handlePropertyUpdate:: displayAspectRatio found"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    const-string/jumbo v4, "x"

    invoke-virtual {p0, v3, v4, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    .line 362
    :cond_4
    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 363
    const-string/jumbo v4, "y"

    invoke-virtual {p0, v3, v4, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    .line 366
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->calculateVideoSize()V

    .line 375
    :goto_1
    const-string/jumbo v0, "audioTrackList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 376
    const-string/jumbo v0, "audioTrackList"

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 377
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getAudioSources(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 380
    :cond_6
    const-string/jumbo v0, "defaultTrackOrderList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    const-string/jumbo v0, "defaultTrackOrderList"

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 382
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getDefaultOrderInfo(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 386
    :cond_7
    const-string/jumbo v0, "trickplayList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 387
    const-string/jumbo v0, "trickplayList"

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 388
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->toTrickplayUrlList(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/TrickplayUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTrickplayUrlList:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    :cond_8
    move v0, v1

    .line 392
    goto/16 :goto_0

    .line 369
    :cond_9
    const-string/jumbo v0, "nf-media"

    const-string/jumbo v3, "handlePropertyUpdate:: displayAspectRatio found, but it is null!!!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_a
    const-string/jumbo v0, "nf-media"

    const-string/jumbo v3, "handlePropertyUpdate:: displayAspectRatio does not exist"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isValid(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-ge v0, v2, :cond_2

    .line 530
    :cond_0
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v2, "Audio track list is empty!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 534
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 535
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v3, v3, v0

    .line 536
    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 537
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    const-string/jumbo v4, "nf-bridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio track found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " for default audio track id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getDisallowedSubtitles()[Ljava/lang/String;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_5

    move v0, v1

    .line 543
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 544
    aget-object v4, v3, v0

    if-eqz v4, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 545
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    const-string/jumbo v0, "nf-bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Default subtitle track id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not allowed! Error on NCCP side!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 553
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "none"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    .line 554
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 556
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle track id is NULL for default, no subtitles: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v1, v2

    .line 558
    goto/16 :goto_0

    .line 561
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getSubtitle(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 566
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Default is valid, no restrictions  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v1, v2

    .line 568
    goto/16 :goto_0

    .line 534
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private setCurrentAudioTrackIndex(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 397
    const-string/jumbo v0, "currentAudioTrack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const-string/jumbo v0, "currentAudioTrack"

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    if-le v0, v1, :cond_4

    .line 402
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 403
    iget v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentAudioTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    .line 420
    :cond_1
    :goto_1
    return-void

    .line 402
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio NOT found for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_1
.end method

.method private setCurrentSubtitleTrackIndex(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 424
    const-string/jumbo v0, "currentSubtitleTrack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    const-string/jumbo v0, "currentSubtitleTrack"

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    if-le v0, v1, :cond_4

    .line 428
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 429
    iget v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    invoke-interface {v3}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 430
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentSubtitleTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    .line 445
    :cond_1
    :goto_1
    return-void

    .line 428
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle NOT found for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1
.end method

.method private toTrickplayUrlList(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 633
    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Empty trickplayUrlList"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-array v0, v0, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    .line 641
    :goto_0
    return-object v0

    .line 636
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    .line 637
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 638
    new-instance v2, Lcom/netflix/mediaclient/media/TrickplayUrl;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;-><init>(Lorg/json/JSONObject;)V

    aput-object v2, v1, v0

    .line 639
    const-string/jumbo v2, "nf-bridge"

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 641
    goto :goto_0
.end method


# virtual methods
.method public cacheFlush()V
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheFlush;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheFlush;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1328
    return-void
.end method

.method public cachePause()V
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CachePause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/CachePause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1333
    return-void
.end method

.method public cacheResume()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheResume;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheResume;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1338
    return-void
.end method

.method public cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheSchedule;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheSchedule;-><init>([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1343
    return-void
.end method

.method public changePlayer(Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 2

    .prologue
    .line 1195
    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;-><init>(Lcom/netflix/mediaclient/media/PlayerType;)V

    .line 1196
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1197
    return-void
.end method

.method public close(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Close;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Close;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1150
    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    return v0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getCurrentVideoBitrate()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoBitrate:I

    return v0
.end method

.method public getCurrentVideoStream()Lcom/netflix/mediaclient/javabridge/StreamInfo;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    return-object v0
.end method

.method public getDisplayAspectRatio()F
    .locals 2

    .prologue
    .line 1290
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    if-nez v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    .line 1293
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getDisplayAspectRatioDimension()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1368
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    return v0
.end method

.method public getMediaPosition()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "media"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-string/jumbo v0, "nrdp.media"

    return-object v0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 971
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media:: METADATA"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-nez v1, :cond_1

    .line 979
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media:: Current video stream info uknown"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    move v6, v0

    move v5, v0

    .line 986
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getBitsPerSecond()I

    move-result v1

    div-int/lit16 v4, v1, 0x400

    .line 994
    :goto_1
    const-string/jumbo v1, ""

    .line 996
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v2, v2

    iget v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    if-le v2, v7, :cond_4

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    const/4 v7, -0x1

    if-le v2, v7, :cond_4

    .line 997
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    iget v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    aget-object v7, v2, v7

    .line 998
    if-eqz v7, :cond_3

    .line 999
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getNumChannels()I

    move-result v2

    .line 1000
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v1

    .line 1001
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    move v9, v1

    move v8, v2

    .line 1013
    :goto_3
    new-instance v0, Lcom/netflix/mediaclient/media/PlayoutMetadata;

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/media/PlayoutMetadata;-><init>(IIIIZZLjava/lang/String;II)V

    .line 1015
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    const-string/jumbo v1, "nf-bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media:: getPlayoutMetadata:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    return-object v0

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getBitsPerSecond()I

    move-result v1

    div-int/lit16 v3, v1, 0x400

    .line 982
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isHighDefinition()Z

    move-result v5

    .line 983
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isSuperHighDefinition()Z

    move-result v6

    goto :goto_0

    .line 989
    :cond_2
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media:: Target video stream info uknown"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    goto :goto_1

    .line 1003
    :cond_3
    const-string/jumbo v2, "nf-bridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Audio source is null for  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_2

    .line 1006
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-nez v2, :cond_5

    .line 1007
    const-string/jumbo v2, "nf-bridge"

    const-string/jumbo v7, "audio list is null "

    invoke-static {v2, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    move v9, v0

    move v8, v0

    goto :goto_3

    .line 1009
    :cond_5
    const-string/jumbo v2, "nf-bridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio list has less elements "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " than current index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    move v9, v0

    move v8, v0

    goto/16 :goto_3
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mState:I

    return v0
.end method

.method public getSubtitleOutputMode()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleOutputMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getTrickplayUrlList()[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTrickplayUrlList:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 3

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-nez v0, :cond_1

    .line 1050
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const-string/jumbo v0, "nf-media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVideoHeight:: Current video stream info unknown, use display aspect ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    .line 1059
    :goto_0
    return v0

    .line 1056
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    const-string/jumbo v0, "nf-media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current video stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getFrameHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-nez v0, :cond_1

    .line 1029
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const-string/jumbo v0, "nf-media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVideoHeight:: Current video stream info unknown, use display aspect ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    .line 1038
    :goto_0
    return v0

    .line 1035
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    const-string/jumbo v0, "nf-media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current video stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getFrameWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getWatermark()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    return-object v0
.end method

.method public open(JLcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;JZLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V
    .locals 15

    .prologue
    .line 1132
    iget-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v4}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/javabridge/invoke/media/Open;

    new-instance v8, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;

    iget-object v6, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v6}, Lcom/netflix/mediaclient/javabridge/Bridge;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v8, v6, v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Z)V

    move-wide/from16 v6, p1

    move-wide/from16 v9, p5

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-direct/range {v5 .. v13}, Lcom/netflix/mediaclient/javabridge/invoke/media/Open;-><init>(JLcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;JLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1133
    const-string/jumbo v4, "nf-bridge"

    const-string/jumbo v5, "invokeMethod just called..."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Pause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/Pause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1156
    return-void
.end method

.method public play(J)V
    .locals 3

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Play;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Play;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1145
    return-void
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    .line 273
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string/jumbo v1, "nf-bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processUpdate: handle type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processUpdate: handle prop update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->handlePropertyUpdate(Lorg/json/JSONObject;)I

    move-result v0

    .line 292
    :goto_0
    return v0

    .line 284
    :cond_2
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;

    invoke-direct {v1, p1, p3}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1348
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v8

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;

    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1349
    return-void
.end method

.method public reportSubtitleQoe(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;

    invoke-direct {v1, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1354
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1103
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 1104
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    .line 1105
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 1106
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    .line 1107
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    .line 1108
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    .line 1109
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    .line 1110
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    .line 1111
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    .line 1112
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mState:I

    .line 1113
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoBitrate:I

    .line 1114
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    .line 1115
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    .line 1116
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    .line 1117
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    .line 1118
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    .line 1119
    return-void
.end method

.method public seekTo(IZ)V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;-><init>(IZ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1212
    return-void
.end method

.method public selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)Z
    .locals 2

    .prologue
    .line 1221
    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;-><init>(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)V

    .line 1222
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method public setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V
    .locals 0

    .prologue
    .line 1180
    return-void
.end method

.method public setBytesReport(II)V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetBytesReport;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetBytesReport;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1139
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "invokeMethod setBytesReport just called..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method public setCacheManifestType(I)V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetCacheManifestType;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetCacheManifestType;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1313
    return-void
.end method

.method public setMaxCacheByteSize(I)V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheByteSize;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheByteSize;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1318
    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheSize;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheSize;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1323
    return-void
.end method

.method public setMaxVideoBufferSize(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1228
    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetStreamingBuffer;

    invoke-direct {v0, v1, p1, v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetStreamingBuffer;-><init>(ZII)V

    .line 1229
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1230
    return-void
.end method

.method public setNetworkProfile(I)V
    .locals 4

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "nrdp.media"

    const-string/jumbo v2, "networkProfile"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V
    .locals 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1364
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v0, "nf-bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sets property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamingQoe(Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 1234
    if-eqz p1, :cond_1

    .line 1237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1238
    const-string/jumbo v1, "enableHTTPSAuth"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1242
    if-eqz p3, :cond_0

    .line 1243
    const-string/jumbo v1, "minInitVideoBitrate"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1244
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "minInitVideoBitrate set to 200"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/javabridge/invoke/SetConfigData;

    const-string/jumbo v3, "streaming"

    invoke-direct {v2, v0, v3}, Lcom/netflix/mediaclient/javabridge/invoke/SetConfigData;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :cond_1
    :goto_0
    return-void

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Failed to create JSON object, unable to setConfigData"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSubtitleOutputMode(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;)V
    .locals 4

    .prologue
    .line 1258
    if-nez p1, :cond_0

    .line 1259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output mode can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "subtitleOutputMode"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleOutputMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    .line 1264
    return-void
.end method

.method public setSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)V
    .locals 4

    .prologue
    .line 1274
    if-nez p1, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subtitle profile can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "subtitleProfile"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 1280
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1190
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "invokeMethod just called setSurface..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return-void
.end method

.method public setThrotteled(Z)V
    .locals 4

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "nrdp.media"

    const-string/jumbo v2, "throttled"

    const-string/jumbo v3, "false"

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    return-void
.end method

.method public setVOapi(JJ)V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1217
    return-void
.end method

.method public setVideoBitrateRange(II)V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoBitrateRanges;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoBitrateRanges;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1185
    return-void
.end method

.method public setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 6

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoResolutionRangeToPlayer;

    .line 1306
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMinWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMinHeight()I

    move-result v4

    .line 1307
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoResolutionRangeToPlayer;-><init>(IIII)V

    .line 1305
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1308
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Stop;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/Stop;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1166
    return-void
.end method

.method public swim(IZIZ)V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;-><init>(IZIZ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1301
    return-void
.end method

.method public unpause()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Unpause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/Unpause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1161
    return-void
.end method

.method public updateCellLevelBandwidthMargin(II)V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 1374
    return-void
.end method

.method public volumeChange(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 2

    .prologue
    .line 1171
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;-><init>(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0
.end method
