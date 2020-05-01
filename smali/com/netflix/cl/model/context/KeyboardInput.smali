.class public Lcom/netflix/cl/model/context/KeyboardInput;
.super Lcom/netflix/cl/model/context/UserInput;
.source ""


# instance fields
.field private isHotKey:Ljava/lang/Boolean;

.field private keyCode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Float;)V
    .locals 0

    .line 22
    invoke-direct {p0, p3}, Lcom/netflix/cl/model/context/UserInput;-><init>(Ljava/lang/Float;)V

    const-string p3, "KeyboardInput"

    .line 23
    invoke-virtual {p0, p3}, Lcom/netflix/cl/model/context/KeyboardInput;->addContextType(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/netflix/cl/model/context/KeyboardInput;->keyCode:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/netflix/cl/model/context/KeyboardInput;->isHotKey:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/netflix/cl/model/context/UserInput;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/netflix/cl/model/context/KeyboardInput;->keyCode:Ljava/lang/Object;

    const-string v2, "keyCode"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/context/KeyboardInput;->isHotKey:Ljava/lang/Boolean;

    const-string v2, "isHotKey"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
