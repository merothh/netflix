.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
.super Ljava/lang/Object;
.source "MediaDecoderPipe2.java"


# static fields
.field private static final STATE_FLUSHED:I = 0x5

.field private static final STATE_FLUSHING:I = 0x4

.field private static final STATE_PAUSED:I = 0x1

.field private static final STATE_PAUSING:I = 0x2

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_STOPPED:I = 0x7

.field private static final STATE_STOPPING:I = 0x6


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V
    .locals 1

    .prologue
    .line 654
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I

    return-void
.end method


# virtual methods
.method declared-synchronized isFlushed()Z
    .locals 2

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isFlushing()Z
    .locals 2

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isPaused()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 684
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isPausing()Z
    .locals 2

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isPlaying()Z
    .locals 2

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onFlushed()V
    .locals 1

    .prologue
    .line 673
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onFlushing()V
    .locals 1

    .prologue
    .line 670
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onPaused()V
    .locals 1

    .prologue
    .line 667
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onPausing()V
    .locals 1

    .prologue
    .line 664
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onPlaying()V
    .locals 1

    .prologue
    .line 676
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onStopped()V
    .locals 1

    .prologue
    .line 679
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onStopping()V
    .locals 1

    .prologue
    .line 678
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
