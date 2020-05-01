.class public Lcom/netflix/mediaclient/ui/lomo/ErrorViewAdapter;
.super Ljava/lang/Object;
.source "ErrorViewAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# instance fields
.field private final callbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/ErrorViewAdapter;->callbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/ErrorViewAdapter;->callbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/fragment/ErrorView;->create(Landroid/view/LayoutInflater;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateRequestId()V
    .locals 0

    return-void
.end method

.method public refreshData(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 0

    return-void
.end method

.method public restoreFromMemento(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public saveToMemento()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverlapPages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public trackPresentation(I)V
    .locals 0

    return-void
.end method
