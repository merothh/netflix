.class public Lo/cj;
.super Lo/cf;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/cf<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Lo/cb;

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/cc;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, p3, v0}, Lo/cf;-><init>(Landroid/content/Context;Lo/cz;I)V

    .line 47
    iput-object p2, p0, Lo/cj;->o:Lo/cc;

    .line 48
    iput-object p5, p0, Lo/cj;->m:Lo/cb;

    .line 49
    iput-object p4, p0, Lo/cj;->x:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lo/cj;->n:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\", \"moneyball\", \"next\"]"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    aput-object p2, p1, p4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lo/cj;->n:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\", \"requestContext\"]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/cj;->v:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "call"

    return-object v0
.end method

.method protected R()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lo/cj;->v:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lo/cf;->b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V

    return-void
.end method

.method protected b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lo/cj;->m:Lo/cb;

    if-eqz v0, :cond_0

    .line 112
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget v2, p0, Lo/cj;->j:I

    invoke-interface {v0, p1, v1, v2}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    invoke-virtual {p0, p1}, Lo/cj;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lo/cj;->m:Lo/cb;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    iget v2, p0, Lo/cj;->j:I

    invoke-interface {v0, v1, p1, v2}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-super {p0}, Lo/cf;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/cj;->i(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object p1

    return-object p1
.end method

.method protected i(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;
    .locals 0

    .line 101
    invoke-static {p1}, Lo/ck;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object p1

    return-object p1
.end method

.method public u()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object v1, p0, Lo/cj;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lo/cj;->b:Lo/cz;

    invoke-interface {v2}, Lo/cz;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->flwssn:Ljava/lang/String;

    const-string v3, "flwssn"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    const-string v3, "netflixId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    const-string v2, "secureNetflixId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    iget-object v1, p0, Lo/cj;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lo/cj;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lo/cj;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    iget-object v1, p0, Lo/cj;->o:Lo/cc;

    invoke-interface {v1}, Lo/cc;->b()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "authURL"

    .line 78
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nf_moneyball_data"

    const-string v5, "nextParams: %s"

    invoke-static {v3, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    iget-object v2, p0, Lo/cj;->x:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->getFieldValueMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "nextKeys: %s"

    invoke-static {v3, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    iget-object v1, p0, Lo/cj;->x:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    .line 89
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "param"

    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
