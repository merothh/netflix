.class public final Lcom/netflix/cl/model/context/NrdSessionId;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Exclusive;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "tvui.NrdSessionId"

    .line 34
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/NrdSessionId;->addContextType(Ljava/lang/String;)V

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/cl/model/context/NrdSessionId;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/netflix/cl/model/context/NrdSessionId;->id:Ljava/lang/String;

    const-string v2, "nrdSessionId"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/cl/model/context/NrdSessionId;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
