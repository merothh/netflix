.class Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionController.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 149
    const-string/jumbo v0, "nf_media_session_controller"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 151
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 152
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_2

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$200(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$300(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$300(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResumeIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v1, "nf_media_session_controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_4

    .line 169
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$200(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$300(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string/jumbo v1, "nf_media_session_controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$300(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPauseIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 180
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-7597 - MediaSession::onMediaButtonEvent() got weird code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
