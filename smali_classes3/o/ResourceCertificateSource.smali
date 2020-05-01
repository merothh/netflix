.class public Lo/ResourceCertificateSource;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private d:Lo/TextInputTimePickerView;

.field private e:Lo/TextInputTimePickerView;

.field private i:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;IIZLo/ci;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "IIZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string p5, "FetchSearchByReferenceIdResults"

    .line 37
    invoke-direct {p0, p5, p1, p6}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    const/4 p1, 0x3

    new-array p5, p1, [Ljava/lang/Object;

    const-string p6, "searchByReference"

    const/4 v0, 0x0

    aput-object p6, p5, v0

    const/4 v1, 0x1

    aput-object p2, p5, v1

    const-string v2, "summary"

    const/4 v3, 0x2

    aput-object v2, p5, v3

    .line 38
    invoke-static {p5}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p5

    iput-object p5, p0, Lo/ResourceCertificateSource;->d:Lo/TextInputTimePickerView;

    const/4 p5, 0x4

    new-array v4, p5, [Ljava/lang/Object;

    aput-object p6, v4, v0

    aput-object p2, v4, v1

    .line 39
    invoke-static {p3, p4}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v2, v4, p1

    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    iput-object v4, p0, Lo/ResourceCertificateSource;->e:Lo/TextInputTimePickerView;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p6, v4, v0

    aput-object p2, v4, v1

    .line 40
    invoke-static {p3, p4}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    aput-object p2, v4, v3

    const-string p2, "item"

    aput-object p2, v4, p1

    aput-object v2, v4, p5

    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/ResourceCertificateSource;->i:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
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

    .line 50
    iget-object v0, p0, Lo/ResourceCertificateSource;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lo/ResourceCertificateSource;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lo/ResourceCertificateSource;->i:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 77
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 57
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 59
    iget-object v1, p0, Lo/ResourceCertificateSource;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/ResourceCertificateSource;->d:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 60
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->setVideoListSummary(Lo/Bz;)V

    .line 62
    iget-object v1, p0, Lo/ResourceCertificateSource;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/ResourceCertificateSource;->e:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideoEntities(Ljava/util/Collection;)V

    .line 66
    iget-object v1, p0, Lo/ResourceCertificateSource;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/ResourceCertificateSource;->i:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideos(Ljava/util/Collection;)V

    .line 72
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
