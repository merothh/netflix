.class public Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ImpressionEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "uiView"

.field protected static final NAME:Ljava/lang/String; = "impression"

.field protected static final TRACK_ID:Ljava/lang/String; = "trackId"

.field protected static final VIEW:Ljava/lang/String; = "view"


# instance fields
.field private mTrackId:I

.field private mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    const-string/jumbo v0, "impression"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->name:Ljava/lang/String;

    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->category:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    iput p2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mTrackId:I

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v1, "trackId"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mTrackId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
