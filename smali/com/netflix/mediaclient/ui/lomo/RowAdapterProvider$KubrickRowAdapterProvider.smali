.class public Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;
.super Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;
.source "RowAdapterProvider.java"


# instance fields
.field private final billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickHero:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickHeroDuplicate:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V
    .locals 3

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedCwGalleryAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/ProgressiveKubrickHeroAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedHeroAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/ProgressiveKubrickHeroAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->kubrickHero:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->kubrickHeroDuplicate:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickPaginatedGalleryAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-void
.end method


# virtual methods
.method public getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->kubrickHero:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->kubrickHeroDuplicate:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KubrickRowAdapterProvider;->kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method
