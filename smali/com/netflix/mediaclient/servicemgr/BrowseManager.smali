.class public final Lcom/netflix/mediaclient/servicemgr/BrowseManager;
.super Ljava/lang/Object;
.source "BrowseManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IBrowseManager;


# static fields
.field private static final ERROR_PARAM_WITH_NULL:Ljava/lang/String; = "Parameter cannot be null"

.field private static final TAG:Ljava/lang/String; = "ServiceManagerBrowse"


# instance fields
.field private final mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    return-void
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p6, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addToQueue requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "addToQueue:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpCacheToDisk()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->dumpCacheToDisk()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "dumpCacheToDisk:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpHomeLoLoMosAndVideos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/browse/DataDumper;-><init>(Lcom/netflix/mediaclient/servicemgr/IBrowseManager;)V

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/browse/DataDumper;->dumpHomeLoLoMosAndVideosToHtml(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "dumpHomeLoLoMosAndVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endBrowsePlaySession(JIII)V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->endBrowsePlaySession(JIII)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "endBrowsePlaySession:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchActorDetailsAndRelatedForTitle requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " video id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchActorDetailsAndRelatedForTitle:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchAdvisories id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchScenePosition requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchAdvisories(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchAdvisories:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchCWVideos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchCWLoMo requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchCWVideos(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchCWVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchEpisodeDetails requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " episodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchEpisodeDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchEpisodes requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fromEpisode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " toEpisode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchEpisodes:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchGenreLists requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenreLists(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchGenreLists:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchGenreVideos requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " genreLoMoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fromVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " toVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchGenreVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchGenres:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Parameter cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ServiceManagerBrowse"

    const-string/jumbo v3, "fetchGenres:: stack:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchGenres requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenres(Ljava/lang/String;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    goto :goto_0
.end method

.method public declared-synchronized fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchIQLoMo requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fromVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " toVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchIQVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p6}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchInteractiveVideoMoments requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchInteractiveVideoMoments:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ServiceManagerBrowse"

    const-string/jumbo v4, "fetchKidsCharacterDetails requestId=%d,  characterId=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v3

    invoke-interface {v1, p1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchKidsCharacterDetails(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchKidsCharacterDetails:: service is not available"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchLoLoMoSummary requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchLoLoMoSummary(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchLoLoMoSummary:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchLoLoMo requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromLoMo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toLoMo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchLoMos(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchLoMos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchMovieDetails requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " movieId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchMovieDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchNotificationsList requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchNotifications(IIII)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchNotificationsList:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchPersonDetail requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " video id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPersonDetail(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPersonDetail:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchPersonRelated requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " video id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPersonRelated(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPersonRelated:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchPostPlayVideos requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentPlayableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPostPlayVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchScenePosition requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchScenePosition:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchSeasonDetails requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seasonId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSeasonDetails(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchSeasonDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSeasons(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchSeasons requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fromSeason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " toSeason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSeasons(Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchSeasons:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchShowDetails requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchShowDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchShowDetailsAndSeasons requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchShowDetailsAndSeasons:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v4

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v3

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSimilarVideosForPerson(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v4

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v3

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;II)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchTask:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchVideoSummary requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchVideoSummary(Ljava/lang/String;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchVideoSummary:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-10830 LoLoMo refresh crash, lomo is null = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v9

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchVideos requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " loMoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZII)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchVideos:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public flushCaches()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->flushCaches()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "flushCaches:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLolomoId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->getLolomoId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "getLolomoId:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "getModelProxy:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "purgeCachedEpisodes id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "purgeCachedEpisodes:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "logBillboardActivity:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logPostPlayImpression requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentPlayableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " impressionData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "logPostPlayImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "markNotificationAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public markNotificationsAsRead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationsAsRead(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "markNotificationsAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v10

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prefetchGenreLoLoMo requestId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " genreId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromLoMo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toLoMo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "includeBoxshots="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v9

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v10}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "prefetchGenreLoLoMo:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 13

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p10

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v12

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prefetchLoLoMo requestId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromLoMo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toLoMo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromCWVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toCWVideo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " includeExtraCharacters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "includeBoxshots="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v11

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v12}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchLoLoMo(IIIIIIZZZII)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "prefetchLoLoMo:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/ManagerCallback;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prefetchDPForLomoRow requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchVideoListDetails(Ljava/util/List;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "prefetchDPForLomoRow:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshCw(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshCw(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshCw:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshIq()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIq()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshIq:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshIrisNotifications(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshIrisNotifications:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshLolomo()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshLolomo()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshLolomo:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromQueue requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "removeFromQueue:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPrefetchLolomoJob(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->runPrefetchLolomoJob(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "flushCaches:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "searchNetflix requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->searchNetflix(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoRating requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "setVideoRating:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceManagerBrowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateExpiredContentAdvisoryStatus id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "updateExpiredContentAdvisoryStatus:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
