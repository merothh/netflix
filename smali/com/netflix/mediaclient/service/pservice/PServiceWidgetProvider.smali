.class public Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PServiceWidgetProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_preapp_appwidgetprovider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static createNotifyPServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string/jumbo v0, "nf_preapp_appwidgetprovider"

    const-string/jumbo v1, "Sending command to PService to start...action:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getWidgetHeightInDp(Landroid/os/Bundle;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "appWidgetMinHeight"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "appWidgetMaxHeight"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getWidgetWidthInDp(Landroid/os/Bundle;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "appWidgetMaxWidth"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "appWidgetMinWidth"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static notifyPServiceOnWidgetAction(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string/jumbo v0, "nf_preapp_appwidgetprovider"

    const-string/jumbo v1, "Sending command to PService to start...widgetId:%d, action:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->createNotifyPServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "widgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static notifyWidgetsOnConfigurationChange(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "nf_preapp_appwidgetprovider"

    const-string/jumbo v2, "onConfigurationChange"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

    array-length v3, v1

    if-lez v3, :cond_0

    aget v0, v1, v0

    :cond_0
    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->notifyPServiceOnWidgetAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4, v8}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->getWidgetWidthInDp(Landroid/os/Bundle;Z)I

    move-result v0

    invoke-static {p4, v8}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->getWidgetHeightInDp(Landroid/os/Bundle;Z)I

    move-result v1

    invoke-static {p4, v9}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->getWidgetWidthInDp(Landroid/os/Bundle;Z)I

    move-result v2

    invoke-static {p4, v9}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->getWidgetHeightInDp(Landroid/os/Bundle;Z)I

    move-result v3

    const-string/jumbo v4, "nf_preapp_appwidgetprovider"

    const-string/jumbo v5, "widget resizing, Landscape(WxH):[%d-%d](%d-%d), Portrait(WxH):[%d-%d](%d-%d)"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x6

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x7

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

    invoke-static {p1, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->notifyPServiceOnWidgetAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "nf_preapp_appwidgetprovider"

    const-string/jumbo v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->DELETE:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;)V

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.UNINSTALL_FROM_PREAPP_WIDGET"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->createNotifyPServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "nf_preapp_appwidgetprovider"

    const-string/jumbo v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "nf_preapp_appwidgetprovider"

    const-string/jumbo v1, "onUpdate appWidgetIds.length= %d"

    new-array v2, v5, [Ljava/lang/Object;

    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v1, p3

    if-ne v1, v5, :cond_0

    aget v0, p3, v4

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->INSTALL:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;I)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.INSTALLED_FROM_PREAPP_WIDGET"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->notifyPServiceOnWidgetAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
