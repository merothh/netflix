.class public Lo/hJ;
.super Lo/hv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hv<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/zc;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lo/hv;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "reportVoipPostCallInfo"

    aput-object v3, v1, v2

    const-string v3, "[\"%s\"]"

    .line 37
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/hJ;->e:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lo/hJ;->e:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "nf_voip"

    const-string v2, "Query = %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    iput-object p1, p0, Lo/hJ;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Lo/zc;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/hJ;->v:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string p1, "nf_voip"

    const-string v0, "Failed to send VoIP call stats"

    .line 73
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/hJ;->j(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/hJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected j(Ljava/lang/String;)V
    .locals 1

    const-string p1, "nf_voip"

    const-string v0, "VoIP call stats sent successfully"

    .line 68
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

    .line 50
    invoke-super {p0}, Lo/hv;->u()Ljava/util/Map;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lo/hJ;->b:Ljava/lang/String;

    const-string v2, "authtoken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lo/hJ;->v:Ljava/lang/String;

    const-string v2, "callstats"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 63
    iget-object v1, p0, Lo/hJ;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
