.class abstract Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_TransitionDefinitions;
.super Lcom/netflix/model/leafs/originals/interactive/animations/$$$AutoValue_TransitionDefinitions;
.source ""


# instance fields
.field private volatile transient transitionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions$TransitionIds;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/animations/$$$AutoValue_TransitionDefinitions;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public transitionId()Ljava/lang/String;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_TransitionDefinitions;->transitionId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_TransitionDefinitions;->transitionId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 19
    invoke-super {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/$$$AutoValue_TransitionDefinitions;->transitionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_TransitionDefinitions;->transitionId:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_TransitionDefinitions;->transitionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transitionId() cannot return null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_TransitionDefinitions;->transitionId:Ljava/lang/String;

    return-object v0
.end method
