.class final enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;
.super Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.source "BrowseExperience.java"


# instance fields
.field private final VALID_DETAIL_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;->VALID_DETAIL_TYPES:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public createLolomoAdapter(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;ZLjava/lang/String;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    goto :goto_0
.end method

.method public createRowAdapterProvider(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V

    return-object v0
.end method

.method public createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;Z)V

    return-object v0
.end method

.method public getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;->VALID_DETAIL_TYPES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I
    .locals 1

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->isDuplicateRow(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I

    move-result v0

    goto :goto_0
.end method

.method public getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
