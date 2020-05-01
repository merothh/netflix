.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;
.super Ljava/lang/Object;
.source "MediaDecoderPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isJPlayerThreadConfigured()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const-string/jumbo v3, "MediaThreadPriority"

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getThreadPriority(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const-string/jumbo v2, "MediaPipe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating thread priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const-string/jumbo v5, "MediaThreadPriority"

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getThreadPriority(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-wide/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;

    invoke-virtual {v8, v4, v5, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;->ShowHearbeat(JJ)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v8

    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v9

    if-ne v8, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->pause()J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "paused"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommandDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-wide v10, v2

    move-wide v12, v4

    move v9, v6

    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v3

    if-eq v2, v3, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v2, v10

    move-wide v4, v12

    move v6, v9

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "MediaPipe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to setPriority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v9

    if-ne v8, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "unpaused"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v9

    if-ne v8, v9, :cond_3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v3, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->flush()V

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v6, 0x1

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Stopping MainThread now"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$102(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommandDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v2, 0x64

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->renderOutput(Z)Z

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stopped"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;->onStop()V

    :cond_7
    return-void

    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get un-documented exception as a result of flush() "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "flushed"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Thead interrupted"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v10

    move-wide v4, v12

    move v6, v9

    goto/16 :goto_1

    :cond_9
    if-nez v7, :cond_1c

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v2

    if-ltz v2, :cond_b

    sget-boolean v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v3

    if-lt v2, v3, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :catch_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get un-documented exception as a result of dequeueInputBuffer() "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;->onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;

    move-result-object v6

    iget v2, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    if-gtz v2, :cond_c

    iget v2, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    if-eqz v2, :cond_11

    :cond_c
    const/4 v8, 0x0

    iget v2, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v7

    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_d

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QueueInput "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms flags "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    if-eqz v2, :cond_e

    iget-wide v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->timestamp:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v18

    cmp-long v2, v4, v18

    if-gez v2, :cond_e

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "STAT:DEC input late "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v0, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->timestamp:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    iget v4, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->offset:I

    iget v5, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    iget-wide v6, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->timestamp:J

    const-wide/16 v18, 0x3e8

    mul-long v6, v6, v18

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v9, :cond_10

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Had EOS after flush"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_0
    move v14, v7

    goto/16 :goto_7

    :sswitch_1
    const/4 v8, 0x2

    move v14, v7

    goto/16 :goto_7

    :sswitch_2
    const/4 v8, 0x1

    move v14, v7

    goto/16 :goto_7

    :sswitch_3
    const/4 v8, 0x4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Had EOS"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v7

    goto/16 :goto_7

    :catch_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get un-documented exception as a result of queueInputBuffer() "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    const/4 v9, 0x0

    :cond_10
    move-wide v4, v12

    move v6, v9

    move v7, v14

    :goto_8
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v2, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_12

    move-wide v2, v10

    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->renderOutput(Z)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    :cond_11
    iget v2, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    if-gez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Had error endPlayback"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_5
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get un-documented exception as a result of dequeueOutputBuffer() "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    const/4 v8, -0x3

    if-ne v3, v8, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OUTPUT_BUFFERS_CHANGED"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$1100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V

    move-wide v2, v10

    goto :goto_9

    :cond_13
    const/4 v8, -0x2

    if-ne v3, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OUTPUT_FORMAT_CHANGED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-wide v2, v10

    goto/16 :goto_9

    :cond_15
    if-ltz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v8, v8, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v8

    :try_start_c
    sget-boolean v9, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->$assertionsDisabled:Z

    if-nez v9, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I

    move-result v9

    if-lt v3, v9, :cond_16

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :catchall_2
    move-exception v2

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    :cond_16
    :try_start_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v9, v9, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v9, v9, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aput-object v2, v9, v3

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const-wide/16 v8, 0x0

    cmp-long v8, v10, v8

    if-gtz v8, :cond_17

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DequeueOutputBuffer "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " size= "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " @"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " ms"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    if-eqz v3, :cond_18

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v12

    cmp-long v3, v8, v12

    if-gtz v3, :cond_18

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "STAT:DEC output late "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v9, v9, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " ms"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    const/4 v2, 0x1

    int-to-long v2, v2

    cmp-long v2, v10, v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;->onDecoderStarted()V

    :cond_19
    move-wide v2, v10

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " is not valid"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v10

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->renderOutput(Z)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    :catchall_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catch_6
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Thead interrupted"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_7
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get un-documented exception as a result of stop/releas() "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1c
    move-wide v4, v12

    move v6, v9

    goto/16 :goto_8

    :cond_1d
    move-wide v10, v2

    move-wide v12, v4

    move v9, v6

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x100 -> :sswitch_3
    .end sparse-switch
.end method
