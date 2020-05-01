.class Lo/jx;
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
.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lo/jr;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/jr;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lo/jv;-><init>()V

    const-string v0, "nf_log"

    const-string v1, "LoggingEventsCLv2MslRequest::"

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p3, p0, Lo/jx;->e:Lo/jr;

    .line 58
    iput-object p1, p0, Lo/jx;->b:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lo/jx;->d:Ljava/lang/String;

    return-void
.end method

.method private N()V
    .locals 2

    .line 134
    invoke-static {}, Lo/gX;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->b:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 114
    invoke-static {}, Lo/gX;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nf_log"

    const-string v1, "Logging details on failure"

    .line 115
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 118
    instance-of v2, p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    if-eqz v2, :cond_0

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->h()Lcom/netflix/cl/model/Error;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "It should be NetflixStatus. This should NOT happen!"

    .line 121
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    new-instance v0, Lcom/netflix/cl/model/Error;

    const-string v2, "clv2DeliveryFailure"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Error;)V

    .line 125
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V

    .line 128
    :cond_1
    invoke-static {}, Lo/gX;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->b:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected J()Ljava/lang/String;
    .locals 1

    const-string v0, "/ichnaea/cl2"

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/jx;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b([B)Ljava/lang/String;
    .locals 0

    const-string p1, "OK"

    return-object p1
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lo/jx;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 107
    iget-object p1, p0, Lo/jx;->e:Lo/jr;

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lo/jx;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/jr;->onEventsDeliveryFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lo/jx;->N()V

    .line 98
    iget-object p1, p0, Lo/jx;->e:Lo/jr;

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lo/jx;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/jr;->onEventsDelivered(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/jx;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic e([B)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/jx;->b([B)Ljava/lang/String;

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

    .line 141
    invoke-virtual {p0}, Lo/jx;->aa()Lo/mB;

    move-result-object v0

    invoke-virtual {p0}, Lo/jx;->I()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/mB;->e([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->p:Lcom/netflix/mediaclient/net/NetworkRequestType;

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

    .line 89
    invoke-super {p0}, Lo/jv;->q()Ljava/util/Map;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lo/jx;->x()Ljava/lang/String;

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
