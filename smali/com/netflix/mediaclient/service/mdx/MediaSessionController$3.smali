.class Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;
.super Landroid/media/VolumeProvider;
.source "MediaSessionController.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;III)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 323
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "nf_media_session_controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdjustVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    if-ne p1, v3, :cond_2

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$400(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$402(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;I)I

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$400(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateCurrentVolume(IZ)V

    .line 337
    :cond_1
    :goto_1
    return-void

    .line 328
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$400(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$402(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;I)I

    goto :goto_0

    .line 331
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string/jumbo v0, "nf_media_session_controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdjustVolume strange direction, skipping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSetVolumeTo(I)V
    .locals 3

    .prologue
    .line 342
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string/jumbo v0, "nf_media_session_controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetVolumeTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    mul-int/lit8 v1, p1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateCurrentVolume(IZ)V

    .line 346
    return-void
.end method
