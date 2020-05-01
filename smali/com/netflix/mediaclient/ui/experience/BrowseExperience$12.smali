.class final enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;
.super Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.source "BrowseExperience.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V

    return-void
.end method


# virtual methods
.method public createLolomoAdapter(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;ZLjava/lang/String;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;
    .locals 1

    .prologue
    .line 456
    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickHighDensityGenreLoLoMoAdapter;

    invoke-direct {v0, p1, p3}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickHighDensityGenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickHighDensityLoLoMoAdapter;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickHighDensityLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    goto :goto_0
.end method

.method public createRowAdapterProvider(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickHighDensityRowAdapterProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickHighDensityRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V

    return-object v0
.end method

.method public createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;
    .locals 1
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

    .prologue
    .line 483
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;->KUBRICK_PRODUCTIZED:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I

    move-result v0

    return v0
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

    .prologue
    .line 468
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$12;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
