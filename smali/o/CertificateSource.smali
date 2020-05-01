.class public Lo/CertificateSource;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lcom/netflix/mediaclient/servicemgr/PlayLocationType;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchPostPlayVideos"

    .line 40
    invoke-direct {p0, v0, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 41
    iput-object p2, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lo/CertificateSource;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 43
    iput-object p4, p0, Lo/CertificateSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 28
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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/CertificateSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 74
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    goto :goto_0

    :cond_0
    const-string v2, "true"

    :goto_0
    const-string v3, "ppNewContext"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 14
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

    const-string v2, "videos"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 51
    iget-object v4, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    iget-object v4, p0, Lo/CertificateSource;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v7, "detail"

    const-string v8, "summary"

    if-ne v4, v6, :cond_0

    move-object v4, v7

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    const/4 v6, 0x2

    aput-object v4, v1, v6

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 53
    iget-object v4, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    aput-object v4, v1, v5

    const-string v4, "postPlayExperience"

    aput-object v4, v1, v6

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v9, "experienceData"

    .line 55
    invoke-interface {v1, v9}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "playbackVideos"

    aput-object v12, v11, v3

    .line 57
    invoke-static {v3, v10}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v13

    aput-object v13, v11, v5

    invoke-static {v3, v10}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v10

    aput-object v10, v11, v6

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v3

    aput-object v8, v10, v5

    invoke-static {v10}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v11, v0

    invoke-static {v11}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v7

    invoke-interface {v1, v7}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lo/CertificateSource;->a:Lo/FontRequest;

    new-array v1, v0, [Lo/TextInputTimePickerView;

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v2, v7, v3

    iget-object v2, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    aput-object v2, v7, v5

    aput-object v4, v7, v6

    .line 62
    invoke-static {v7}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "postPlayExperiences"

    aput-object v4, v2, v3

    iget-object v7, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    aput-object v7, v2, v5

    aput-object v9, v2, v6

    .line 63
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v3

    iget-object v2, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    aput-object v2, v0, v5

    aput-object v12, v0, v6

    .line 64
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    aput-object v0, v1, v6

    .line 61
    invoke-virtual {p1, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-interface {p1, v0, p2}, Lo/ci;->d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 82
    iget-object p2, p0, Lo/CertificateSource;->a:Lo/FontRequest;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/CertificateSource;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/AW;

    .line 83
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
