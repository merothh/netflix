.class public Lo/Yb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 41
    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 45
    :try_start_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 46
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 50
    array-length p1, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :catch_1
    :cond_2
    :goto_1
    return v1
.end method

.method public e(Landroid/content/Context;)Landroid/app/Notification;
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->c(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .line 29
    invoke-static {p1, p2, p3}, Lo/Ye;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method
