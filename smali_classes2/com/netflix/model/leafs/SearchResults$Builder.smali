.class public Lcom/netflix/model/leafs/SearchResults$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/SearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_RESULTS:I = 0x14


# instance fields
.field private final results:Lcom/netflix/model/leafs/SearchResults;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lcom/netflix/model/leafs/SearchResults;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/SearchResults;-><init>(Lcom/netflix/model/leafs/SearchResults$1;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    return-void
.end method


# virtual methods
.method public addQueryCompletions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$500(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$502(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    .line 211
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$500(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$500(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSuggestions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo/By;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$402(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    .line 203
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addVideoEntities(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$302(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    .line 193
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 194
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addVideos(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo/Bx;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/model/leafs/SearchResults;->access$102(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;

    .line 182
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v1}, Lcom/netflix/model/leafs/SearchResults;->access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0}, Lcom/netflix/model/leafs/SearchResults;->access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getResults()Lcom/netflix/model/leafs/SearchResults;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    return-object v0
.end method

.method public setQueryCompletionListSummary(Lo/Bz;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$802(Lcom/netflix/model/leafs/SearchResults;Lo/Bz;)Lo/Bz;

    return-void
.end method

.method public setSectionIndex(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$902(Lcom/netflix/model/leafs/SearchResults;I)I

    return-void
.end method

.method public setSuggestionsListSummary(Lo/Bz;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$702(Lcom/netflix/model/leafs/SearchResults;Lo/Bz;)Lo/Bz;

    return-void
.end method

.method public setVideoListSummary(Lo/Bz;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults$Builder;->results:Lcom/netflix/model/leafs/SearchResults;

    invoke-static {v0, p1}, Lcom/netflix/model/leafs/SearchResults;->access$602(Lcom/netflix/model/leafs/SearchResults;Lo/Bz;)Lo/Bz;

    return-void
.end method
