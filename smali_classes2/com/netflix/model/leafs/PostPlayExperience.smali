.class public interface abstract Lcom/netflix/model/leafs/PostPlayExperience;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getActionsInitialIndex()Ljava/lang/Integer;
.end method

.method public abstract getAutoPlayActionSeconds()I
.end method

.method public abstract getAutoPlayItem()Lcom/netflix/model/leafs/PostPlayItem;
.end method

.method public abstract getAutoplay()Z
.end method

.method public abstract getAutoplaySeconds()I
.end method

.method public abstract getExperienceTitle()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImpressionToken()Ljava/lang/String;
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemsInitialIndex()Ljava/lang/Integer;
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getSeamlessCountdownSeconds()I
.end method

.method public abstract getSeamlessEnd()I
.end method

.method public abstract getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;
.end method

.method public abstract getSeasonRenewalPostPlayItem()Lcom/netflix/model/leafs/PostPlayItem;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract isOffline()Z
.end method

.method public abstract setAutoplay(Z)V
.end method

.method public abstract setAutoplaySeconds(I)V
.end method
