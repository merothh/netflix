.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_aui_moneyballcall"


# instance fields
.field public flowMode:Lcom/netflix/android/moneyball/FlowMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flowMode"
    .end annotation
.end field

.field public moneyBallActionModeOverride:Ljava/lang/String;

.field public nextAction:Lcom/netflix/android/moneyball/fields/ActionField;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nextAction"
    .end annotation
.end field

.field public withFields:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withFields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->flowMode:Lcom/netflix/android/moneyball/FlowMode;

    .line 52
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->nextAction:Lcom/netflix/android/moneyball/fields/ActionField;

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->moneyBallActionModeOverride:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 55
    invoke-virtual {p3}, Lcom/netflix/android/moneyball/fields/ActionField;->getRequiredFields()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->withFields:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;
    .locals 2

    .line 73
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    return-object p0
.end method


# virtual methods
.method public getFieldValueMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->withFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    .line 63
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->withFields:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->withFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/android/moneyball/fields/Field;

    .line 40
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/FieldValidator;

    if-eqz v2, :cond_0

    .line 41
    check-cast v1, Lcom/netflix/android/moneyball/fields/FieldValidator;

    invoke-interface {v1}, Lcom/netflix/android/moneyball/fields/FieldValidator;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->flowMode:Lcom/netflix/android/moneyball/FlowMode;

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->moneyBallActionModeOverride:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "mode"

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->moneyBallActionModeOverride:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->flowMode:Lcom/netflix/android/moneyball/FlowMode;

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->nextAction:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/ActionField;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;->getFieldValueMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "fields"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-class v1, Lcom/google/gson/Gson;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
