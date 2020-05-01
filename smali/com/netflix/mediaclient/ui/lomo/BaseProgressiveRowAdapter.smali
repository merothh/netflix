.class public abstract Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;
.super Ljava/lang/Object;
.source "BaseProgressiveRowAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
        "<TT;>;",
        "Lcom/netflix/mediaclient/ui/lomo/RowAdapter;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "BaseProgressiveRowAdapter"


# instance fields
.field private final adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

.field private currDataIndex:I

.field private hasMoreData:Z

.field private lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

.field private final manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field protected final paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private requestId:J

.field private final viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<TT;>;",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Created progressive adapter of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", paginated adapter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private fetchMoreData()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->requestId:J

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->getNumVideosToFetchPerBatch(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->fetchMoreData(II)V

    return-void
.end method

.method private getNumVideosToFetchPerBatch(I)I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumVideosToFetchPerBatch(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract fetchMoreData(II)V
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    return-object v0
.end method

.method protected getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->requestId:J

    return-wide v0
.end method

.method public getRowHeightInPx()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getRowHeightInPx()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isLastItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->fetchMoreData()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected handlePrefetchDPData(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    if-lez p2, :cond_0

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "prefetch DP only for videos in first page."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumItemsPerPage()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForLomoRow(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public hasMoreData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    return v0
.end method

.method public invalidateRequestId()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->requestId:J

    return-void
.end method

.method public onErrorResponse()V
    .locals 2

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "onErrorResponse(), hasMoreData now false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->notifyParentOfError()V

    return-void
.end method

.method public onNoVideosInResponse()V
    .locals 2

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "onNoVideosInResponse(), hasMoreData now false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->notifyParentOfDataSetChange()V

    return-void
.end method

.method public final refreshData(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "BaseProgressiveRowAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " refreshing data for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", paginated adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->clearData()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->setListViewPos(I)V

    iput v3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->fetchMoreData()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public restoreFromMemento(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->invalidateRequestId()V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->hasMoreData:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    iget v0, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->currDataIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restored state from memento, lomo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasMoreData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    iget v3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ZILcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;)V

    return-object v0
.end method

.method public bridge synthetic saveToMemento()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverlapPages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public trackPresentation(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    instance-of v3, p0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveGenreVideoAdapter;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->trackPresentation(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ILjava/lang/Boolean;)V

    return-void
.end method

.method public updateDataSet(Ljava/util/List;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->getNumVideosToFetchPerBatch(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating data set, videos size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", videos per batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->getNumVideosToFetchPerBatch(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasMoreData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": updated start index to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->appendData(Ljava/util/List;Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->notifyParentOfDataSetChange()V

    invoke-virtual {p0, p1, p3}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->handlePrefetchDPData(Ljava/util/List;I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
