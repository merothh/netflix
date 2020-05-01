.class Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;
.super Landroid/os/Handler;
.source "VideoDecoderPipe.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;->ShowHearbeat()V

    .line 75
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "handler had unknown message"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const/4 v7, -0x1

    .line 78
    const/4 v6, 0x0

    .line 79
    const-wide/16 v4, 0x14

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v11, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v11

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$000(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v6, v2, v7

    .line 86
    :cond_1
    const/4 v2, -0x1

    if-eq v7, v2, :cond_12

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    if-eqz v2, :cond_12

    .line 88
    iget-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    .line 89
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v8

    .line 90
    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-gez v8, :cond_7

    .line 92
    const-wide/16 v2, 0x1e

    .line 189
    :cond_2
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$700(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z

    .line 192
    const-wide/16 v2, -0x1

    .line 193
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EOS: stopped, rendered frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",skipped frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$300(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    const-wide/16 v4, 0x3c

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    .line 199
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v4

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

    .line 202
    :cond_5
    const-wide/16 v2, 0x1e

    .line 204
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$800(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 95
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v8

    sub-long v8, v2, v8

    .line 96
    const-wide/16 v12, -0x1e

    cmp-long v10, v8, v12

    if-lez v10, :cond_c

    const/4 v10, 0x1

    .line 98
    :goto_2
    const-wide/16 v12, 0x14

    cmp-long v12, v8, v12

    if-gez v12, :cond_11

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v12}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$100(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_9

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$100(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 102
    const-wide/16 v12, 0x1e

    cmp-long v12, v4, v12

    if-ltz v12, :cond_8

    const-wide/16 v12, 0x32

    cmp-long v12, v4, v12

    if-lez v12, :cond_9

    .line 103
    :cond_8
    const-wide/16 v4, 0x1e

    .line 107
    :cond_9
    if-eqz v10, :cond_e

    .line 109
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 110
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v12, 0x0

    aput-object v12, v10, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x1

    invoke-virtual {v10, v7, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_3
    add-long/2addr v4, v8

    .line 118
    const-wide/16 v12, 0x5

    cmp-long v7, v4, v12

    if-lez v7, :cond_d

    .line 119
    const-wide/16 v12, 0x5

    sub-long/2addr v4, v12

    .line 124
    :cond_a
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v7}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$400(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 125
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v7}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "first buffer to render"

    invoke-static {v7, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v7, v7, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

    invoke-interface {v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;->onStartRender()V

    .line 127
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$402(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z

    .line 129
    :cond_b
    const-wide/16 v12, -0x14

    cmp-long v7, v8, v12

    if-gez v7, :cond_10

    .line 130
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 131
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v7}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "STAT:rendered frame "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v12}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " @"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", with delta "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", next after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v16, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    .line 167
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v7}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$508(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    .line 168
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v7, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$102(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;J)J

    .line 171
    iget v4, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z

    .line 173
    const-wide/16 v2, -0x1

    .line 174
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EOS: has flag, rendered frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",skipped frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 96
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 113
    :catch_0
    move-exception v7

    .line 114
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v7}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v7, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z

    goto/16 :goto_3

    .line 120
    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-gez v7, :cond_a

    .line 121
    const-wide/16 v4, 0xa

    goto/16 :goto_4

    .line 136
    :cond_e
    const/4 v4, 0x0

    move/from16 v16, v4

    move v4, v7

    move/from16 v7, v16

    .line 137
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v10, 0x1

    if-le v5, v10, :cond_f

    const-wide/16 v12, -0x1e

    cmp-long v5, v8, v12

    if-gtz v5, :cond_f

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v6, v2, v3

    .line 148
    iget-wide v4, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v4

    sub-long v4, v8, v4

    .line 150
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-wide/from16 v16, v4

    move v4, v3

    move-wide v2, v8

    move-wide/from16 v8, v16

    goto :goto_6

    .line 142
    :catch_1
    move-exception v2

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z

    goto :goto_7

    .line 152
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v12

    int-to-long v14, v7

    add-long/2addr v12, v14

    invoke-static {v5, v12, v13}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$502(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;J)J

    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v12

    int-to-long v14, v7

    add-long/2addr v12, v14

    invoke-static {v5, v12, v13}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$602(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;J)J

    .line 154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v10, 0x0

    aput-object v10, v5, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x1

    invoke-virtual {v5, v4, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 162
    :goto_8
    const-wide/16 v4, 0xa

    .line 163
    :try_start_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 164
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "STAT:REND frame "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v13}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " skipped "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " @"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", with delta "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", next after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-wide/from16 v16, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    goto/16 :goto_5

    .line 158
    :catch_2
    move-exception v4

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    .line 180
    :cond_11
    const-wide/16 v2, 0x5

    sub-long v2, v8, v2

    .line 181
    const-wide/16 v4, 0x32

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 183
    const-wide/16 v2, 0x32

    goto/16 :goto_1

    :cond_12
    move-wide v2, v4

    goto/16 :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
