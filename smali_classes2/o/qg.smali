.class public Lo/qg;
.super Lo/qs;
.source ""


# static fields
.field protected static final e:Ljava/lang/String;


# instance fields
.field protected final b:Lo/pS;

.field protected final d:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    sput-object v0, Lo/qg;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/qs;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lo/qg;->w:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lo/qg;->b:Lo/pS;

    const-string p1, "[\"link\"]"

    .line 37
    iput-object p1, p0, Lo/qg;->v:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lo/qg;->d:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p1, p4

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "nf_nq"

    const-string p3, "%s - %s"

    .line 39
    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected W()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lo/qg;->w:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_nq"

    const-string v2, "getBodyForNq: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    iget-object v0, p0, Lo/qg;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lo/qg;->b:Lo/pS;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 123
    invoke-interface {v0, v1, p1}, Lo/pS;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 125
    :cond_0
    sget-object p1, Lo/qg;->e:Ljava/lang/String;

    const-string v0, "no callback for link"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 5

    .line 102
    sget-object v0, Lo/LegacyErrorStrings;->h:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lo/qg;->B:Landroid/content/Context;

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->f:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v2, p1, v3}, Lo/iZ;->b(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    if-eqz v0, :cond_1

    const-string v1, "links"

    .line 108
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lo/qg;->e:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/qg;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v3, "onSuccess %s status: %s jLinks %s"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    iget-object v0, p0, Lo/qg;->b:Lo/pS;

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v0, v1, p1}, Lo/pS;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 116
    :cond_2
    sget-object p1, Lo/qg;->e:Ljava/lang/String;

    const-string v0, "no callback for link"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object v0, Lo/qg;->e:Ljava/lang/String;

    const-string v1, "error parsing json"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/qg;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->a:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/qg;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public q()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Lo/qs;->q()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    iget-object v1, p0, Lo/qg;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/aei;->e(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    .line 88
    :goto_0
    sget-object v2, Lo/qg;->e:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to get MSL headers"

    invoke-static {v2, v1, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lo/qs;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected u_()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lo/qg;->v:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
