.class public Lcom/netflix/model/leafs/SearchResults$Builder;
.super Ljava/lang/Object;
.source "SearchResults.java"


# static fields
.field private static final MAX_RESULTS:I = 0x14


# instance fields
.field private final results:Lcom/netflix/model/leafs/SearchResults;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/model/leafs/SearchResults;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/SearchResults;-><init>(Lcom/netflix/model/leafs/SearchResults$1;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    return-void
.end method


# virtual methods
.method public addPeople(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$302(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSuggestions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$402(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addVideos(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$102(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getResults()Lcom/netflix/model/leafs/SearchResults;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    return-object v0
.end method

.method public setPeopleListSummary(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$602(Lcom/netflix/model/leafs/SearchResults;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-void
.end method

.method public setSuggestionsListSummary(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$702(Lcom/netflix/model/leafs/SearchResults;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-void
.end method

.method public setVideoListSummary(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$502(Lcom/netflix/model/leafs/SearchResults;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-void
.end method
