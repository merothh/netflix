.class public Lo/UserData;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private e:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ContentAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/advisory/ContentAction;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lo/cq;->d()Lo/cq;

    move-result-object v0

    const-string v1, "UpdateExpiryAdvisoryStatus"

    invoke-direct {p0, v1, p1, v0}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "expiringContentNotice"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 38
    invoke-virtual {p3}, Lcom/netflix/model/leafs/advisory/ContentAction;->name()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/UserData;->e:Lo/TextInputTimePickerView;

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

    .line 43
    iget-object v0, p0, Lo/UserData;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

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

.method protected d(Lo/RecommendationInfo;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Lo/RecommendationInfo;->o_()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/RecommendationInfo;->r_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/RecommendationInfo;->n()Lo/PrintJob;

    move-result-object p1

    invoke-virtual {p1}, Lo/PrintJob;->size()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "Empty value"

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 0

    return-void
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
