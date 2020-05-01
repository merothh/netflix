.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;
.super Ljava/lang/Object;
.source "JPlayer.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoderStarted()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isPauseded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->unpause()V

    .line 239
    :cond_0
    return-void
.end method

.method public onStartRender()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 216
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "mVideoPipe2 is current"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;->onSurface2Visibility(Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->stop()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$602(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_2
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "mVideoPipe1 is current"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;->onSurface2Visibility(Z)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isStopped()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->stop()V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$802(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
