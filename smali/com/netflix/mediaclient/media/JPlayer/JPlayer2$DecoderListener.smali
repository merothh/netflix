.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;
.super Ljava/lang/Object;
.source "JPlayer2.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDecoderReady(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO init\'d"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO init\'d"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDecoderStarted(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEndOfStream(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized onError(ZILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$702(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFlushed(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPasued(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSampleRendered(ZJJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
