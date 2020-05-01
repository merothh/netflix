.class abstract Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;
.super Ljava/lang/Object;
.source "RowAdapterProvider.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;


# instance fields
.field private final error:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final loading:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->loading:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ErrorViewAdapter;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/ErrorViewAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->error:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 41
    return-void
.end method


# virtual methods
.method public getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->error:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->loading:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
