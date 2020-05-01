.class public Lo/TrustedRootCertificates;
.super Lo/TimeZoneRulesDataContract;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/netflix/mediaclient/browse/api/task/TaskMode;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/MetadataReader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 65
    invoke-static {p6}, Lo/TrustedRootCertificates;->a(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lo/TimeZoneRulesDataContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V

    move-object v0, p4

    .line 66
    iput-object v0, v8, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    move-object v0, p5

    .line 67
    iput-object v0, v8, Lo/TrustedRootCertificates;->d:Ljava/lang/String;

    move/from16 v0, p7

    .line 68
    iput-boolean v0, v8, Lo/TrustedRootCertificates;->i:Z

    move/from16 v0, p8

    .line 69
    iput-boolean v0, v8, Lo/TrustedRootCertificates;->h:Z

    move-object/from16 v0, p9

    .line 70
    iput-object v0, v8, Lo/TrustedRootCertificates;->j:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-void
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchMovieDetails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, ":prefetch"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    .line 143
    invoke-super {p0}, Lo/TimeZoneRulesDataContract;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    :cond_0
    sget-object v1, Lo/gS;->b:Lo/gS$StateListAnimator;

    invoke-virtual {v1}, Lo/gS$StateListAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includePreviewsOriginalBrandingUrl"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    invoke-static {}, Lo/et;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kidsDark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    invoke-static {}, Lo/fg;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    new-instance v1, Lo/adt$Activity;

    .line 160
    invoke-static {}, Lo/fg;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "prefLangRule"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
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

    .line 79
    invoke-super {p0, p1}, Lo/TimeZoneRulesDataContract;->b(Ljava/util/List;)V

    .line 81
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    .line 82
    invoke-static {}, Lo/fo;->h()Z

    move-result v1

    .line 83
    invoke-static {}, Lo/ady;->j()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 86
    :cond_0
    iget-object v2, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    .line 88
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-boolean v4, p0, Lo/TrustedRootCertificates;->h:Z

    .line 86
    invoke-static {p1, v2, v0, v1, v4}, Lo/SEService;->c(Ljava/util/List;Ljava/util/List;ZZZ)V

    .line 94
    iget-object v0, p0, Lo/TrustedRootCertificates;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "videos"

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/TrustedRootCertificates;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lo/SEService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    iget-boolean v0, p0, Lo/TrustedRootCertificates;->i:Z

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 98
    iget-object v6, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    aput-object v6, v0, v3

    const-string v6, "trickplayBifUrl"

    aput-object v6, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    invoke-static {}, Lo/fg;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 102
    iget-object v1, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "supportedMediaTracks"

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x0

    .line 128
    invoke-interface {p1, v0, p2}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 108
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->d(Lo/ci;Lo/TextClock;)V

    .line 109
    iget-object p2, p0, Lo/TrustedRootCertificates;->a:Lo/FontRequest;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/AX;

    if-eqz p2, :cond_2

    .line 111
    invoke-interface {p2}, Lo/AX;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p2, Lo/agp;

    if-eqz v0, :cond_1

    .line 118
    move-object v0, p2

    check-cast v0, Lo/agp;

    .line 119
    iget-object v1, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lo/TrustedRootCertificates;->b(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;)V

    .line 121
    :cond_1
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/TrustedRootCertificates;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/TrustedRootCertificates;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_2

    .line 112
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-7519: FetchMovieDetailsTask got weird movie id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    const-string p2, "null"

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lo/AX;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requested Movie id : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/TrustedRootCertificates;->e:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const-string v0, "FetchMovieDetailsTask"

    .line 114
    invoke-static {v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 115
    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_2
    return-void
.end method

.method protected k()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lo/TrustedRootCertificates;->j:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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

    .line 133
    iget-object v0, p0, Lo/TrustedRootCertificates;->j:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
