.class Lo/hI;
.super Lo/hz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hz<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/zc;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, v0}, Lo/hz;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Lo/hI;->e:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {p3}, Lo/zc;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/hI;->b:Ljava/lang/String;

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "reportVoipPostCallInfo"

    aput-object p3, p1, p2

    const-string p3, "[\"%s\"]"

    .line 44
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/hI;->d:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    .line 46
    iget-object p3, p0, Lo/hI;->d:Ljava/lang/String;

    aput-object p3, p1, p2

    const-string p2, "nf_voip"

    const-string p3, "Query = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected M()Ljava/util/List;
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

    .line 78
    iget-object v1, p0, Lo/hI;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/hI;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/hI;->h(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string p1, "nf_voip"

    const-string v0, "Failed to send VoIP call stats"

    .line 93
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 1

    const-string p1, "nf_voip"

    const-string v0, "VoIP call stats sent successfully"

    .line 88
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u()Ljava/util/Map;
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

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v1, p0, Lo/hI;->e:Ljava/lang/String;

    const-string v2, "authtoken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lo/hI;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callstats"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
