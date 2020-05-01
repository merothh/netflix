.class public Lo/UserDictionary;
.super Lo/Session;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lo/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string p4, "AddToQueue"

    .line 56
    invoke-direct {p0, p4, p1, p2, p10}, Lo/Session;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V

    .line 58
    iput-object p3, p0, Lo/UserDictionary;->e:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lo/UserDictionary;->d:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lo/UserDictionary;->g:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lo/UserDictionary;->h:Ljava/lang/String;

    .line 62
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/UserDictionary;->i:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lo/UserDictionary;->j:Ljava/lang/String;

    .line 64
    invoke-static {p6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/UserDictionary;->f:Z

    return-void
.end method

.method private u()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/Session;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 2

    const-string v0, "AddToQueueTask"

    .line 142
    invoke-static {p1, v0}, Lo/Downloads;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {p1}, Lo/Downloads;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Video already in queue"

    .line 144
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p1

    .line 147
    :cond_0
    invoke-static {p1}, Lo/Downloads;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Add to Queue Request not valid"

    .line 148
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cX:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p1

    .line 152
    :cond_1
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    iget-boolean v1, p0, Lo/UserDictionary;->f:Z

    const-string v2, "param"

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0}, Lo/UserDictionary;->u()V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 90
    iget-object v4, p0, Lo/UserDictionary;->g:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\"%s\""

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    iget-object v6, p0, Lo/UserDictionary;->a:Lo/FontRequest;

    invoke-virtual {v6}, Lo/FontRequest;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lo/UserDictionary;->a:Lo/FontRequest;

    invoke-virtual {v5}, Lo/FontRequest;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "[{\"from\":%d,\"to\":%d}]"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v4, Lo/adt$Activity;

    invoke-direct {v4, v2, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v3, Lo/adt$Activity;

    iget-object v4, p0, Lo/UserDictionary;->h:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v3, Lo/adt$Activity;

    iget-object v4, p0, Lo/UserDictionary;->e:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lo/adt$Activity;

    iget-object v4, p0, Lo/UserDictionary;->i:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lo/adt$Activity;

    const-string v3, "pathSuffix"

    invoke-direct {v2, v3, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lo/adt$Activity;

    const-string v2, "[\"summary\"]"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lo/adt$Activity;

    iget-object v3, p0, Lo/UserDictionary;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_0
    iget-object v1, p0, Lo/UserDictionary;->j:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/UserDictionary;->j:Ljava/lang/String;

    const-string v3, "signature"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-boolean v0, p0, Lo/UserDictionary;->f:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "lolomos"

    aput-object v4, v0, v3

    .line 70
    iget-object v3, p0, Lo/UserDictionary;->d:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "add"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "videos"

    aput-object v4, v0, v3

    .line 73
    iget-object v3, p0, Lo/UserDictionary;->e:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "addToQueue"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 180
    invoke-interface {p1, p2}, Lo/ci;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/Session;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-super {p0}, Lo/Session;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 7

    const-string p2, "AddToQueueTask"

    const-string v0, "Add to queue was successful"

    .line 158
    invoke-static {p2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lo/UserDictionary;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/UserDictionary;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-boolean v3, p0, Lo/UserDictionary;->f:Z

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, p0, Lo/UserDictionary;->a:Lo/FontRequest;

    new-array v4, v1, [Lo/TextInputTimePickerView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "lists"

    aput-object v6, v5, v2

    iget-object v6, p0, Lo/UserDictionary;->g:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v5}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lo/UserDictionary;->s()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ia;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1}, Lo/ci;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz v0, :cond_2

    const-string p1, "addToQueue new user case"

    .line 170
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lo/UserDictionary;->x()Lo/hW;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 173
    invoke-interface {p1, p2}, Lo/hW;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
