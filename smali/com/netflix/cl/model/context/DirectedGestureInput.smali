.class public Lcom/netflix/cl/model/context/DirectedGestureInput;
.super Lcom/netflix/cl/model/context/GestureInput;
.source ""


# instance fields
.field private direction:Lcom/netflix/cl/model/GestureInputDirection;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/GestureInputDirection;Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    const-string p2, "DirectedGestureInput"

    .line 24
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/context/DirectedGestureInput;->addContextType(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/netflix/cl/model/context/DirectedGestureInput;->direction:Lcom/netflix/cl/model/GestureInputDirection;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/netflix/cl/model/context/GestureInput;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/netflix/cl/model/context/DirectedGestureInput;->direction:Lcom/netflix/cl/model/GestureInputDirection;

    const-string v2, "direction"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
