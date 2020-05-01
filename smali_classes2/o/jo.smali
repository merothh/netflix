.class Lo/jo;
.super Lo/js;
.source ""


# instance fields
.field private b:Lo/jh;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/jh;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lo/js;-><init>()V

    const-string v0, "nf_adid"

    const-string v1, "AdvertiserIdLoggingWebRequest::"

    .line 30
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lo/jo;->d:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lo/jo;->b:Lo/jh;

    return-void
.end method


# virtual methods
.method protected M()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/jo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    const-string v0, "nf_adid"

    return-object v0
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/jo;->h(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lo/jo;->b:Lo/jh;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Lo/jh;->a()V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->t:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_adid"

    const-string v1, "Advertiser ID and opt in startus delivered %s"

    .line 59
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    iget-object p1, p0, Lo/jo;->b:Lo/jh;

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Lo/jh;->e()V

    :cond_0
    return-void
.end method

.method public q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-super {p0}, Lo/js;->q()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-Netflix.ichnaea.request.type"

    const-string v2, "IchnaeaRequest"

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
