.class public Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;
.super Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;
.source "RowAdapterProvider.java"


# instance fields
.field private final character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickKidsPopular:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickKidsTopTen:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    .line 275
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsPaginatedCharacterAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsPaginatedCharacterAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 278
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 280
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->kubrickKidsTopTen:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 281
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->kubrickKidsPopular:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 282
    return-void
.end method


# virtual methods
.method public bridge synthetic getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->kubrickKidsPopular:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->kubrickKidsTopTen:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickKidsHighDensityRowAdapterProvider;->kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method
