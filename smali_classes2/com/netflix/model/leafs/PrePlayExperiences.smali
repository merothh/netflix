.class public interface abstract Lcom/netflix/model/leafs/PrePlayExperiences;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/PrePlayExperiences$PREPLAY_TYPE;
    }
.end annotation


# virtual methods
.method public abstract getExperiences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/PrePlayItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractiveFeatures()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
.end method

.method public abstract getPromotedVideoId()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUiLabel()Ljava/lang/String;
.end method

.method public abstract isAutoplay()Z
.end method
