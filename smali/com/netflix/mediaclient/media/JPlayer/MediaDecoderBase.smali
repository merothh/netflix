.class public abstract Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# static fields
.field protected static final AUDIO_DECODER_INPUT_ERROR:I = 0x1

.field protected static final AUDIO_DECODER_OUPUT_ERROR:I = 0x3

.field static final BUFFER_FLAG_CSD:I = 0x2

.field static final BUFFER_FLAG_EOS:I = 0x4

.field static final BUFFER_FLAG_SYNC:I = 0x1

.field static final MIME_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field static final MIME_AVC:Ljava/lang/String; = "video/avc"

.field static final MIME_EAC3:Ljava/lang/String; = "audio/eac3"

.field static final STATE_INIT:I = -0x1

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x1

.field static final STATE_STOPPED:I = 0x0

.field protected static final VIDEO_DECODER_INPUT_ERROR:I = 0x2

.field protected static final VIDEO_DECODER_OUPUT_ERROR:I = 0x4


# instance fields
.field protected mAudioUseGetTimestampAPI:Z

.field protected mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

.field protected mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

.field protected mMime:Ljava/lang/String;

.field protected mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

.field protected volatile mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableAudioUseGetTimestampAPI()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mAudioUseGetTimestampAPI:Z

    return-void
.end method

.method public abstract flush()V
.end method

.method public getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public isDecoderCreated()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPauseded()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract pause()V
.end method

.method public removeEventListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    return-void
.end method

.method public abstract restart()V
.end method

.method protected setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    return-void
.end method

.method public setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unpause()V
.end method
