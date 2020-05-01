.class public interface abstract Lo/Bs;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getNumResults()I
.end method

.method public abstract getNumResultsSuggestions()I
.end method

.method public abstract getNumResultsVideoEntities()I
.end method

.method public abstract getNumResultsVideos()I
.end method

.method public abstract getQueryCompletionsListTrackable()Lo/Bz;
.end method

.method public abstract getResultsQueryCompletions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResultsSuggestions(I)Lo/By;
.end method

.method public abstract getResultsVideoEntities(I)Lcom/netflix/model/leafs/SearchCollectionEntity;
.end method

.method public abstract getResultsVideoEntities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResultsVideos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResultsVideos(I)Lo/Bx;
.end method

.method public abstract getSectionIndex()I
.end method

.method public abstract getSuggestionsListTrackable()Lo/Bz;
.end method

.method public abstract getVideosListTrackable()Lo/Bz;
.end method

.method public abstract hasResults()Z
.end method
