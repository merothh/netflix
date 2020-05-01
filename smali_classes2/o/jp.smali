.class final Lo/jp;
.super Lo/jv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/jv<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lo/jh;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/jh;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lo/jv;-><init>()V

    const-string v0, "nf_volleyrequest"

    const-string v1, "AdvertiserIdLoggingMslRequest::"

    .line 40
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lo/jp;->d:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lo/jp;->b:Lo/jh;

    return-void
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 1

    const-string v0, "/ichnaea/log"

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/jp;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected a([B)Ljava/lang/String;
    .locals 0

    const-string p1, "OK"

    return-object p1
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lo/jp;->b:Lo/jh;

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Lo/jh;->a()V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lo/jp;->b:Lo/jh;

    if-eqz p1, :cond_0

    .line 89
    invoke-interface {p1}, Lo/jh;->e()V

    :cond_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/jp;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic e([B)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/jp;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e([BLjava/util/Map;Ljava/lang/String;Lo/aie;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            ")[B"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lo/jp;->aa()Lo/mB;

    move-result-object v0

    invoke-virtual {p0}, Lo/jp;->I()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/mB;->d([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->t:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
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

    .line 52
    invoke-super {p0}, Lo/jv;->q()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-Netflix.ichnaea.request.type"

    const-string v2, "IchnaeaRequest"

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Lo/jp;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method
