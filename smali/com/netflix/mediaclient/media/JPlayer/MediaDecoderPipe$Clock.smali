.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;
.super Ljava/lang/Object;
.source "MediaDecoderPipe.java"


# instance fields
.field private mLastPts:J

.field private mLastUpdateTime:J

.field private mRunning:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 617
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    .line 619
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    .line 621
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;J)V
    .locals 2

    .prologue
    .line 622
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    .line 626
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 628
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    .line 629
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    .line 630
    return-void
.end method

.method public get()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 632
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 633
    const-wide/16 v0, -0x1

    .line 639
    :goto_0
    return-wide v0

    .line 634
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 636
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 639
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    goto :goto_0
.end method

.method public pause()J
    .locals 6

    .prologue
    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 648
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 649
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    .line 651
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    .line 652
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    .line 653
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    return-wide v0
.end method

.method public unpause()J
    .locals 2

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    .line 657
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    return-wide v0
.end method

.method public update(J)V
    .locals 3

    .prologue
    .line 642
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    .line 644
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->unpause()J

    .line 645
    return-void
.end method
