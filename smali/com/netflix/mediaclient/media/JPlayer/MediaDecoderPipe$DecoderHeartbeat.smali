.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;
.super Ljava/lang/Object;
.source "MediaDecoderPipe.java"


# static fields
.field static final HRATBEAT_INTERVAL:J = 0x1388L


# instance fields
.field private mLastBeat:J

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V
    .locals 2

    .prologue
    .line 664
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;->mLastBeat:J

    .line 666
    return-void
.end method


# virtual methods
.method ShowHearbeat(JJ)V
    .locals 7

    .prologue
    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 669
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;->mLastBeat:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 670
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;->mLastBeat:J

    .line 671
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decoder alive, received frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",decoded frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    return-void
.end method
