.class Lo/rG;
.super Lo/rv;
.source ""


# direct methods
.method constructor <init>(Lo/xf;Lo/cz;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Lo/rv;-><init>(Lo/xf;Lo/cz;)V

    const-string p2, "StreamingUnified_ErrorRecoverHandler_5.8"

    const-string v0, "Streaming Unified Error recovery handler created..."

    .line 23
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p1}, Lo/xf;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p1, p2, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Creating a streaming error recovery handler for non streaming playback!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    .locals 4

    .line 38
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "StreamingUnified_ErrorRecoverHandler_5.8"

    const-string v1, "setupStreamingPlaybackRecovery:: starts..."

    .line 42
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v1

    invoke-interface {v1}, Lo/dc;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    .line 44
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_1

    const-string v1, "setupStreamingPlaybackRecovery::Remove manifest from cache for L1 to L3..."

    .line 46
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lo/rG;->d:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->y()V

    :cond_1
    const-string v1, "setupStreamingPlaybackRecovery:: Set override!"

    .line 50
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;

    iget-object v2, p0, Lo/rG;->d:Lo/xf;

    invoke-virtual {v2}, Lo/xf;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;-><init>(Ljava/lang/Long;Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->a(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)V

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "StreamingUnifiedPlaybackDecoderInit"

    return-object v0
.end method
