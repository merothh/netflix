.class public Lo/NetworkSecurityTrustManager;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Lo/TextInputTimePickerView;

.field private final e:Lo/TextInputTimePickerView;

.field private final f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final g:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Ljava/lang/String;ZIILo/ci;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Ljava/lang/String;",
            "ZII",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchSearchByEntityIdResults"

    .line 44
    invoke-direct {p0, v0, p1, p7}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 46
    iput-object p2, p0, Lo/NetworkSecurityTrustManager;->f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 p1, 0x3

    new-array p2, p1, [Ljava/lang/Object;

    const-string p7, "searchSuggestionByEntityId"

    const/4 v0, 0x0

    aput-object p7, p2, v0

    const/4 v1, 0x1

    aput-object p3, p2, v1

    const-string v2, "summary"

    const/4 v3, 0x2

    aput-object v2, p2, v3

    .line 48
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    iput-object p2, p0, Lo/NetworkSecurityTrustManager;->e:Lo/TextInputTimePickerView;

    const/4 p2, 0x4

    new-array v4, p2, [Ljava/lang/Object;

    aput-object p7, v4, v0

    aput-object p3, v4, v1

    .line 49
    invoke-static {p5, p6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v2, v4, p1

    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    iput-object v4, p0, Lo/NetworkSecurityTrustManager;->d:Lo/TextInputTimePickerView;

    const-string v4, "item"

    const/4 v5, 0x5

    if-eqz p4, :cond_0

    new-array p4, v5, [Ljava/lang/Object;

    aput-object p7, p4, v0

    aput-object p3, p4, v1

    .line 54
    invoke-static {p5, p6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p3

    aput-object p3, p4, v3

    aput-object v4, p4, p1

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const-string p3, "searchTitle"

    aput-object p3, p1, v1

    invoke-static {p1}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, p4, p2

    invoke-static {p4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkSecurityTrustManager;->g:Lo/TextInputTimePickerView;

    goto :goto_0

    :cond_0
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p7, p4, v0

    aput-object p3, p4, v1

    .line 56
    invoke-static {p5, p6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p3

    aput-object p3, p4, v3

    aput-object v4, p4, p1

    aput-object v2, p4, p2

    invoke-static {p4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkSecurityTrustManager;->g:Lo/TextInputTimePickerView;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/NetworkSecurityTrustManager;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lo/NetworkSecurityTrustManager;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lo/NetworkSecurityTrustManager;->g:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 89
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 90
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 71
    iget-object v1, p0, Lo/NetworkSecurityTrustManager;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/NetworkSecurityTrustManager;->e:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 72
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->setVideoListSummary(Lo/Bz;)V

    .line 74
    iget-object v1, p0, Lo/NetworkSecurityTrustManager;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/NetworkSecurityTrustManager;->d:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideoEntities(Ljava/util/Collection;)V

    .line 78
    iget-object v1, p0, Lo/NetworkSecurityTrustManager;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/NetworkSecurityTrustManager;->g:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideos(Ljava/util/Collection;)V

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p2}, Lo/TextClock;->a()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, v0, v1, p2}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method protected k()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lo/NetworkSecurityTrustManager;->f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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

    .line 95
    iget-object v0, p0, Lo/NetworkSecurityTrustManager;->f:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
