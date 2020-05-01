.class public Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;
.super Lcom/netflix/cl/model/event/session/command/Command;
.source ""


# instance fields
.field private desiredValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/command/Command;-><init>()V

    const-string v0, "ChangeValueCommand"

    .line 20
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;->addContextType(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;->desiredValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/command/Command;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;->desiredValue:Ljava/lang/Object;

    const-string v2, "desiredValue"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
