.class public Lcom/netflix/mediaclient/servicemgr/AddToListData;
.super Ljava/lang/Object;
.source "AddToListData.java"


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private previousState:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

.field private state:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->listeners:Ljava/util/Set;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->NOT_IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->state:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->NOT_IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->previousState:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getState()Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->state:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    return-object v0
.end method

.method public removeListener(Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public revertState()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->previousState:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->setStateAndNotifyListeners(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    return-void
.end method

.method public setStateAndNotifyListeners(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->state:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->LOADING:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->state:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->previousState:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->state:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToListData;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;->update(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    goto :goto_0

    :cond_1
    return-void
.end method
