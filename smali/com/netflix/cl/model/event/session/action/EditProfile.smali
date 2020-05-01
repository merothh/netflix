.class public Lcom/netflix/cl/model/event/session/action/EditProfile;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""


# instance fields
.field private desiredSettings:Lcom/netflix/cl/model/ProfileSettings;

.field private profileGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    const-string v0, "EditProfile"

    .line 22
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/EditProfile;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/action/EditProfile;->profileGuid:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/netflix/cl/model/event/session/action/EditProfile;->desiredSettings:Lcom/netflix/cl/model/ProfileSettings;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/Action;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/EditProfile;->profileGuid:Ljava/lang/String;

    const-string v2, "profileGuid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/action/EditProfile;->desiredSettings:Lcom/netflix/cl/model/ProfileSettings;

    const-string v2, "desiredSettings"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
