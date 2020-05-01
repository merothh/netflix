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

    const-wide/16 v0, -0x1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;J)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    return-void
.end method

.method public get()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    goto :goto_0
.end method

.method public pause()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    return-wide v0
.end method

.method public unpause()J
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mRunning:Z

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    return-wide v0
.end method

.method public update(J)V
    .locals 3

    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastPts:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->mLastUpdateTime:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->unpause()J

    return-void
.end method
