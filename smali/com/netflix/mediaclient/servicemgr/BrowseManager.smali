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

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    .line 28
    return-void
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    .prologue
    .line 876
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p6, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v7

    .line 880
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
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

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_2

    .line 885
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

    .line 886
    const/4 v0, 0x1

    .line 889
    :goto_0
    return v0

    .line 888
    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "addToQueue:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpCacheToDisk()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_0

    .line 954
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->dumpCacheToDisk()V

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "dumpCacheToDisk:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpHomeLoLoMosAndVideos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_0

    .line 943
    new-instance v0, Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/browse/DataDumper;-><init>(Lcom/netflix/mediaclient/servicemgr/IBrowseManager;)V

    .line 944
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/browse/DataDumper;->dumpHomeLoLoMosAndVideosToHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "dumpHomeLoLoMosAndVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endBrowsePlaySession(JIII)V
    .locals 7

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1019
    if-eqz v0, :cond_0

    .line 1020
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->endBrowsePlaySession(JIII)V

    .line 1024
    :goto_0
    return-void

    .line 1022
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "endBrowsePlaySession:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 682
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
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

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 687
    if-eqz v1, :cond_1

    .line 688
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    const/4 v0, 0x1

    .line 692
    :goto_0
    monitor-exit p0

    return v0

    .line 691
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchActorDetailsAndRelatedForTitle:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    const/4 v0, 0x0

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 4

    .prologue
    .line 551
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
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

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 556
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
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

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 561
    if-eqz v1, :cond_2

    .line 562
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchAdvisories(Ljava/lang/String;II)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchAdvisories:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchCWVideos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 312
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
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

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_1

    .line 318
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchCWVideos(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    const/4 v0, 0x1

    .line 322
    :goto_0
    monitor-exit p0

    return v0

    .line 321
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchCWVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 584
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 585
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
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

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_2

    .line 590
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    const/4 v0, 0x1

    .line 594
    :goto_0
    monitor-exit p0

    return v0

    .line 593
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchEpisodeDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 248
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 250
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
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

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_2

    .line 256
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

    .line 257
    const/4 v0, 0x1

    .line 260
    :goto_0
    monitor-exit p0

    return v0

    .line 259
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchEpisodes:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 744
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
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

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_1

    .line 749
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchGenreLists(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    const/4 v0, 0x1

    .line 753
    :goto_0
    monitor-exit p0

    return v0

    .line 752
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchGenreLists:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 217
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
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

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_2

    .line 222
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

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    monitor-exit p0

    return v0

    .line 225
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchGenreVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 768
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 769
    if-nez v1, :cond_1

    .line 770
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchGenres:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 774
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Parameter cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 777
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

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 782
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 783
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
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

    .line 787
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

    .line 788
    goto :goto_0
.end method

.method public declared-synchronized fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 377
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
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

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_1

    .line 382
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

    .line 383
    const/4 v0, 0x1

    .line 386
    :goto_0
    monitor-exit p0

    return v0

    .line 385
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchIQVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1098
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p6}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v7

    .line 1099
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
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

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_2

    .line 1104
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

    .line 1105
    const/4 v0, 0x1

    .line 1108
    :goto_0
    monitor-exit p0

    return v0

    .line 1107
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchInteractiveVideoMoments:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 501
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v2

    .line 502
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
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

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v3

    .line 506
    if-eqz v3, :cond_2

    .line 507
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v3

    invoke-interface {v1, p1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchKidsCharacterDetails(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    :goto_0
    monitor-exit p0

    return v0

    .line 510
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchKidsCharacterDetails:: service is not available"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 511
    goto :goto_0
.end method

.method public declared-synchronized fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 406
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 407
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
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

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_2

    .line 412
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchLoLoMoSummary(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    const/4 v0, 0x1

    .line 416
    :goto_0
    monitor-exit p0

    return v0

    .line 415
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchLoLoMoSummary:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 150
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
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

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchLoMos(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v0, 0x1

    .line 160
    :goto_0
    monitor-exit p0

    return v0

    .line 159
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchLoMos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v0

    .line 466
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
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

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_2

    .line 471
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    const/4 v0, 0x1

    .line 475
    :goto_0
    monitor-exit p0

    return v0

    .line 474
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchMovieDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 973
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 974
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
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

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_1

    .line 979
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchNotifications(IIII)V

    .line 980
    const/4 v0, 0x1

    .line 983
    :goto_0
    return v0

    .line 982
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchNotificationsList:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 700
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
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

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_1

    .line 706
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPersonDetail(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    const/4 v0, 0x1

    .line 710
    :goto_0
    monitor-exit p0

    return v0

    .line 709
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPersonDetail:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 718
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
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

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_1

    .line 724
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPersonRelated(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    const/4 v0, 0x1

    .line 728
    :goto_0
    monitor-exit p0

    return v0

    .line 727
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPersonRelated:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    const/4 v0, 0x0

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 330
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
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

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_1

    .line 336
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

    .line 337
    const/4 v0, 0x1

    .line 340
    :goto_0
    monitor-exit p0

    return v0

    .line 339
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchPostPlayVideos:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 521
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 522
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
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

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_3

    .line 527
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

    .line 528
    const/4 v0, 0x1

    .line 531
    :goto_0
    monitor-exit p0

    return v0

    .line 530
    :cond_3
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchScenePosition:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 612
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 613
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
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

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 617
    if-eqz v1, :cond_2

    .line 618
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchSeasonDetails(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    const/4 v0, 0x1

    .line 622
    :goto_0
    monitor-exit p0

    return v0

    .line 621
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchSeasonDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSeasons(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 283
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
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

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_2

    .line 289
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

    .line 290
    const/4 v0, 0x1

    .line 293
    :goto_0
    monitor-exit p0

    return v0

    .line 292
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchSeasons:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 644
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v5

    .line 645
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
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

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_2

    .line 650
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

    .line 651
    const/4 v0, 0x1

    .line 654
    :goto_0
    monitor-exit p0

    return v0

    .line 653
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchShowDetails:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v6

    .line 665
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
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

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_2

    .line 670
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

    .line 671
    const/4 v0, 0x1

    .line 674
    :goto_0
    monitor-exit p0

    return v0

    .line 673
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchShowDetailsAndSeasons:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 816
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v4

    .line 817
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    .line 819
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

    .line 820
    const/4 v0, 0x1

    .line 823
    :goto_0
    monitor-exit p0

    return v0

    .line 822
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    const/4 v0, 0x0

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 829
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v4

    .line 830
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_0

    .line 832
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

    .line 833
    const/4 v0, 0x1

    .line 836
    :goto_0
    monitor-exit p0

    return v0

    .line 835
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    const/4 v0, 0x0

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 34
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
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

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;II)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchTask:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 432
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 436
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
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

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_2

    .line 441
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchVideoSummary(Ljava/lang/String;II)V

    .line 442
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    .line 444
    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "fetchVideoSummary:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 10

    .prologue
    .line 177
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
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

    .line 179
    const/4 v1, 0x0

    .line 193
    :goto_1
    monitor-exit p0

    return v1

    .line 178
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v9

    .line 183
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
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

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_4

    .line 189
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

    .line 190
    const/4 v1, 0x1

    goto :goto_1

    .line 192
    :cond_4
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "fetchVideos:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    const/4 v1, 0x0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public flushCaches()Z
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->flushCaches()V

    .line 932
    const/4 v0, 0x1

    .line 935
    :goto_0
    return v0

    .line 934
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "flushCaches:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLolomoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_0

    .line 1085
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->getLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 1089
    :goto_0
    return-object v0

    .line 1087
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "getLolomoId:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
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

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_0

    .line 1116
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    .line 1119
    :goto_0
    return-object v0

    .line 1118
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "getModelProxy:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1039
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
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

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_2

    .line 1045
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :goto_0
    monitor-exit p0

    return-void

    .line 1047
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

    .prologue
    .line 962
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_0

    .line 964
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "logBillboardActivity:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 349
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
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

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
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

    .line 356
    const/4 v0, 0x1

    .line 359
    :goto_0
    monitor-exit p0

    return v0

    .line 358
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "logPostPlayImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 1005
    :goto_0
    return-void

    .line 1003
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

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1010
    if-eqz v0, :cond_0

    .line 1011
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationsAsRead(Ljava/util/List;)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "markNotificationsAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 11

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v10

    .line 111
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prefetchGenreLoLoMo requestId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " genreId="

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromLoMo="

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toLoMo="

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromVideo="

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toVideo="

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "includeBoxshots="

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    .line 127
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v9

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 125
    invoke-interface/range {v1 .. v10}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v1, 0x1

    .line 131
    :goto_0
    monitor-exit p0

    return v1

    .line 130
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "prefetchGenreLoLoMo:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 13

    .prologue
    .line 65
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    move-object/from16 v0, p10

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v12

    .line 67
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "ServiceManagerBrowse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prefetchLoLoMo requestId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromLoMo="

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toLoMo="

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromVideo="

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toVideo="

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromCWVideo="

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toCWVideo="

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " includeExtraCharacters="

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "includeBoxshots="

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
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

    .line 84
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 86
    :cond_1
    const-string/jumbo v1, "ServiceManagerBrowse"

    const-string/jumbo v2, "prefetchLoLoMo:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
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

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 482
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
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

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_1

    .line 487
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->prefetchVideoListDetails(Ljava/util/List;II)V

    .line 488
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    .line 490
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "prefetchDPForLomoRow:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshCw(Z)V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_0

    .line 1055
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshCw(Z)V

    .line 1059
    :goto_0
    return-void

    .line 1057
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshCw:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshIq()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIq()V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshIq:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshIrisNotifications(Z)V
    .locals 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 990
    if-eqz v0, :cond_0

    .line 991
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 995
    :goto_0
    return-void

    .line 993
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshIrisNotifications:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshLolomo()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_0

    .line 1075
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshLolomo()V

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "refreshLolomo:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 6

    .prologue
    .line 898
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I

    move-result v5

    .line 902
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
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

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_2

    .line 907
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V

    .line 908
    const/4 v0, 0x1

    .line 911
    :goto_0
    return v0

    .line 910
    :cond_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "removeFromQueue:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPrefetchLolomoJob(Z)Z
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_0

    .line 919
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->runPrefetchLolomoJob(Z)V

    .line 920
    const/4 v0, 0x1

    .line 923
    :goto_0
    return v0

    .line 922
    :cond_0
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "flushCaches:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 4

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 801
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
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

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v1

    .line 805
    if-eqz v1, :cond_1

    .line 806
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getClientId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->searchNetflix(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    const/4 v0, 0x1

    .line 810
    :goto_0
    monitor-exit p0

    return v0

    .line 809
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "searchNetflix:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 7

    .prologue
    .line 853
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 856
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0, p5}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 857
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
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

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_2

    .line 862
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

    .line 863
    const/4 v0, 0x1

    .line 866
    :goto_0
    monitor-exit p0

    return v0

    .line 865
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "setVideoRating:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 866
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 3

    .prologue
    .line 537
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
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

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;->mgr:Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;->getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_1

    .line 543
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string/jumbo v0, "ServiceManagerBrowse"

    const-string/jumbo v1, "updateExpiredContentAdvisoryStatus:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
