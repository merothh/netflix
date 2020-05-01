.class public final Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;
.super Ljava/lang/Object;
.source "PreAppWidgetLogData.java"


# static fields
.field public static final EXTRA_WIDGET_LOG_DATA:Ljava/lang/String; = "logData"

.field public static final PRINT_LOG_DATA:Z = false

.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetLogData"


# instance fields
.field private deviceCategroy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceType"
    .end annotation
.end field

.field private isMember:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isMember"
    .end annotation
.end field

.field private widgetSize:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widgetSize"
    .end annotation
.end field

.field private widgetType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widgetType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->widgetType:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->widgetSize:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->deviceCategroy:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->isMember:Z

    return-void
.end method

.method public static createInstance(Landroid/content/Context;IZ)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;
    .locals 1

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getWidgetSize(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;Z)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;Z)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;
    .locals 4

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    const-string/jumbo v2, "default"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isMember()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->isMember:Z

    return v0
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
