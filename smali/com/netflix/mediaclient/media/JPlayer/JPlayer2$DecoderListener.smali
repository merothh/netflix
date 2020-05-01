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

    .prologue
    .line 190
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDecoderReady(Z)V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 193
    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO init\'d"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO init\'d"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDecoderStarted(Z)V
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 213
    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEndOfStream(Z)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    .line 253
    if-eqz p1, :cond_0

    .line 254
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized onError(ZILjava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ILjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$702(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFlushed(Z)V
    .locals 2

    .prologue
    .line 243
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 244
    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPasued(Z)V
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 235
    :try_start_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "AUDIO paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VIDEO paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSampleRendered(ZJJ)V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz p1, :cond_0

    .line 232
    :cond_0
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
