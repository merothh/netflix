.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;
.super Landroid/os/Handler;
.source "MediaDecoder2Audio.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "RenderThreadAudeo had unknown message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->onPlaying()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "render state play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v0, v1

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    iget v0, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "renderer got buffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    invoke-interface {v0, v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onEndOfStream(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->startRenderer()V

    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v4

    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "render state is not play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MediaDecoder2Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioHeaderPosition() has Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x14

    :try_start_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/os/Handler;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->pause()J

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->onPaused()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "render state pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    invoke-interface {v0, v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onPasued(Z)V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :pswitch_2
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "render state flushing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->flush()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_a
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->startRenderer()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "render state flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "mAudioTrack already stopped/uninitialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    invoke-interface {v0, v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onFlushed(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->onStopped()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "render state stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :cond_7
    move-object v3, v6

    move-object v2, v6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
