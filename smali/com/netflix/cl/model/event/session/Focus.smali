.class public Lcom/netflix/cl/model/event/session/Focus;
.super Lcom/netflix/cl/model/event/session/SessionTracked;
.source ""


# instance fields
.field private view:Lcom/netflix/cl/model/AppView;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lcom/netflix/cl/model/event/session/SessionTracked;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    const-string p2, "Focus"

    .line 21
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/event/session/Focus;->addContextType(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/cl/model/event/session/Focus;->view:Lcom/netflix/cl/model/AppView;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/SessionTracked;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/netflix/cl/model/event/session/Focus;->view:Lcom/netflix/cl/model/AppView;

    const-string v2, "view"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
