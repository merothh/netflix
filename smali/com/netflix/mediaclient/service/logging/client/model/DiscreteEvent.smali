.class public abstract Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/Event;
.source "DiscreteEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->event:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
