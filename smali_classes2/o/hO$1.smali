.class Lo/hO$1;
.super Lo/ng;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hO;->a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ng<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/hO;


# direct methods
.method constructor <init>(Lo/hO;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/hO$1;->b:Lo/hO;

    invoke-direct {p0}, Lo/ng;-><init>()V

    return-void
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/hO$1;->b:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected K()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lo/hO$1;->b:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->d()Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/hO$1;->b:Lo/hO;

    invoke-virtual {v0, p1}, Lo/hO;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/hO$1;->b:Lo/hO;

    invoke-virtual {v0, p1}, Lo/hO;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/hO$1;->b:Lo/hO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/hO;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 103
    invoke-super {p0}, Lo/ng;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    :cond_0
    sget-object v1, Lo/zn;->f:Ljava/lang/String;

    const-string v2, "X-Netflix.Request.Routing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lo/hO$1;->b:Lo/hO;

    invoke-static {v1}, Lo/hO;->b(Lo/hO;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.NqTracking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lo/zs;->b:Lo/zs;

    .line 113
    invoke-virtual {v1}, Lo/zs;->d()Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.Client.Context"

    .line 111
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 90
    invoke-super {p0}, Lo/ng;->u()Ljava/util/Map;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lo/hO$1;->b:Lo/hO;

    invoke-virtual {v1}, Lo/hO;->f()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v1, "falcor_server"

    const-string v2, "0.1.0"

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected u_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/hO$1;->b:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
