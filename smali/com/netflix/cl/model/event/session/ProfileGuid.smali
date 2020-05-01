.class public Lcom/netflix/cl/model/event/session/ProfileGuid;
.super Lcom/netflix/cl/model/event/session/ProfileIdentity;
.source ""


# instance fields
.field private profileGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/ProfileIdentity;-><init>()V

    const-string v0, "ProfileGuid"

    .line 22
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/ProfileGuid;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/ProfileGuid;->profileGuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/ProfileIdentity;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/ProfileGuid;->profileGuid:Ljava/lang/String;

    const-string v2, "profileGuid"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
