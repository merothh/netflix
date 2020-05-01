.class public final Lo/cw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cw$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/cw$Activity;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

.field private d:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/cw$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/cw$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/cw;->c:Lo/cw$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/cw;->a:Landroid/content/Context;

    .line 39
    iget-object p1, p0, Lo/cw;->a:Landroid/content/Context;

    const-string v0, "abTestConfig"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object p1

    iput-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Error loading ab config"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    iget-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-direct {p0, p1}, Lo/cw;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 49
    iget-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lo/cw;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 140
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

    .line 141
    invoke-static {v1}, Lo/cS;->e(Ljava/lang/String;)Lo/fC;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lo/fD;

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v3

    .line 144
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v4

    const-string v5, "data.getConfigForId(key)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    move-object v4, v2

    check-cast v4, Lo/fD;

    invoke-virtual {v4}, Lo/fD;->h()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v2}, Lo/fC;->m()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->changeTo(IZ)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/cl/model/ABTestAllocations;
    .locals 6

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 162
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "it.keys"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 190
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    new-instance v4, Lcom/netflix/cl/model/ABTest;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    const-string v5, "testConfig.cell!!"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-direct {v4, v2, v3}, Lcom/netflix/cl/model/ABTest;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 167
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

    .line 168
    :cond_3
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    if-nez v3, :cond_0

    .line 169
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

    .line 175
    :cond_4
    invoke-static {}, Lo/fP;->a()Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "PersistentNmAbConfig.getAllNonMemberABTestValues()"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 176
    new-instance v3, Lcom/netflix/cl/model/ABTest;

    const-string v4, "value"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v2, v1}, Lcom/netflix/cl/model/ABTest;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_5
    check-cast v0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/netflix/cl/model/ABTest;

    .line 193
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 179
    check-cast p1, [Lcom/netflix/cl/model/ABTest;

    .line 180
    new-instance v0, Lcom/netflix/cl/model/ABTestAllocations;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/ABTestAllocations;-><init>([Lcom/netflix/cl/model/ABTest;)V

    return-object v0

    .line 193
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Lo/cw;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/cl/model/ABTestAllocations;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/TestAllocations;

    invoke-virtual {p1}, Lcom/netflix/cl/model/ABTestAllocations;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/context/TestAllocations;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/cw;->d:Ljava/lang/Long;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 58
    iget-object v0, p0, Lo/cw;->a:Landroid/content/Context;

    const-string v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .line 185
    iget-object v0, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lo/cw;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->toJsonString(Z)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lo/cw;->a:Landroid/content/Context;

    const-string v3, "abTestConfig"

    invoke-static {v2, v3, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-nez v1, :cond_1

    .line 82
    iput-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 86
    iget-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-direct {p0, p1}, Lo/cw;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 87
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/cw;->d:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 88
    iget-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz p1, :cond_5

    .line 89
    invoke-direct {p0, p1}, Lo/cw;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    goto :goto_1

    .line 98
    :cond_1
    const-class v1, Landroid/content/Context;

    .line 97
    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "nfxpref"

    .line 101
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 102
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

    .line 103
    invoke-static {v4}, Lo/cS;->e(Ljava/lang/String;)Lo/fC;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "editor"

    .line 106
    invoke-static {v2, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/cS;->a()Lo/cS$Application;

    move-result-object v6

    invoke-virtual {v5, v1, v2, p1, v6}, Lo/fC;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;Lo/cS$Application;)Z

    .line 107
    invoke-virtual {v5}, Lo/fC;->B_()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    iget-object v0, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-nez v0, :cond_3

    invoke-static {}, Lo/amh;->c()V

    :cond_3
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_5

    .line 120
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/cw;->d:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 121
    iget-object p1, p0, Lo/cw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-direct {p0, p1}, Lo/cw;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    :cond_5
    :goto_1
    return-void
.end method
