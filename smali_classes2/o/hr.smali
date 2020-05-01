.class abstract Lo/hr;
.super Lo/nj;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/nj<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected P()V
    .locals 2

    .line 47
    iget-object v0, p0, Lo/hr;->g:Lo/cz;

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/hr;->i(Ljava/lang/String;)V

    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    const-string v0, "/android/samurai/config"

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->g:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-super {p0}, Lo/nj;->u()Ljava/util/Map;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lo/hr;->aa()Lo/mB;

    move-result-object v1

    invoke-virtual {v1}, Lo/mB;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b()Ljava/util/Map;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method
