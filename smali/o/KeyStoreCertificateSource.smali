.class public Lo/KeyStoreCertificateSource;
.super Lo/TimeZoneRulesDataContract;
.source ""


# instance fields
.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;Lo/ci;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/MetadataReader;",
            "Ljava/lang/String;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v1, "FetchPrePlayExperiences"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 37
    invoke-direct/range {v0 .. v7}, Lo/TimeZoneRulesDataContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "videos"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    const/4 p2, 0x2

    const-string p3, "prePlay"

    aput-object p3, p1, p2

    .line 38
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/KeyStoreCertificateSource;->e:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
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

    .line 51
    invoke-super {p0, p1}, Lo/TimeZoneRulesDataContract;->b(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lo/KeyStoreCertificateSource;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 72
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0, p2}, Lo/ci;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 62
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->d(Lo/ci;Lo/TextClock;)V

    .line 63
    iget-object p2, p0, Lo/KeyStoreCertificateSource;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/KeyStoreCertificateSource;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    check-cast p2, Lo/agp;

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Lo/agp;->bF()Lcom/netflix/model/leafs/PrePlayExperiences;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 66
    invoke-virtual {p0}, Lo/KeyStoreCertificateSource;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/KeyStoreCertificateSource;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 64
    invoke-interface {p1, p2, v0}, Lo/ci;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected j()V
    .locals 4

    .line 46
    iget-object v0, p0, Lo/KeyStoreCertificateSource;->a:Lo/FontRequest;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/TextInputTimePickerView;

    iget-object v2, p0, Lo/KeyStoreCertificateSource;->e:Lo/TextInputTimePickerView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    return-void
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
