.class Lcom/google/android/exoplayer/audio/AudioTrack$2;
.super Ljava/lang/Thread;
.source "AudioTrack.java"


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/audio/AudioTrack;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$2;->this$0:Lcom/google/android/exoplayer/audio/AudioTrack;

    iput-object p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$2;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$2;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method
