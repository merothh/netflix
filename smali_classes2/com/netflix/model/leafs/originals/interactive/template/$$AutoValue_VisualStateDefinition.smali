.class abstract Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateDefinition;
.super Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_VisualStateDefinition;
.source ""


# instance fields
.field private volatile transient assetId:Ljava/lang/String;

.field private volatile transient assetId$Memoized:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_VisualStateDefinition;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public assetId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateDefinition;->assetId$Memoized:Z

    if-nez v0, :cond_1

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateDefinition;->assetId$Memoized:Z

    if-nez v0, :cond_0

    .line 23
    invoke-super {p0}, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateDefinition;->assetId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateDefinition;->assetId$Memoized:Z

    .line 26
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateDefinition;->assetId:Ljava/lang/String;

    return-object v0
.end method
