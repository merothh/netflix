.class Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

.field final synthetic val$e:Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->this$0:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->val$e:Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->this$0:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->val$e:Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;->onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 467
    return-void
.end method
