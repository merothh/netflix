.class public Lo/KeymasterCertificateChain;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field protected final d:I

.field protected final e:I

.field private h:Ljava/lang/String;

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;IIZZLo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "IIZZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchFlatGenreVideos"

    .line 29
    invoke-direct {p0, v0, p1, p7}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 30
    iput p3, p0, Lo/KeymasterCertificateChain;->e:I

    .line 31
    iput p4, p0, Lo/KeymasterCertificateChain;->d:I

    .line 32
    iput-boolean p5, p0, Lo/KeymasterCertificateChain;->i:Z

    .line 33
    iput-boolean p6, p0, Lo/KeymasterCertificateChain;->j:Z

    .line 34
    invoke-static {p2}, Lo/SEService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/KeymasterCertificateChain;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 18
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "flatCategories"

    aput-object v3, v1, v2

    .line 46
    iget-object v4, p0, Lo/KeymasterCertificateChain;->h:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "summary"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 47
    iget-object v2, p0, Lo/KeymasterCertificateChain;->h:Ljava/lang/String;

    aput-object v2, v1, v5

    iget v2, p0, Lo/KeymasterCertificateChain;->e:I

    iget v3, p0, Lo/KeymasterCertificateChain;->d:I

    invoke-static {v2, v3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v4, v1, v0

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lo/KeymasterCertificateChain;->a:Lo/FontRequest;

    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-virtual {v0, p2}, Lo/FontRequest;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 53
    iget-object v0, p0, Lo/KeymasterCertificateChain;->a:Lo/FontRequest;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "flatCategories"

    aput-object v3, v1, v2

    iget-object v2, p0, Lo/KeymasterCertificateChain;->h:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    .line 54
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/KeymasterCertificateChain;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/KeymasterCertificateChain;->n()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected m()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lo/KeymasterCertificateChain;->i:Z

    return v0
.end method
