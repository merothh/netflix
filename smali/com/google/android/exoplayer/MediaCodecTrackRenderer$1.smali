.class Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

.field final synthetic val$e:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->val$e:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->val$e:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;->onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    return-void
.end method
