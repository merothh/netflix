.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;
.super Landroid/os/Handler;
.source "MediaDecoder2Video.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;->ShowHearbeat()V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v3, "RenderThreadVideo had unknown message"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->USE_ANDROID_L_API:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const/4 v10, 0x0

    const-wide/16 v4, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v11, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v10, v2, v3

    :cond_2
    if-eqz v10, :cond_3

    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v6, "renderer got buffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onEndOfStream(Z)V

    :cond_3
    const/4 v2, -0x1

    if-eq v3, v2, :cond_17

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v2, :cond_17

    iget-wide v6, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-gez v2, :cond_9

    const-wide/16 v2, 0x1e

    :cond_4
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "MediaDecoder2Video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EOS: stopped, rendered frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",skipped frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x3c

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_8

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "MediaDecoder2Video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpect loop time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-wide/16 v2, 0x1e

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    sub-long v12, v6, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v8, -0x1e

    cmp-long v2, v12, v8

    if-lez v2, :cond_11

    :cond_a
    const/4 v2, 0x1

    :goto_2
    const-wide/16 v8, 0x14

    cmp-long v8, v12, v8

    if-gez v8, :cond_15

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v8, v8, v14

    if-lez v8, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v4

    sub-long v4, v6, v4

    const-wide/16 v8, 0x1e

    cmp-long v8, v4, v8

    if-ltz v8, :cond_b

    const-wide/16 v8, 0x32

    cmp-long v8, v4, v8

    if-lez v8, :cond_c

    :cond_b
    const-wide/16 v4, 0x1e

    :cond_c
    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v8, 0x0

    aput-object v8, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    add-long v8, v4, v12

    const-wide/16 v2, 0x5

    cmp-long v2, v8, v2

    if-lez v2, :cond_12

    const-wide/16 v2, 0x5

    sub-long/2addr v8, v2

    :cond_d
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v3, "first buffer to render"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$202(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v4

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onSampleRendered(ZJJ)V

    :cond_f
    const-wide/16 v2, -0x14

    cmp-long v2, v12, v2

    if-gez v2, :cond_16

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "MediaDecoder2Video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "STAT:rendered frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", with delta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", next after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v8

    move-object v4, v10

    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$508(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "MediaDecoder2Video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EOS: has flag, rendered frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",skipped frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v3, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z

    goto/16 :goto_3

    :cond_12
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gez v2, :cond_d

    const-wide/16 v8, 0xa

    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x0

    move v5, v2

    move-wide v8, v12

    move-object v4, v10

    move v2, v3

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v10, 0x1

    if-le v3, v10, :cond_14

    const-wide/16 v12, -0x1e

    cmp-long v3, v8, v12

    if-gtz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v4, v2, v3

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    sub-long v6, v8, v6

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    move-wide/from16 v16, v8

    move-wide v8, v6

    move-wide/from16 v6, v16

    goto :goto_6

    :catch_1
    move-exception v2

    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v3, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v12

    int-to-long v14, v5

    add-long/2addr v12, v14

    invoke-static {v3, v12, v13}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$502(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v12

    int-to-long v14, v5

    add-long/2addr v12, v14

    invoke-static {v3, v12, v13}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$602(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v10, 0x0

    aput-object v10, v3, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x1

    invoke-virtual {v3, v2, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    const-wide/16 v2, 0xa

    :try_start_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_10

    const-string/jumbo v10, "MediaDecoder2Video"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "STAT:REND frame "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v13}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " skipped "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " @"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, ", with delta "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", next after "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_2
    move-exception v2

    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v3, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :cond_15
    const-wide/16 v2, 0x5

    sub-long v2, v12, v2

    const-wide/16 v4, 0x32

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    const-wide/16 v2, 0x32

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v2, "MediaDecoder2Video"

    const-string/jumbo v3, "render state flushing"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$202(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v3, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v3

    monitor-enter v3

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v2

    :catchall_2
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    :cond_16
    move-wide v2, v8

    move-object v4, v10

    goto/16 :goto_5

    :cond_17
    move-wide v2, v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
