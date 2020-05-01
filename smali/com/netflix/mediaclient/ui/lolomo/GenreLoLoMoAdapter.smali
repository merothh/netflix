.class public Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;
.source "GenreLoLoMoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenreLoLoMoAdapter"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->handlePrefetchComplete()V

    return-void
.end method

.method private handlePrefetchComplete()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshData()V

    return-void
.end method


# virtual methods
.method protected isGenreList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    return-void
.end method

.method public refreshData()V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GenreLoLoMoAdapter"

    const-string/jumbo v1, "Service man is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "GenreLoLoMoAdapter"

    const-string/jumbo v3, "Prefetching genre lolomo..."

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->getGenreId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v6

    new-instance v8, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter$1;

    const-string/jumbo v4, "GenreLoLoMoAdapter"

    invoke-direct {v8, p0, v4}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;Ljava/lang/String;)V

    move v4, v2

    move v7, v2

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
