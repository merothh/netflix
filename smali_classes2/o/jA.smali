.class public Lo/jA;
.super Lo/js;
.source ""


# static fields
.field public static d:Z = false

.field private static g:Z = true


# instance fields
.field private b:Lo/jr;

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/jr;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lo/js;-><init>()V

    const-string v0, "nf_log_cl"

    const-string v1, "LoggingEventsCLv2WebRequest::"

    .line 50
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p3, p0, Lo/jA;->b:Lo/jr;

    .line 52
    iput-object p1, p0, Lo/jA;->h:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lo/jA;->f:Ljava/lang/String;

    return-void
.end method

.method private O()V
    .locals 2

    .line 137
    invoke-static {}, Lo/gX;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->b:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 117
    invoke-static {}, Lo/gX;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nf_log_cl"

    const-string v1, "Logging details on failure"

    .line 118
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 121
    instance-of v2, p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    if-eqz v2, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->h()Lcom/netflix/cl/model/Error;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "It should be NetflixStatus. This should NOT happen!"

    .line 124
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    new-instance v0, Lcom/netflix/cl/model/Error;

    const-string v2, "clv2DeliveryFailure"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Error;)V

    .line 128
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V

    .line 131
    :cond_1
    invoke-static {}, Lo/gX;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->b:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected M()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/jA;->f:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    const-string v0, "nf_log_cl"

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 2

    .line 75
    sget-boolean v0, Lo/jA;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "https://ichnaea.staging.netflix.com/cl2"

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lo/jA;->e:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string v1, "/ichnaea/cl2"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/jA;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lo/jA;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 110
    iget-object p1, p0, Lo/jA;->b:Lo/jr;

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lo/jA;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/jr;->onEventsDeliveryFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 89
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->p:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lo/jA;->O()V

    .line 101
    iget-object p1, p0, Lo/jA;->b:Lo/jr;

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lo/jA;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/jr;->onEventsDelivered(Ljava/lang/String;)V

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

    .line 62
    invoke-super {p0}, Lo/js;->q()Ljava/util/Map;

    move-result-object v0

    .line 63
    sget-boolean v1, Lo/jA;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "debugRequest"

    const-string v2, "true"

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
