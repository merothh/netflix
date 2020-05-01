.class public abstract Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions$TransitionIds;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_TransitionDefinitions$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_TransitionDefinitions$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public transitionId()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;->transitionIds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions$TransitionIds;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions$TransitionIds;->transitionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract transitionIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions$TransitionIds;",
            ">;"
        }
    .end annotation
.end method
