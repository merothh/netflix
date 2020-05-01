.class public Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_widget_provider"

    const-string v2, "Sending command to NetflixService to start...action:%s"

    .line 59
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-class p1, Lo/bM;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    .line 62
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "widgetId"

    .line 63
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "nf_widget_provider"

    const-string v1, "onConfigurationChange"

    .line 89
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget v2, v0, v2

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    const-string p4, "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

    .line 81
    invoke-static {p1, p4, p3}, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    .line 82
    invoke-static {p1, p3, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "nf_widget_provider"

    const-string v1, "onDisabled"

    .line 53
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->DELETE:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1

    const-string p1, "nf_widget_provider"

    const-string v0, "onEnabled"

    .line 48
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    .line 33
    array-length v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_widget_provider"

    const-string v3, "onUpdate appWidgetIds.length= %d"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 35
    sget-object v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    array-length v1, p3

    if-ne v1, p2, :cond_0

    .line 37
    aget v0, p3, v2

    .line 40
    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->INSTALL:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeInstallLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;I)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    const-string p3, "com.netflix.mediaclient.intent.action.INSTALLED_FROM_PREAPP_WIDGET"

    .line 42
    invoke-static {p1, p3, v0}, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    .line 43
    invoke-static {p1, p3, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
