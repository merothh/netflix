.class public abstract Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
    .locals 1

    .line 61
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveMoments$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveMoments$Builder;-><init>()V

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;->setDefaultMomentsBySegment(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;->setDefaultSegmentHistory(Ljava/util/ArrayList;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    move-result-object p0

    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;-><init>()V

    .line 99
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;->setDefaultSnapshots(Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    move-result-object p0

    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/State;-><init>()V

    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-direct {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/State;-><init>()V

    .line 100
    invoke-static {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->create(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;->setDefaultStateHistory(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    move-result-object p0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;->setDefaultPreconditions(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    move-result-object p0

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;->setDefaultSegmentGroups(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveMoments$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract audioLocale()Ljava/lang/String;
.end method

.method public abstract choiceMapOverrides()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/ChoiceMapOverride;",
            ">;"
        }
    .end annotation
.end method

.method public abstract commonMetadata()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract momentsBySegment()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;
.end method

.method public abstract preconditions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentGroups()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/BaseSegmentGroupItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract segmentHistory()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;
.end method

.method public abstract stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract uiDefinition()Lcom/netflix/model/leafs/originals/interactive/UiDefinition;
.end method
