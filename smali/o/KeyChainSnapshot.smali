.class public Lo/KeyChainSnapshot;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;

.field private final i:I


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;IILo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "II",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchGenres"

    .line 35
    invoke-direct {p0, v0, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 36
    invoke-static {p2}, Lo/SEService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/KeyChainSnapshot;->e:Ljava/lang/String;

    .line 37
    iput p3, p0, Lo/KeyChainSnapshot;->d:I

    .line 38
    iput p4, p0, Lo/KeyChainSnapshot;->i:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {}, Lo/ep;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/ep;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/KeyChainSnapshot;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/KeyChainSnapshot;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Netflix.Request.AB15161NqTracking"

    .line 63
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "topCategories"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 43
    iget-object v4, p0, Lo/KeyChainSnapshot;->e:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    iget v4, p0, Lo/KeyChainSnapshot;->d:I

    iget v6, p0, Lo/KeyChainSnapshot;->i:I

    invoke-static {v4, v6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "summary"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 44
    iget-object v2, p0, Lo/KeyChainSnapshot;->e:Ljava/lang/String;

    aput-object v2, v1, v5

    iget v2, p0, Lo/KeyChainSnapshot;->d:I

    iget v3, p0, Lo/KeyChainSnapshot;->i:I

    invoke-static {v2, v3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    .line 45
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v2

    invoke-virtual {p0}, Lo/KeyChainSnapshot;->s()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v2, v3, v6}, Lo/bO;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v4, v1, v0

    .line 44
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

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
    .locals 2

    .line 50
    iget-object v0, p0, Lo/KeyChainSnapshot;->a:Lo/FontRequest;

    iget v1, p0, Lo/KeyChainSnapshot;->d:I

    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-virtual {v0, v1, p2}, Lo/FontRequest;->d(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 51
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
