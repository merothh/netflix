.class Lo/hB;
.super Lo/hz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hz<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/cJ;

.field private m:Lo/cz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/cz;Ljava/util/List;ZLo/cJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/cz;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lo/cJ;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lo/hz;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lo/hB;->m:Lo/cz;

    .line 43
    iput-object p3, p0, Lo/hB;->d:Ljava/util/List;

    .line 44
    iput-boolean p4, p0, Lo/hB;->b:Z

    .line 45
    iput-object p5, p0, Lo/hB;->e:Lo/cJ;

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lo/hB;->b:Z

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

    .line 60
    iget-object v0, p0, Lo/hB;->d:Ljava/util/List;

    return-object v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 113
    invoke-virtual {p0}, Lo/hB;->T()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lo/hB;->N()Ljava/lang/String;

    move-result-object p1

    const-string v2, "method"

    const-string v3, "?"

    invoke-static {v2, p1, v3}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lo/hB;->O()Z

    move-result p1

    const-string v2, "&"

    if-eqz p1, :cond_0

    const-string p1, "materialize"

    const-string v3, "true"

    .line 118
    invoke-static {p1, v3, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object p1, p0, Lo/hB;->j:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lo/adY;

    .line 123
    invoke-virtual {p1}, Lo/adY;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v3}, Lo/adY;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 125
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 126
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v3, v5, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lo/hB;->P()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_3
    invoke-virtual {p0, v1}, Lo/hB;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_config_data"

    const-string v2, "FetchConfigDataWebRequest URL = %s"

    .line 139
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lo/hB;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lo/hB;->e:Lo/cJ;

    if-eqz v0, :cond_0

    .line 77
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-virtual {p0, p1}, Lo/hB;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 0

    .line 71
    iget-object p2, p0, Lo/hB;->g:Landroid/content/Context;

    invoke-static {p2, p1}, Lo/hw;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lo/hB;->e:Lo/cJ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-interface {v0, v1, p1}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->g:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
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
    invoke-super {p0}, Lo/hz;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method
