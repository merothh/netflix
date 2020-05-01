.class public abstract Lcom/netflix/mediaclient/service/logging/client/model/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/JsonSerializer;


# static fields
.field public static final ACTIVE_SESSIONS:Ljava/lang/String; = "activeSessions"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CUSTOM:Ljava/lang/String; = "custom"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_CONTEXT:Ljava/lang/String; = "dataContext"

.field public static final KIDS:Ljava/lang/String; = "kids"

.field public static final MODAL_VIEW:Ljava/lang/String; = "modalView"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final SEVERITY:Ljava/lang/String; = "severity"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPTIME:Ljava/lang/String; = "uptime"


# instance fields
.field protected activeSessions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeSessions"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;"
        }
    .end annotation
.end field

.field protected category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataContext"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected kids:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kids"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.1
    .end annotation
.end field

.field protected modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modalView"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected sequence:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sequence"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected time:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected uptime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uptime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    const-string/jumbo v1, "type"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    :cond_0
    const-string/jumbo v1, "kids"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->kids:Z

    const-string/jumbo v1, "modalView"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    :cond_1
    const-string/jumbo v1, "category"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->category:Ljava/lang/String;

    const-string/jumbo v1, "name"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->name:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-static {p1, v1, v6, v7}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    const-string/jumbo v1, "sequence"

    invoke-static {p1, v1, v6, v7}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->sequence:J

    const-string/jumbo v1, "uptime"

    invoke-static {p1, v1, v6, v7}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->uptime:J

    const-string/jumbo v1, "dataContext"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    const-string/jumbo v1, "activeSessions"

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createEvent(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAllActiveSession(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getAllActiveSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->category:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomData()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getCustomData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "custom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    return-object v0
.end method

.method public getModalView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->sequence:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    return-wide v0
.end method

.method public getType()Lcom/netflix/mediaclient/service/logging/client/model/EventType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    return-object v0
.end method

.method public getUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->uptime:J

    return-wide v0
.end method

.method public isKids()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->kids:Z

    return v0
.end method

.method public removeActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->category:Ljava/lang/String;

    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    return-void
.end method

.method public setKids(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->kids:Z

    return-void
.end method

.method public setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->name:Ljava/lang/String;

    return-void
.end method

.method public setSequence(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->sequence:J

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    return-void
.end method

.method public setUptime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->uptime:J

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "category"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->category:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "modalView"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "dataContext"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "sequence"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->sequence:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "uptime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->uptime:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "kids"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->kids:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    if-eqz v0, :cond_6

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v0, "activeSessions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->activeSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Event [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->sequence:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", kids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->kids:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->uptime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", modalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataContex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Event;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
