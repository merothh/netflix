.class public Lo/FillEventHistory;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string p3, "LogPostPlayImpression"

    .line 33
    invoke-direct {p0, p3, p1, p6}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 34
    iput-object p2, p0, Lo/FillEventHistory;->e:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lo/FillEventHistory;->d:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lo/FillEventHistory;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/FillEventHistory;->d:Ljava/lang/String;

    const-string v3, "impressionData"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/FillEventHistory;->j:Ljava/lang/String;

    const-string v3, "impressionToken"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 51
    iget-object v1, p0, Lo/FillEventHistory;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "postPlayImpression"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-interface {p1, v0, p2}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected c()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 1

    .line 64
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
