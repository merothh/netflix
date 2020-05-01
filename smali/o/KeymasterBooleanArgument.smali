.class public Lo/KeymasterBooleanArgument;
.super Lo/Session;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final h:Z


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchEpisodeDetails"

    .line 52
    invoke-direct {p0, v0, p1, p2, p7}, Lo/Session;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V

    .line 53
    iput-object p3, p0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lo/KeymasterBooleanArgument;->e:Ljava/lang/String;

    .line 55
    iput-boolean p5, p0, Lo/KeymasterBooleanArgument;->h:Z

    .line 56
    iput-object p6, p0, Lo/KeymasterBooleanArgument;->f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lo/Session;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "detail"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v7, "summary"

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string v9, "bookmark"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string v11, "offlineAvailable"

    const/4 v12, 0x3

    aput-object v11, v4, v12

    const-string v13, "rating"

    const/4 v14, 0x4

    aput-object v13, v4, v14

    .line 64
    invoke-static {v4}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-boolean v4, v0, Lo/KeymasterBooleanArgument;->h:Z

    if-eqz v4, :cond_0

    const-string v4, "trickplayBifUrl"

    .line 66
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    invoke-static {}, Lo/eI;->f()Z

    move-result v4

    const-string v15, "watchNext"

    const-string v16, "videos"

    if-eqz v4, :cond_1

    const-string v4, "timeCodes"

    .line 69
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v16, v3, v6

    .line 71
    iget-object v14, v0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    aput-object v14, v3, v8

    aput-object v15, v3, v10

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v5, v14, v6

    aput-object v7, v14, v8

    aput-object v9, v14, v10

    aput-object v11, v14, v12

    const/4 v5, 0x4

    aput-object v13, v14, v5

    const/4 v5, 0x5

    aput-object v4, v14, v5

    invoke-static {v14}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v16, v14, v6

    .line 74
    iget-object v4, v0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    aput-object v4, v14, v8

    aput-object v15, v14, v10

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object v7, v3, v8

    aput-object v9, v3, v10

    aput-object v11, v3, v12

    const/4 v4, 0x4

    aput-object v13, v3, v4

    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v14, v12

    invoke-static {v14}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-array v3, v12, [Ljava/lang/Object;

    aput-object v16, v3, v6

    .line 76
    iget-object v4, v0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    aput-object v4, v3, v8

    aput-object v2, v3, v10

    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, v0, Lo/KeymasterBooleanArgument;->e:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    iget-object v4, v0, Lo/KeymasterBooleanArgument;->e:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lo/SEService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-interface {p1, v0, p2}, Lo/ci;->d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lo/Session;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-super {p0}, Lo/Session;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 86
    iget-object p2, p0, Lo/KeymasterBooleanArgument;->a:Lo/FontRequest;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/AS;

    if-eqz p2, :cond_0

    .line 87
    instance-of v0, p2, Lo/agp;

    if-eqz v0, :cond_0

    .line 88
    move-object v0, p2

    check-cast v0, Lo/agp;

    invoke-virtual {v0}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lo/KeymasterBooleanArgument;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lo/KeymasterBooleanArgument;->b(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;)V

    .line 91
    :cond_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected k()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lo/KeymasterBooleanArgument;->f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected m()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lo/KeymasterBooleanArgument;->f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
