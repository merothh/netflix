.class Lo/rE;
.super Lo/rx;
.source ""


# direct methods
.method constructor <init>(Lo/xf;Lo/cz;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2}, Lo/rx;-><init>(Lo/xf;Lo/cz;)V

    const-string p2, "ErrorRecoverHandler_WidevineUsageTableCorruption"

    const-string v0, "Offline Error recovery handler created..."

    .line 16
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lo/xf;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p1, p2, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Creating a streaming error recovery handler for non streaming playback!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    .locals 2

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "ErrorRecoverHandler_WidevineUsageTableCorruption"

    const-string v0, "setupOfflinePlaybackRecovery:: starts..."

    .line 35
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    invoke-interface {v0}, Lo/dc;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_1

    const-string v0, "setupOfflinePlaybackRecovery:: Offline content is HD, we can not do this!"

    .line 39
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    return-object p1

    .line 47
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "OfflinePlaybackUnifiedWidevineUsageTableCorruption"

    return-object v0
.end method
