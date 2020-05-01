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

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    return-void
.end method

.method private calculateVideoSize()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getDisplaySize()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "nf-media"

    const-string/jumbo v1, "Screen size null, use default calculation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    if-nez v0, :cond_2

    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x438

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

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

    :cond_4
    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    if-nez v1, :cond_5

    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

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

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Empty audio source list"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/AudioSource;

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getDefaultOrderInfo(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v1, v1

    if-ge v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Restrictions not found! Audio track list is empty!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_2
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "No defaults found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;-><init>(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_4

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

    :cond_4
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->isValid(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "nf-bridge"

    const-string/jumbo v4, "Failed to parse default "

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDisplaySize()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getDisplaySize()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getSubtitle(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    goto :goto_0
.end method

.method private getSubtitle(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Empty subtitle list"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/Subtitle;

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const-string/jumbo v1, "data"

    invoke-virtual {p0, p1, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media::processUpdate: Data not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v3, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Nccp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: NCCP Type!!!"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Uknown event for NCCP type!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v3, "Media::processUpdate: Event found NccpError"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    if-eqz v1, :cond_4

    instance-of v0, v1, Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "background"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: background NCCP error"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Uknown event for background type!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v3, "Media::processUpdate: Event found NccpError"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "audioTrackChanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found AudioTrackChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;->getTrackIndex()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "buffering"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Buffering"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v4, "bufferrange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found BufferRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "error"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Error;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Error;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "exception"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Exception"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Exception;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Exception;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "nccperror"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found NccpError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v4, "newStream"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: Event found NewStream, process"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/NewStream;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/NewStream;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/media/NewStream;->getStreamInfo()Lcom/netflix/mediaclient/javabridge/StreamInfo;

    move-result-object v3

    if-nez v3, :cond_e

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Stream is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getStreamType()I

    move-result v4

    if-ne v4, v5, :cond_f

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v4, "Video stream"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Not vdeo stream, ignore"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v4, "removeSubtitle"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found RemoveSubtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/RemoveSubtitle;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/RemoveSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v4, "setvideobitraterange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SetVideoBitrateRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v4, "setvideoresolutionrange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SetVideoResolutionRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v4, "showSubtitle"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found ShowSubtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v4, "skip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Skip. NOOP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v4, "statechanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Statechanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v4, "streamSelected"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v4, "Media::processUpdate: Event found StreamSelected"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/media/StreamSelected;->getStreamInfo()Lcom/netflix/mediaclient/javabridge/StreamInfo;

    move-result-object v3

    if-nez v3, :cond_17

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Stream is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getStreamType()I

    move-result v4

    if-ne v4, v5, :cond_18

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v4, "Video stream"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Not vdeo stream, ignore"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v4, "subtitledata"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SubtitleData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v4, "subtitleTrackChanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found SubtitleTrackChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v4, "updatePts"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found UpdatePts. Consuming."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;->getPts()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v4, "updateVideoBitrate"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/UpdateVideoBitrate;->getBitsPerSecond()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoBitrate:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1d

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

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v4, "videoWindowChanged"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found VideoWindowChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v4, "warning"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found Warning"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/Warning;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/Warning;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v4, "bufferingComplete"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found bufferingComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    const-string/jumbo v0, "bufferingComplete"

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    const-string/jumbo v4, "openComplete"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found openComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v3, "endOfStream"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found endOfStream"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    const-string/jumbo v0, "endOfStream"

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v3, "underflow"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Media::processUpdate: Event found underflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    const-string/jumbo v0, "underflow"

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

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

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "properties"

    invoke-virtual {p0, p1, v2, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "handlePropertyUpdate:: properties does not exist"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->setCurrentAudioTrackIndex(Lorg/json/JSONObject;)V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->setCurrentSubtitleTrackIndex(Lorg/json/JSONObject;)V

    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "state"

    invoke-virtual {p0, v2, v3, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mState:I

    :cond_1
    const-string/jumbo v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "duration"

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    :cond_2
    const-string/jumbo v3, "subtitleTrackList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "subtitleTrackList"

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getSubtitle(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    :cond_3
    const-string/jumbo v3, "displayAspectRatio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "displayAspectRatio"

    invoke-virtual {p0, v2, v3, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string/jumbo v4, "nf-media"

    const-string/jumbo v5, "handlePropertyUpdate:: displayAspectRatio found"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "x"

    invoke-virtual {p0, v3, v4, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    :cond_4
    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "y"

    invoke-virtual {p0, v3, v4, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->calculateVideoSize()V

    :goto_1
    const-string/jumbo v0, "audioTrackList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "audioTrackList"

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getAudioSources(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    :cond_6
    const-string/jumbo v0, "defaultTrackOrderList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "defaultTrackOrderList"

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getDefaultOrderInfo(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    :cond_7
    const-string/jumbo v0, "trickplayList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "trickplayList"

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->toTrickplayUrlList(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/TrickplayUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTrickplayUrlList:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "nf-media"

    const-string/jumbo v3, "handlePropertyUpdate:: displayAspectRatio found, but it is null!!!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "nf-media"

    const-string/jumbo v3, "handlePropertyUpdate:: displayAspectRatio does not exist"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isValid(Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-ge v0, v2, :cond_2

    :cond_0
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v2, "Audio track list is empty!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v3, v3, v0

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

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

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

    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getDisallowedSubtitles()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-object v4, v3, v0

    if-eqz v4, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

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

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

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

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getSubtitle(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

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

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private setCurrentAudioTrackIndex(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v1, -0x1

    const-string/jumbo v0, "currentAudioTrack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "currentAudioTrack"

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    iget v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_1
.end method

.method private setCurrentSubtitleTrackIndex(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v1, -0x1

    const-string/jumbo v0, "currentSubtitleTrack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "currentSubtitleTrack"

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    iget v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    invoke-interface {v3}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1
.end method

.method private toTrickplayUrlList(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Empty trickplayUrlList"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    new-instance v2, Lcom/netflix/mediaclient/media/TrickplayUrl;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;-><init>(Lorg/json/JSONObject;)V

    aput-object v2, v1, v0

    const-string/jumbo v2, "nf-bridge"

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cacheFlush()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheFlush;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheFlush;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public cachePause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CachePause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/CachePause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public cacheResume()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheResume;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheResume;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheSchedule;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/CacheSchedule;-><init>([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public changePlayer(Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/ChangePlayer;-><init>(Lcom/netflix/mediaclient/media/PlayerType;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public close(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Close;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Close;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    return v0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getCurrentVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoBitrate:I

    return v0
.end method

.method public getCurrentVideoStream()Lcom/netflix/mediaclient/javabridge/StreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    return-object v0
.end method

.method public getDisplayAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    return v0
.end method

.method public getMediaPosition()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "media"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.media"

    return-object v0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 11

    const/4 v0, 0x0

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media:: METADATA"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-nez v1, :cond_1

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media:: Current video stream info uknown"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    move v6, v0

    move v5, v0

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTargetVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getBitsPerSecond()I

    move-result v1

    div-int/lit16 v4, v1, 0x400

    :goto_1
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v2, v2

    iget v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    if-le v2, v7, :cond_4

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    const/4 v7, -0x1

    if-le v2, v7, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    iget v7, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    aget-object v7, v2, v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getNumChannels()I

    move-result v2

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v1

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    move v9, v1

    move v8, v2

    :goto_3
    new-instance v0, Lcom/netflix/mediaclient/media/PlayoutMetadata;

    iget v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/media/PlayoutMetadata;-><init>(IIIIZZLjava/lang/String;II)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getBitsPerSecond()I

    move-result v1

    div-int/lit16 v3, v1, 0x400

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isHighDefinition()Z

    move-result v5

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->isSuperHighDefinition()Z

    move-result v6

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Media:: Target video stream info uknown"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    goto :goto_1

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

    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-nez v2, :cond_5

    const-string/jumbo v2, "nf-bridge"

    const-string/jumbo v7, "audio list is null "

    invoke-static {v2, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    move v9, v0

    move v8, v0

    goto :goto_3

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

    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mState:I

    return v0
.end method

.method public getSubtitleOutputMode()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleOutputMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getTrickplayUrlList()[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mTrickplayUrlList:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getFrameHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/StreamInfo;->getFrameWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getWatermark()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    return-object v0
.end method

.method public open(JLcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;JZLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V
    .locals 15

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

    const-string/jumbo v4, "nf-bridge"

    const-string/jumbo v5, "invokeMethod just called..."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Pause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/Pause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public play(J)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Play;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Play;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 4

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->handlePropertyUpdate(Lorg/json/JSONObject;)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;

    invoke-direct {v1, p1, p3}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetFailedSubtitleDownloadUrl;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

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

    return-void
.end method

.method public reportSubtitleQoe(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;

    invoke-direct {v1, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleQoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrackIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrackIndex:I

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentAudioTrack:Lcom/netflix/mediaclient/media/AudioSource;

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDuration:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mPosition:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mState:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoBitrate:I

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mCurrentVideoStream:Lcom/netflix/mediaclient/javabridge/StreamInfo;

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mDisplayAspectRatioX:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameX:I

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mFrameY:I

    return-void
.end method

.method public seekTo(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;-><init>(IZ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)Z
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;-><init>(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V
    .locals 0

    return-void
.end method

.method public setBytesReport(II)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetBytesReport;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetBytesReport;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "invokeMethod setBytesReport just called..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCacheManifestType(I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetCacheManifestType;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetCacheManifestType;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setMaxCacheByteSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheByteSize;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheByteSize;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheSize;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetMaxCacheSize;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setMaxVideoBufferSize(I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetStreamingBuffer;

    invoke-direct {v0, v1, p1, v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetStreamingBuffer;-><init>(ZII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setNetworkProfile(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "nrdp.media"

    const-string/jumbo v2, "networkProfile"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamingQoe(Ljava/lang/String;ZZ)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "enableHTTPSAuth"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string/jumbo v1, "minInitVideoBitrate"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "minInitVideoBitrate set to 200"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Failed to create JSON object, unable to setConfigData"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSubtitleOutputMode(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output mode can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleOutputMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    return-void
.end method

.method public setSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subtitle profile can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "invokeMethod just called setSurface..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setThrotteled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "nrdp.media"

    const-string/jumbo v2, "throttled"

    const-string/jumbo v3, "false"

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVOapi(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setVideoBitrateRange(II)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoBitrateRanges;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoBitrateRanges;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoResolutionRangeToPlayer;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMinWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMinHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoResolutionRangeToPlayer;-><init>(IIII)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Stop;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/Stop;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public swim(IZIZ)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;-><init>(IZIZ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public unpause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/Unpause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/Unpause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public updateCellLevelBandwidthMargin(II)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/UpdateCellLevelBandwidthMargin;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public volumeChange(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMedia;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;-><init>(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0
.end method
