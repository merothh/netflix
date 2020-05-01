.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;
.super Landroid/os/Handler;
.source "MediaDecoderPipe2.java"


# instance fields
.field frameDecoded:J

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 415
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x4

    const-wide/16 v8, 0x3e8

    const/4 v1, 0x1

    .line 420
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "outputthread handler had unknown message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void

    .line 422
    :pswitch_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "outputthread pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 431
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 437
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 492
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get un-documented exception as a result of dequeueOutputBuffer() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_2
    const/4 v4, -0x3

    if-ne v3, v4, :cond_3

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    goto :goto_1

    .line 443
    :cond_3
    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 446
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OUTPUT_FORMAT_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 449
    :catch_1
    move-exception v0

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "OUTPUT_FORMAT_CHANGED, format unknown "

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 453
    :cond_4
    if-ltz v3, :cond_b

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 454
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-virtual {v4, v3, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 457
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 458
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "got decoder output BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_5
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 461
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 462
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DequeueOutputBuffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " size= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " @"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v3, :cond_7

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v4, v8

    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_7

    .line 467
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 468
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "STAT:DEC output late "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v6, v8

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_7
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    .line 474
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 475
    :goto_2
    if-gtz v2, :cond_a

    move v0, v1

    .line 482
    :cond_8
    :goto_3
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderStarted(Z)V

    goto/16 :goto_1

    :cond_9
    move v2, v1

    .line 474
    goto :goto_2

    .line 478
    :cond_a
    if-ge v2, v0, :cond_8

    move v0, v2

    goto :goto_3

    .line 490
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 499
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    .line 500
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 501
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    iput-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "flush output done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 501
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 506
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "output is initialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 512
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "output stopping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 519
    :goto_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    .line 520
    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 521
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "output is stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    :catch_2
    move-exception v0

    .line 516
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get un-documented exception as a result of stop() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 521
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
