.class public Lo/RootTrustManager;
.super Lo/TimeZoneRulesDataContract;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Z

.field private final h:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private i:Lo/TextInputTimePickerView;

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
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
            "ZZZZ",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 65
    invoke-static/range {p9 .. p9}, Lo/RootTrustManager;->e(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p9

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lo/TimeZoneRulesDataContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V

    move-object v0, p4

    .line 66
    iput-object v0, v8, Lo/RootTrustManager;->d:Ljava/lang/String;

    move-object v0, p5

    .line 67
    iput-object v0, v8, Lo/RootTrustManager;->e:Ljava/lang/String;

    move v0, p6

    .line 68
    iput-boolean v0, v8, Lo/RootTrustManager;->g:Z

    move/from16 v0, p7

    .line 69
    iput-boolean v0, v8, Lo/RootTrustManager;->f:Z

    move/from16 v0, p8

    .line 70
    iput-boolean v0, v8, Lo/RootTrustManager;->j:Z

    move-object/from16 v0, p10

    .line 71
    iput-object v0, v8, Lo/RootTrustManager;->h:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-void
.end method

.method private static e(Z)Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchShowDetails"

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

    .line 144
    invoke-super {p0}, Lo/TimeZoneRulesDataContract;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    :cond_0
    sget-object v1, Lo/gS;->b:Lo/gS$StateListAnimator;

    invoke-virtual {v1}, Lo/gS$StateListAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includePreviewsOriginalBrandingUrl"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    invoke-static {}, Lo/et;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kidsDark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    invoke-static {}, Lo/fg;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v1, Lo/adt$Activity;

    .line 161
    invoke-static {}, Lo/fg;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "prefLangRule"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Lo/TimeZoneRulesDataContract;->b(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lo/RootTrustManager;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-static {}, Lo/adq;->c()Z

    move-result v1

    .line 83
    invoke-static {}, Lo/fo;->h()Z

    move-result v7

    .line 84
    invoke-static {}, Lo/ady;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v1

    .line 87
    :goto_0
    iget-object v3, p0, Lo/RootTrustManager;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lo/RootTrustManager;->g:Z

    iget-boolean v5, p0, Lo/RootTrustManager;->f:Z

    iget-boolean v8, p0, Lo/RootTrustManager;->j:Z

    .line 96
    invoke-static {}, Lo/ady;->i()Z

    move-result v9

    .line 97
    invoke-static {}, Lo/fg;->j()Z

    move-result v10

    move-object v1, p1

    move-object v2, v0

    .line 87
    invoke-static/range {v1 .. v10}, Lo/SEService;->e(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZZZZZ)V

    .line 100
    invoke-static {v0}, Lo/SEService;->e(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/RootTrustManager;->i:Lo/TextInputTimePickerView;

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 123
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 124
    iget-boolean v0, p0, Lo/RootTrustManager;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {p1, v1, v1, p2}, Lo/ci;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {p1, v1, p2}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    .line 110
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->d(Lo/ci;Lo/TextClock;)V

    .line 111
    iget-object p2, p0, Lo/RootTrustManager;->a:Lo/FontRequest;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/RootTrustManager;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/Bb;

    .line 112
    iget-boolean v0, p0, Lo/RootTrustManager;->g:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lo/RootTrustManager;->a:Lo/FontRequest;

    iget-object v1, p0, Lo/RootTrustManager;->i:Lo/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    .line 114
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/RootTrustManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/RootTrustManager;->n()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lo/ci;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 117
    :cond_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/RootTrustManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/RootTrustManager;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method protected k()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lo/RootTrustManager;->h:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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

    .line 134
    iget-object v0, p0, Lo/RootTrustManager;->h:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
