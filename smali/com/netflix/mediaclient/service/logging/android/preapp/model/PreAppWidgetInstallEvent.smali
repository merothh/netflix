.class public Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "PreAppWidgetInstallEvent.java"


# instance fields
.field private widgetLogData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    const-string/jumbo v0, "preAppAndroid"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;->category:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;->widgetLogData:Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;->setTime(J)V

    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;->widgetLogData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method
