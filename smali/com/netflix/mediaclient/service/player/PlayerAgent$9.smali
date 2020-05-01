.class Lcom/netflix/mediaclient/service/player/PlayerAgent$9;
.super Landroid/content/BroadcastReceiver;
.source "PlayerAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$9;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2262
    if-nez p2, :cond_1

    .line 2263
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2268
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    .line 2269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2270
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "useprofile is now de-activated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$9;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getManifestCache()Lcom/netflix/mediaclient/servicemgr/IManifestCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IManifestCache;->cacheFlush()V

    goto :goto_0
.end method
