.class public Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;
.super Ljava/lang/Object;
.source "PreAppWidgetLogActionData.java"


# static fields
.field public static final EXTRA_WIDGET_ACTION_DATA:Ljava/lang/String; = "widgetActionData"

.field private static final INPUT_GESTURE:Ljava/lang/String; = "gesture"

.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetLogActionData"


# instance fields
.field private inputMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inputMethod"
    .end annotation
.end field

.field private inputValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inputValue"
    .end annotation
.end field

.field private isHotKey:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isHotKey"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->isHotKey:Z

    const-string/jumbo v0, "gesture"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->inputMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->inputValue:Ljava/lang/String;

    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;-><init>(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    return-object v0
.end method
