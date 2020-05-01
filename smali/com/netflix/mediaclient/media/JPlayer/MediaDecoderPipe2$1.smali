.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;
.super Landroid/os/Handler;
.source "MediaDecoderPipe2.java"


# instance fields
.field frameReceived:J

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->frameReceived:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "outputthread handler had unknown message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const/4 v2, -0x1

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 264
    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "inputthread pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get un-documented exception as a result of dequeueInputBuffer() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    .line 261
    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-interface {v3, v4, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onError(ZILjava/lang/String;)V

    :cond_2
    move v0, v2

    goto :goto_1

    .line 261
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get invlaid buffer index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " as a result of dequeueInputBuffer()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v2, v0, v1

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;->onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    move-result-object v6

    .line 280
    iget v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-gtz v0, :cond_6

    iget v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    if-eqz v0, :cond_11

    .line 281
    :cond_6
    iget v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "got codec change, need to terminate the pipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->terminateRenderer()V

    goto/16 :goto_0

    .line 287
    :cond_7
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->frameReceived:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gtz v0, :cond_8

    .line 288
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QueueInput "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v0, :cond_9

    iget-wide v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_9

    .line 295
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "STAT:DEC input late "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->frameReceived:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v4, v4, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v7, v7, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_9
    const/4 v0, 0x0

    .line 300
    iget v3, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    .line 301
    const/4 v0, 0x1

    .line 302
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "got decoder input BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v7, v0

    .line 305
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->frameReceived:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_b

    iget v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "got decoder input BUFFER_FLAG_CODEC_CONFIG during playback, ignored"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 312
    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    new-instance v3, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 314
    const/4 v0, 0x1

    iput v0, v3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 316
    iget-object v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteEncrypted:[I

    array-length v0, v0

    if-nez v0, :cond_d

    .line 318
    const/16 v0, 0x10

    new-array v2, v0, [B

    .line 319
    const/4 v0, 0x0

    :goto_4
    array-length v4, v2

    if-ge v0, v4, :cond_c

    .line 320
    const/4 v4, 0x0

    aput-byte v4, v2, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 322
    :cond_c
    iput-object v2, v3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 323
    iput-object v2, v3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 324
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    aput v4, v0, v2

    .line 325
    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 326
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v0, v2

    .line 327
    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 328
    const/4 v0, 0x1

    iput v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 347
    :goto_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    iget v2, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    iget-wide v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    iget v6, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    :goto_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 364
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->frameReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->frameReceived:J

    .line 365
    if-nez v7, :cond_0

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 330
    :cond_d
    :try_start_2
    iget-object v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 331
    iget-object v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 332
    iget-object v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteInClear:[I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 333
    iget-object v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteEncrypted:[I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 334
    iget v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nSubsample:I

    iput v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 355
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get un-documented exception as a result of queueInputBuffer() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    .line 359
    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-interface {v2, v3, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onError(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_e
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0, v2, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    .line 353
    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    iget v2, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    iget v3, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    iget-wide v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    iget v6, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 359
    :cond_10
    const/4 v0, 0x4

    goto :goto_7

    .line 375
    :cond_11
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 383
    :cond_12
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    .line 390
    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 391
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "flush input done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 395
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "input is initialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderReady(Z)V

    goto/16 :goto_0

    .line 402
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "input is stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
