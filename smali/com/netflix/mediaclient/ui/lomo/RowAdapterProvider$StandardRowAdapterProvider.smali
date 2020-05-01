.class public Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;
.super Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;
.source "RowAdapterProvider.java"


# instance fields
.field private final billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final standard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    .line 108
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 114
    if-eqz p4, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveGenreVideoAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveGenreVideoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->standard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 117
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    goto :goto_0
.end method


# virtual methods
.method public getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->standard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method
