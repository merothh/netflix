.class public Lcom/netflix/cl/model/event/session/action/DeleteProfile;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""


# instance fields
.field private profileGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    const-string v0, "DeleteProfile"

    .line 20
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;->addContextType(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/DeleteProfile;->profileGuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/Action;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/DeleteProfile;->profileGuid:Ljava/lang/String;

    const-string v2, "profileGuid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method