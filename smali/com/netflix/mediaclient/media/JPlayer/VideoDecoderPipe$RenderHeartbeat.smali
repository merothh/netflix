.class Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;
.super Ljava/lang/Object;
.source "VideoDecoderPipe.java"


# static fields
.field static final HRATBEAT_INTERVAL:J = 0x1388L


# instance fields
.field private mLastBeat:J

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)V
    .locals 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->mLastBeat:J

    .line 269
    return-void
.end method


# virtual methods
.method ShowHearbeat()V
    .locals 6

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->mLastBeat:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 273
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->mLastBeat:J

    .line 274
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "render alive, rendered frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",skipped frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-void
.end method
