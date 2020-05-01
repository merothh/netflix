.class public Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "SharedContextSessionStartedEvent.java"


# static fields
.field private static final ROLE:Ljava/lang/String; = "role"

.field private static final ROLE_VALUE:Ljava/lang/String; = "initiator"

.field private static final TRIGGER:Ljava/lang/String; = "trigger"

.field private static final TRIGGER_VALUE:Ljava/lang/String; = "signup"

.field private static final UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sharedContext"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "uuid"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;->mUuid:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "role"

    const-string/jumbo v2, "initiator"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "trigger"

    const-string/jumbo v2, "signup"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
