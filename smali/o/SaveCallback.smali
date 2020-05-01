.class public Lo/SaveCallback;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "RemoveFromQueue"

    .line 53
    invoke-direct {p0, v0, p1, p8}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 55
    iput-object p2, p0, Lo/SaveCallback;->e:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lo/SaveCallback;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 57
    iput-object p4, p0, Lo/SaveCallback;->j:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lo/SaveCallback;->i:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lo/SaveCallback;->f:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lo/SaveCallback;->g:Ljava/lang/String;

    .line 62
    invoke-static {p5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/SaveCallback;->h:Z

    return-void
.end method

.method private p()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 1

    const-string v0, "RemoveFromQueueTask"

    .line 135
    invoke-static {p1, v0}, Lo/Downloads;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lo/Downloads;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p1

    .line 140
    :cond_0
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    iget-boolean v1, p0, Lo/SaveCallback;->h:Z

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0}, Lo/SaveCallback;->p()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lo/SaveCallback;->a:Lo/FontRequest;

    invoke-virtual {v3}, Lo/FontRequest;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/SaveCallback;->a:Lo/FontRequest;

    invoke-virtual {v3}, Lo/FontRequest;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "[{\"from\":%d,\"to\":%d}]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Lo/adt$Activity;

    iget-object v3, p0, Lo/SaveCallback;->f:Ljava/lang/String;

    const-string v4, "param"

    invoke-direct {v2, v4, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lo/adt$Activity;

    iget-object v3, p0, Lo/SaveCallback;->e:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lo/adt$Activity;

    const-string v3, "pathSuffix"

    invoke-direct {v2, v3, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lo/adt$Activity;

    const-string v2, "[\"summary\"]"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v1, p0, Lo/SaveCallback;->g:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/SaveCallback;->g:Ljava/lang/String;

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

    .line 67
    iget-boolean v0, p0, Lo/SaveCallback;->h:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "lolomos"

    aput-object v4, v0, v3

    .line 68
    iget-object v3, p0, Lo/SaveCallback;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "remove"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "videos"

    aput-object v4, v0, v3

    .line 71
    iget-object v3, p0, Lo/SaveCallback;->e:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "removeFromQueue"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 159
    invoke-interface {p1, p2}, Lo/ci;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 5

    const-string p2, "RemoveFromQueueTask"

    const-string v0, "Remove from queue was successful"

    .line 146
    invoke-static {p2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean p2, p0, Lo/SaveCallback;->h:Z

    if-eqz p2, :cond_0

    .line 148
    iget-object p2, p0, Lo/SaveCallback;->a:Lo/FontRequest;

    const/4 v0, 0x1

    new-array v1, v0, [Lo/TextInputTimePickerView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "lists"

    aput-object v4, v2, v3

    iget-object v4, p0, Lo/SaveCallback;->i:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p2, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lo/SaveCallback;->s()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lo/ia;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2}, Lo/ci;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
