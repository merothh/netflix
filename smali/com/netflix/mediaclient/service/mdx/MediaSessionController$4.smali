.class Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionController.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_media_session_controller"

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v0, "stringBlob"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$502(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;Z)Z

    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isVolumeControl()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$502(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_media_session_controller"

    const-string/jumbo v2, "Failed to extract capability data: "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
