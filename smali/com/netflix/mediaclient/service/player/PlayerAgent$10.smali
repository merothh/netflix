.class Lcom/netflix/mediaclient/service/player/PlayerAgent$10;
.super Landroid/telephony/PhoneStateListener;
.source "PlayerAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$10;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .prologue
    .line 2375
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$10;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$10;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    .line 2377
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$10;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->updateCellLevelBandwidthMargin(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2386
    :cond_0
    :goto_0
    return-void

    .line 2379
    :catch_0
    move-exception v0

    .line 2380
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unable to get phone cell level signal..."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2381
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5600()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2382
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 2383
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5602(Z)Z

    goto :goto_0
.end method
