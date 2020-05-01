.class public Lo/cP;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Ljava/lang/String; = "nf_config_signin"


# instance fields
.field d:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

.field e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/cP;->e:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lo/cP;->e:Landroid/content/Context;

    const-string v0, "signInConfigData"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object p1

    iput-object p1, p0, Lo/cP;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "signInConfigData"

    const/4 v1, 0x0

    .line 110
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    .line 116
    :cond_0
    invoke-static {p0}, Lo/cP;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V

    return-void
.end method

.method private static b(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    sget-object v0, Lo/jB;->c:Lo/jB;

    invoke-virtual {v0, p0}, Lo/jB;->d(Ljava/util/Map;)V

    .line 139
    sget-object v0, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v0}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jE;

    .line 140
    invoke-interface {v1, p0}, Lo/jE;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lo/fO;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/gF;->a:Lo/gF$StateListAnimator;

    .line 145
    invoke-virtual {v0}, Lo/gF$StateListAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    new-instance v2, Lcom/netflix/cl/model/ABTest;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/cl/model/ABTest;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    new-array p0, p0, [Lcom/netflix/cl/model/ABTest;

    .line 153
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/netflix/cl/model/ABTest;

    .line 154
    new-instance v0, Lcom/netflix/cl/model/ABTestAllocations;

    invoke-direct {v0, p0}, Lcom/netflix/cl/model/ABTestAllocations;-><init>([Lcom/netflix/cl/model/ABTest;)V

    .line 155
    new-instance p0, Lcom/netflix/cl/model/context/TestAllocations;

    invoke-virtual {v0}, Lcom/netflix/cl/model/ABTestAllocations;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/cl/model/context/TestAllocations;-><init>(Lorg/json/JSONObject;)V

    .line 156
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "signInConfigData"

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    invoke-static {p0}, Lo/cP;->d(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;

    .line 123
    iget v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;->testId:I

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;->cellId:I

    invoke-static {v1, v0}, Lo/fP;->d(II)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lo/fP;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lo/cP;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "signInConfigData"

    const/4 v1, 0x0

    .line 60
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public c()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/cP;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 4

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lo/cP;->b:Ljava/lang/String;

    const-string v0, "signInConfigData object is null - ignore overwrite"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lo/cP;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lo/cP;->d(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 76
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lo/cP;->e:Landroid/content/Context;

    const-string v3, "signInConfigData"

    invoke-static {v2, v3, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lo/cP;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    if-eqz v0, :cond_1

    .line 82
    iget-object p1, p0, Lo/cP;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-static {p1}, Lo/cP;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V

    :cond_1
    return-void
.end method
