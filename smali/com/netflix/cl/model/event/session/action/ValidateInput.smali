.class public Lcom/netflix/cl/model/event/session/action/ValidateInput;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""


# instance fields
.field private inputKind:Lcom/netflix/cl/model/InputKind;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/InputKind;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    const-string v0, "ValidateInput"

    .line 21
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/ValidateInput;->addContextType(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/ValidateInput;->inputKind:Lcom/netflix/cl/model/InputKind;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/Action;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/ValidateInput;->inputKind:Lcom/netflix/cl/model/InputKind;

    const-string v2, "inputKind"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
