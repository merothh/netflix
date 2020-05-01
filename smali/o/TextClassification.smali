.class public final Lo/TextClassification;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextClassificationSessionFactory;


# instance fields
.field private final d:Lo/EntityConfidence;

.field private final e:Lo/TextClassificationManager;


# direct methods
.method public constructor <init>(Lo/EntityConfidence;Lo/TextClassificationManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clientNetworkDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassification;->d:Lo/EntityConfidence;

    iput-object p2, p0, Lo/TextClassification;->e:Lo/TextClassificationManager;

    return-void
.end method

.method private final b(Lo/TextClassifierImpl$ActionBar;)Lorg/json/JSONObject;
    .locals 3

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    invoke-virtual {p1}, Lo/TextClassifierImpl$ActionBar;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    const-string v2, "reqFlow"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lo/TextClassifierImpl$ActionBar;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    const-string v2, "reqMode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lo/TextClassifierImpl$ActionBar;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_2
    const-string v2, "reqMemberStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lo/TextClassifierImpl$ActionBar;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_3
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lo/TextClassification;->d:Lo/EntityConfidence;

    invoke-virtual {v0}, Lo/EntityConfidence;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientPlatform"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lo/TextClassification;->d:Lo/EntityConfidence;

    invoke-virtual {v0}, Lo/EntityConfidence;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "swVersion"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lo/TextClassification;->d:Lo/EntityConfidence;

    invoke-virtual {v0}, Lo/EntityConfidence;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endpointVersion"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->b()Lo/TextClassifierImpl$ActionBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/TextClassification;->b(Lo/TextClassifierImpl$ActionBar;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->d()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlow()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    const-string v2, "resFlow"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->d()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    const-string v2, "resMode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->d()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getContextData()Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->getMembershipStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_2
    const-string v2, "resMemberStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynecomError"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->a()I

    move-result p1

    const-string v1, "httpStatusCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    const-string p1, "message"

    const-string v1, "auiClientMoneyballResponse"

    .line 38
    invoke-virtual {v0, p1, v1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/cl/model/event/discrete/DebugEvent;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lo/TextClassification;->e:Lo/TextClassificationManager;

    const-string v1, "debugEvent"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, p1}, Lo/TextClassificationManager;->e(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {p0, p1}, Lo/TextClassification;->b(Lo/TextClassifierImpl$ActionBar;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    const-string p1, "message"

    const-string v1, "auiClientMoneyballRequest"

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/cl/model/event/discrete/DebugEvent;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lo/TextClassification;->e:Lo/TextClassificationManager;

    const-string v1, "debugEvent"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, p1}, Lo/TextClassificationManager;->e(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method
