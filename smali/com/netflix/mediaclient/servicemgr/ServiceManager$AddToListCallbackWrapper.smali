.class Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "ServiceManager.java"


# instance fields
.field private final cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    .line 2020
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    .line 2021
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->videoId:Ljava/lang/String;

    .line 2022
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$700(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-result-object v0

    .line 2023
    if-eqz v0, :cond_0

    .line 2024
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->updateToLoading(Ljava/lang/String;)V

    .line 2026
    :cond_0
    return-void
.end method

.method static synthetic access$1101(Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 2015
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 2015
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private updateListeners(Lcom/netflix/mediaclient/android/app/Status;ZZ)V
    .locals 2

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$700(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-result-object v0

    .line 2066
    if-nez v0, :cond_0

    .line 2075
    :goto_0
    return-void

    .line 2070
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2071
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->updateState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2073
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->updateToError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2030
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2031
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2032
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->updateListeners(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    .line 2033
    return-void

    .line 2032
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->isInQueue()Z

    move-result v0

    goto :goto_0
.end method

.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2051
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->access$1101(Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2052
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2053
    invoke-direct {p0, p1, v1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->updateListeners(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    .line 2054
    return-void
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 2058
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->access$1201(Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2059
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2060
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->updateListeners(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    .line 2061
    return-void
.end method

.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2044
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2045
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2046
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p3, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->updateListeners(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    .line 2047
    return-void

    .line 2046
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isInQueue()Z

    move-result v0

    goto :goto_0
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2037
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2038
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->cb:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2039
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;->updateListeners(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    .line 2040
    return-void

    .line 2039
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isInQueue()Z

    move-result v0

    goto :goto_0
.end method
