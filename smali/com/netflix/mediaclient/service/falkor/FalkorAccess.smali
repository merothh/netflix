.class public Lcom/netflix/mediaclient/service/falkor/FalkorAccess;
.super Ljava/lang/Object;
.source "FalkorAccess.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorAccess"


# instance fields
.field private final mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field private final mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    return-object v0
.end method

.method private wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;-><init>(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-object v0
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;II)V
    .locals 7

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p6, p7}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public dumpCacheToDisk()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->dumpCacheToDisk()V

    return-void
.end method

.method public endBrowsePlaySession(JIII)V
    .locals 7

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->endBrowsePlaySession(JIII)V

    return-void
.end method

.method public fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchAdvisories(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchCWVideos(IIII)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchCWVideos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    .locals 6

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p5, p6}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchGenreLists(II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    .locals 6

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p5, p6}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchGenres(Ljava/lang/String;IIII)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    .locals 6

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p5, p6}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p6, p7}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchKidsCharacterDetails(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchLoLoMoSummary(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchLoMos(IIII)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchNotifications(IIII)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchNotificationsList(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchPersonDetail(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public fetchPersonRelated(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchPreAppData(II)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchPreAppData(II)V

    return-void
.end method

.method public fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchSeasonDetails(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchSeasons(Ljava/lang/String;IIII)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchSeasons(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 6

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p5, p6}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchSimilarVideosForPerson(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchVideoSummary(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZII)V
    .locals 10

    new-instance v3, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v9

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public flushCaches()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches()V

    return-void
.end method

.method public forceFetchFromLocalCache(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->forceFetchFromLocalCache(Z)V

    return-void
.end method

.method public getLolomoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getLolomoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getModelProxy()Lcom/netflix/falkor/ModelProxy;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    return-void
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    return-void
.end method

.method public markNotificationsAsRead(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->markNotificationsAsRead(Ljava/util/List;)V

    return-void
.end method

.method public prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZII)V
    .locals 11

    new-instance v3, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v10

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public prefetchLoLoMo(IIIIIIZZZII)V
    .locals 14

    new-instance v3, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v12, 0x0

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v13

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v13}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public prefetchVideoListDetails(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public refreshCw(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshCw(ZZ)V

    return-void
.end method

.method public refreshEpisodeData(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodesForSeason(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    return-void
.end method

.method public refreshIq()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshIq()V

    return-void
.end method

.method public refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    return-void
.end method

.method public refreshLolomo()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshLolomo()V

    return-void
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public runPrefetchLolomoJob(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->startLolomoFetchJob(Z)Z

    return-void
.end method

.method public searchNetflix(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    .locals 6

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;

    invoke-direct {v1, p0, p5, p6}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->wrapCallback(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-void
.end method

.method public updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    return-void
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->mBrowseAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    return-void
.end method
