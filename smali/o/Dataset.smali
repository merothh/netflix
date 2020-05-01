.class public Lo/Dataset;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field protected final d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field protected final e:I

.field private final g:Z

.field private final h:Z

.field protected final i:I

.field private final j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/FontRequest<",
            "*>;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "IIZZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p8}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 81
    iput-object p3, p0, Lo/Dataset;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 83
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/SEService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/Dataset;->j:Ljava/lang/String;

    .line 84
    iput p4, p0, Lo/Dataset;->e:I

    .line 85
    iput p5, p0, Lo/Dataset;->i:I

    .line 86
    iput-boolean p6, p0, Lo/Dataset;->h:Z

    .line 87
    iput-boolean p7, p0, Lo/Dataset;->g:Z

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "IIZZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v1, "FetchVideos"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 76
    invoke-direct/range {v0 .. v8}, Lo/Dataset;-><init>(Ljava/lang/String;Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AR;

    add-int/lit8 v3, v1, 0x1

    .line 52
    invoke-interface {v2}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0, v0}, Lo/Dataset;->e(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.ACTION_UPDATE_VIDEOS_IN_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video_ids"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 34
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

    .line 136
    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includeBookmark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    iget-object v1, p0, Lo/Dataset;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "flatCategories"

    goto :goto_0

    :cond_0
    const-string v0, "lists"

    .line 99
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "summary"

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-boolean v3, p0, Lo/Dataset;->g:Z

    if-eqz v3, :cond_1

    const-string v3, "detail"

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-static {}, Lo/ady;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "volatileBitmaskedDetails"

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    iget-object v3, p0, Lo/Dataset;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v4, :cond_3

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v8

    .line 108
    iget-object v4, p0, Lo/Dataset;->j:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v2, v3, v6

    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v8

    .line 110
    iget-object v0, p0, Lo/Dataset;->j:Ljava/lang/String;

    aput-object v0, v2, v7

    iget v0, p0, Lo/Dataset;->e:I

    iget v3, p0, Lo/Dataset;->i:I

    invoke-static {v0, v3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v5

    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lo/Dataset;->a:Lo/FontRequest;

    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-virtual {v0, p2}, Lo/FontRequest;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 116
    iget-object v0, p0, Lo/Dataset;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lo/Dataset;->a:Lo/FontRequest;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "flatCategories"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/Dataset;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    .line 118
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/Dataset;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/Dataset;->n()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/Dataset;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/Dataset;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method protected m()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/Dataset;->h:Z

    return v0
.end method
