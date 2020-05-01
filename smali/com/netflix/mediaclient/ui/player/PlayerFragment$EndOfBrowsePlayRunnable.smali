.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "reportBrowsePlayEndRunnable() - reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getXid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x78

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v0

    div-int/lit16 v6, v0, 0x3e8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->endBrowsePlaySession(JIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EndOfBrowsePlayRunnable: got exception trying to cast arguments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-8604 - Got exception trying to cast arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "reportBrowsePlayEndRunnable() - will be rescheduled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
