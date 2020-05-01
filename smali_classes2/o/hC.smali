.class Lo/hC;
.super Lo/hz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hz<",
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

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;ZZLo/cV;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lo/cV;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lo/hz;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lo/hC;->b:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Lo/hC;->e:Z

    .line 42
    iput-object p5, p0, Lo/hC;->d:Lo/cV;

    .line 43
    iput-boolean p4, p0, Lo/hC;->m:Z

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/hC;->e:Z

    return v0
.end method

.method protected M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lo/hC;->b:Ljava/util/List;

    return-object v0
.end method

.method protected P()Ljava/lang/String;
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIRECT"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "supportedSdks"

    invoke-static {v2, v1}, Lo/aeH;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-boolean v1, p0, Lo/hC;->m:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "loggedIn"

    invoke-static {v2, v1}, Lo/aeH;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v1, Lo/afK;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/afK;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v1}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v1}, Lo/afK;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lo/aeH;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "nf_voip_config_data"

    const-string v3, "optional params: %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
    .locals 0

    .line 86
    invoke-static {p1}, Lo/hw;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 117
    invoke-virtual {p0}, Lo/hC;->T()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lo/hC;->N()Ljava/lang/String;

    move-result-object p1

    const-string v2, "method"

    const-string v3, "?"

    invoke-static {v2, p1, v3}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object p1, p0, Lo/hC;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lo/adY;

    .line 124
    invoke-virtual {p1}, Lo/adY;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-virtual {p1, v2}, Lo/adY;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 126
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "&"

    .line 127
    invoke-static {v2, v4, v5}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lo/hC;->P()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    invoke-virtual {p0, v1}, Lo/hC;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_voip_config_data"

    const-string v2, "FetchConfigDataWebRequest URL = %s"

    .line 139
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/hC;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lo/hC;->d:Lo/cV;

    if-eqz v0, :cond_0

    .line 92
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/cV;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lo/hC;->d:Lo/cV;

    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {p0, p1}, Lo/hC;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/hC;->d:Lo/cV;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, v1, p1}, Lo/cV;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 102
    :cond_0
    iput-object v1, p0, Lo/hC;->d:Lo/cV;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 107
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->w:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method
