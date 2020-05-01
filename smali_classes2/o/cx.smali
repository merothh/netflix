.class public Lo/cx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cK;


# static fields
.field private static a:Ljava/lang/String; = "nf_ab_test_config"

.field static e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;


# instance fields
.field private c:Ljava/lang/Long;

.field d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/cx;->d:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lo/cx;->d:Landroid/content/Context;

    const-string v0, "abTestConfig"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object p1

    sput-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error loading ab config"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_0
    sget-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-direct {p0, p1}, Lo/cx;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 67
    sget-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz p1, :cond_0

    .line 68
    invoke-static {p1}, Lo/cx;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/cl/model/ABTestAllocations;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lo/cx;->d(Lcom/netflix/cl/model/ABTestAllocations;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    invoke-static {v1}, Lo/cS;->e(Ljava/lang/String;)Lo/fC;

    move-result-object v2

    .line 174
    instance-of v3, v2, Lo/fD;

    if-eqz v3, :cond_0

    .line 175
    check-cast v2, Lo/fD;

    .line 176
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v3

    .line 177
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {v2}, Lo/fD;->h()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    invoke-virtual {v2}, Lo/fD;->m()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->changeTo(IZ)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v2

    .line 180
    invoke-virtual {p1, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/cl/model/ABTestAllocations;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    new-instance v4, Lcom/netflix/cl/model/ABTest;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-direct {v4, v2, v3}, Lcom/netflix/cl/model/ABTest;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 206
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AB test is null for ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    if-nez v3, :cond_1

    .line 208
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AB test cell is null for ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-static {}, Lo/fP;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fQ;

    .line 214
    new-instance v2, Lcom/netflix/cl/model/ABTest;

    invoke-virtual {v1}, Lo/fQ;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lo/fQ;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/cl/model/ABTest;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/netflix/cl/model/ABTest;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/netflix/cl/model/ABTest;

    .line 218
    new-instance v0, Lcom/netflix/cl/model/ABTestAllocations;

    invoke-direct {v0, p0}, Lcom/netflix/cl/model/ABTestAllocations;-><init>([Lcom/netflix/cl/model/ABTest;)V

    return-object v0
.end method

.method private d(Lcom/netflix/cl/model/ABTestAllocations;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/TestAllocations;

    invoke-virtual {p1}, Lcom/netflix/cl/model/ABTestAllocations;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/context/TestAllocations;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/cx;->c:Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 89
    iget-object v0, p0, Lo/cx;->d:Landroid/content/Context;

    const-string v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .line 224
    sget-object v0, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 8

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lo/cx;->a:Ljava/lang/String;

    const-string v0, "abTestConfig object is null - ignore overwrite"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->toJsonString(Z)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lo/cx;->d:Landroid/content/Context;

    const-string v3, "abTestConfig"

    invoke-static {v2, v3, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-nez v1, :cond_1

    .line 113
    sput-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 117
    sget-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-direct {p0, p1}, Lo/cx;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 119
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/cx;->c:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 120
    sget-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz p1, :cond_5

    .line 121
    invoke-static {p1}, Lo/cx;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/cl/model/ABTestAllocations;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lo/cx;->d(Lcom/netflix/cl/model/ABTestAllocations;)V

    goto :goto_2

    .line 130
    :cond_1
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "nfxpref"

    .line 131
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    invoke-static {v4}, Lo/cS;->e(Ljava/lang/String;)Lo/fC;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 136
    invoke-static {}, Lo/cS;->a()Lo/cS$Application;

    move-result-object v7

    invoke-virtual {v5, v1, v2, p1, v7}, Lo/fC;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;Lo/cS$Application;)Z

    .line 137
    invoke-virtual {v5}, Lo/fC;->B_()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    sget-object v0, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_2

    .line 148
    sget-object v0, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_5

    .line 158
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/cx;->c:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 159
    sget-object p1, Lo/cx;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-static {p1}, Lo/cx;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/cl/model/ABTestAllocations;

    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Lo/cx;->d(Lcom/netflix/cl/model/ABTestAllocations;)V

    :cond_5
    :goto_2
    return-void
.end method
