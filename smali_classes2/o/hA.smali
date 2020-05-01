.class public Lo/hA;
.super Lo/hr;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hr<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/cV;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZLo/cV;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lo/cV;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lo/hr;-><init>()V

    .line 32
    iput-object p1, p0, Lo/hA;->b:Ljava/util/List;

    .line 33
    iput-boolean p2, p0, Lo/hA;->e:Z

    .line 34
    iput-object p3, p0, Lo/hA;->d:Lo/cV;

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 20
    invoke-super {p0}, Lo/hr;->D()Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-super {p0}, Lo/hr;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/hA;->d:Lo/cV;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, v1, p1}, Lo/cV;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 80
    :cond_0
    iput-object v1, p0, Lo/hA;->d:Lo/cV;

    return-void
.end method

.method protected c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
    .locals 0

    .line 64
    invoke-static {p1}, Lo/hw;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lo/hA;->d:Lo/cV;

    if-eqz v0, :cond_0

    .line 70
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/cV;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lo/hA;->d:Lo/cV;

    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {p0, p1}, Lo/hA;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    return-void
.end method

.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-super {p0}, Lo/hr;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/hA;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i()Z
    .locals 1

    .line 20
    invoke-super {p0}, Lo/hr;->i()Z

    move-result v0

    return v0
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

    .line 44
    invoke-super {p0}, Lo/hr;->u()Ljava/util/Map;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIRECT"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "supportedSdks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-boolean v1, p0, Lo/hA;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "loggedIn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Lo/afK;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/afK;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v1}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v1}, Lo/afK;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
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

    .line 39
    iget-object v0, p0, Lo/hA;->b:Ljava/util/List;

    return-object v0
.end method
