.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$countToNotify:I

.field final synthetic val$elapsedToNotify:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IJ)V
    .locals 1

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$countToNotify:I

    iput-wide p3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$elapsedToNotify:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$countToNotify:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$elapsedToNotify:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onDroppedFrames(IJ)V

    .line 604
    return-void
.end method
