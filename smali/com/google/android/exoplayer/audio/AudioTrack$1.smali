.class Lcom/google/android/exoplayer/audio/AudioTrack$1;
.super Ljava/lang/Thread;
.source "AudioTrack.java"


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/audio/AudioTrack;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$1;->this$0:Lcom/google/android/exoplayer/audio/AudioTrack;

    iput-object p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$1;->this$0:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->access$200(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 780
    return-void

    .line 778
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$1;->this$0:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->access$200(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
