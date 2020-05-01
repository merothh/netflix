.class public abstract Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract audioLocale(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract build()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
.end method

.method public abstract choiceMapOverrides(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;"
        }
    .end annotation
.end method

.method public abstract commonMetadata(Lcom/netflix/model/leafs/originals/interactive/CommonMetaData;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract momentsBySegment(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            ">;>;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;"
        }
    .end annotation
.end method

.method public abstract playerControls(Lcom/netflix/model/leafs/originals/interactive/PlayerControls;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract preconditions(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;"
        }
    .end annotation
.end method

.method public abstract segmentGroups(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/BaseSegmentGroupItem;",
            ">;>;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;"
        }
    .end annotation
.end method

.method public abstract segmentHistory(Ljava/util/ArrayList;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;"
        }
    .end annotation
.end method

.method public abstract snapshots(Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract stateHistory(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract type(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract uiDefinition(Lcom/netflix/model/leafs/originals/interactive/UiDefinition;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method
