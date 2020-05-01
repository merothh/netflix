.class public abstract Lo/qf;
.super Lo/qe;
.source ""


# static fields
.field protected static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lo/hm;->e:Lo/hm$StateListAnimator;

    invoke-virtual {v0}, Lo/hm$StateListAnimator;->b()Z

    move-result v0

    sput-boolean v0, Lo/qf;->e:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lo/qe;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected T()Z
    .locals 1

    .line 69
    sget-boolean v0, Lo/qf;->e:Z

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Lo/qe;->T()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract U()Ljava/lang/String;
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->a:Lcom/netflix/mediaclient/net/NetworkRequestType;

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

    .line 53
    sget-boolean v0, Lo/qf;->e:Z

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lo/qe;->q()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    invoke-super {p0}, Lo/qe;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    :cond_1
    sget-object v1, Lo/zn;->f:Ljava/lang/String;

    const-string v2, "X-Netflix.Request.Routing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lo/qf;->U()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.NqTracking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Encoding"

    const-string v2, "msl_v1"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
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

    .line 38
    sget-boolean v0, Lo/qf;->e:Z

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0}, Lo/qe;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-super {p0}, Lo/qe;->u()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v1, "falcor_server"

    const-string v2, "0.1.0"

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
