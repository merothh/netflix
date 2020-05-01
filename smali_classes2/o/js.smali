.class public abstract Lo/js;
.super Lo/ju;
.source ""


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/ju;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract M()Ljava/lang/String;
.end method

.method public R()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lo/js;->e:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string v1, "/ichnaea/log"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/js;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 3

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lo/js;->M()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Lo/js;->Q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to create body of client logging request"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public y()[B
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/js;->v()[B

    move-result-object v0

    return-object v0
.end method
