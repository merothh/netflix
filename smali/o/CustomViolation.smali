.class public final Lo/CustomViolation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CustomViolation;->a:Ljava/lang/String;

    .line 67
    new-instance p1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    iput-object p1, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 70
    iget-object p1, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iget-object v0, p0, Lo/CustomViolation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 74
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "beforeFetch"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final b()V
    .locals 4

    .line 111
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "parseResponse"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final c()V
    .locals 4

    .line 82
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "buildPqls"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "requestedLeafs"

    invoke-static {v0, p1}, Lo/ContentUriWithoutPermissionViolation;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "cacheGet"

    const-string v2, "cmpTask"

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final d()V
    .locals 2

    .line 78
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "requestedLeafs"

    invoke-static {v0, p1}, Lo/ContentUriWithoutPermissionViolation;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "handleFailure"

    const-string v2, "cmpTask"

    .line 135
    invoke-virtual {v0, p1, v2, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final e()V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "requestedLeafs"

    invoke-static {v0, p1}, Lo/ContentUriWithoutPermissionViolation;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "networkGet"

    const-string v2, "cmpTask"

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final e(Lo/Contacts;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    invoke-virtual {p1}, Lo/Contacts;->f()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "cacheStats"

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 123
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final g()V
    .locals 2

    .line 131
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final h()V
    .locals 4

    .line 127
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "handleSuccess"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final i()V
    .locals 4

    .line 119
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "mergeResponse"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final j()V
    .locals 2

    .line 115
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final k()Lo/CustomViolation;
    .locals 4

    .line 152
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "cancelled"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-object p0
.end method

.method public final l()V
    .locals 2

    .line 143
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final m()Lo/CustomViolation;
    .locals 4

    .line 147
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "cacheSkipped"

    const-string v2, "cmpTask"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-object p0
.end method

.method public final n()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;
    .locals 2

    .line 157
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iget-object v1, p0, Lo/CustomViolation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 158
    iget-object v0, p0, Lo/CustomViolation;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
