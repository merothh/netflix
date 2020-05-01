.class Lo/ce;
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
.field protected m:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

.field private final v:Lo/cb;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/cc;Lo/cz;Ljava/util/List;Lo/cb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/cc;",
            "Lo/cz;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cb;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p3}, Lo/cf;-><init>(Landroid/content/Context;Lo/cz;)V

    .line 48
    iput-object p2, p0, Lo/ce;->o:Lo/cc;

    .line 49
    iput-object p4, p0, Lo/ce;->y:Ljava/util/List;

    .line 50
    iput-object p5, p0, Lo/ce;->v:Lo/cb;

    .line 51
    iget-object p1, p0, Lo/ce;->o:Lo/cc;

    invoke-interface {p1}, Lo/cc;->d()Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    move-result-object p1

    iput-object p1, p0, Lo/ce;->m:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    return-void
.end method


# virtual methods
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

    .line 56
    iget-object v0, p0, Lo/ce;->y:Ljava/util/List;

    return-object v0
.end method

.method protected a(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lo/ce;->v:Lo/cb;

    if-eqz v0, :cond_0

    .line 67
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget v2, p0, Lo/ce;->j:I

    invoke-interface {v0, p1, v1, v2}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 121
    invoke-virtual {p0}, Lo/ce;->O()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lo/ce;->N()Ljava/lang/String;

    move-result-object p1

    const-string v2, "method"

    const-string v3, "?"

    invoke-static {v2, p1, v3}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Lo/ce;->M()Z

    move-result p1

    const-string v2, "&"

    if-eqz p1, :cond_0

    const-string p1, "materialize"

    const-string v3, "true"

    .line 126
    invoke-static {p1, v3, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object p1, p0, Lo/ce;->m:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;->c()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lo/adY;

    .line 131
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

    .line 132
    invoke-virtual {p1, v3}, Lo/adY;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v3, v5, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lo/ce;->P()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_3
    invoke-virtual {p0, v1}, Lo/ce;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_moneyball_data"

    const-string v2, "FetchMoneyballModeRequest URL = %s"

    .line 147
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    invoke-virtual {p0, p1}, Lo/ce;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {v0}, Lo/afP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lo/ce;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ao()Lo/afR;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/afR;->a(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lo/cf;->e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lo/ce;->v:Lo/cb;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    iget v2, p0, Lo/ce;->j:I

    invoke-interface {v0, v1, p1, v2}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_0
    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lo/ce;->h(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object p1

    return-object p1
.end method

.method protected h(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;
    .locals 0

    .line 61
    invoke-static {p1}, Lo/ck;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object p1

    return-object p1
.end method

.method public u()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    iget-object v1, p0, Lo/ce;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lo/ce;->b:Lo/cz;

    invoke-interface {v2}, Lo/cz;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->flwssn:Ljava/lang/String;

    const-string v3, "flwssn"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    const-string v3, "netflixId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    const-string v2, "secureNetflixId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    iget-object v1, p0, Lo/ce;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lo/ce;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lo/ce;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "nf_moneyball_data"

    const-string v3, "fetchParams: %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method
