.class public Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x80000000

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b:Ljava/lang/Integer;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%26trkid%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->c:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nflx://www.netflix.com/browse?q=source%3DNetflixWidget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%26action%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 2

    const-string v0, "nf_widget_receiver"

    const-string v1, "launching nflx play - via deeplink"

    .line 162
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play"

    .line 163
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Intent;)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 164
    invoke-virtual {p2}, Lo/xO$Activity;->a()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    .line 288
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    .line 289
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "nf_widget_receiver"

    const-string v0, "isIntentFromPreappWidget source: %s, fromWidget: %s, intent:%s"

    invoke-static {p0, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method

.method private static b(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3

    const-string v0, "home"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "videoId"

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playableId"

    .line 204
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoType"

    .line 205
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 209
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fseries%2F"

    .line 210
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "%26episodeid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fprograms%2F"

    .line 213
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 216
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fmovies%2F"

    .line 217
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 3

    .line 91
    new-instance v0, Lo/xO;

    invoke-direct {v0}, Lo/xO;-><init>()V

    .line 92
    new-instance v1, Lo/xO$Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v0}, Lo/xO$Activity;-><init>(Lo/xO;Lo/xO;)V

    .line 93
    new-instance v2, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;-><init>(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    invoke-virtual {v0, p2, v2}, Lo/xO;->c(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 2

    const-string v0, "nf_widget_receiver"

    const-string v1, "launching nflx home - via deeplink"

    .line 156
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "home"

    const/4 v1, 0x0

    .line 157
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Intent;)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 158
    invoke-virtual {p2}, Lo/xO$Activity;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x10008000

    .line 230
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "FROM_PREAPP_WIDGET"

    const-string v1, "NetflixWidget"

    .line 231
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "widgetId"

    .line 232
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 2

    const-string v0, "nf_widget_receiver"

    const-string v1, "launching nflx details - via deeplink"

    .line 168
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "view_details"

    .line 169
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Intent;)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 170
    invoke-virtual {p2}, Lo/xO$Activity;->a()V

    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

    .line 253
    invoke-static {v2, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "videoIndex"

    .line 257
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const-string v1, "videoId"

    .line 261
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "playableId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "videoType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static d(Landroid/content/Intent;)I
    .locals 2

    .line 238
    sget-object v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "widgetId"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V
    .locals 3

    .line 268
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "Nflx action from PreappWidget, log events. Intent=%s"

    .line 273
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "nf_widget_receiver"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p0}, Lo/Ye;->c(Landroid/content/Context;)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;[I)V

    const-string v0, "widgetId"

    .line 276
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 277
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstanceWithId(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object p0

    .line 278
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->createInstance(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;

    move-result-object p1

    .line 280
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->sendWidgetCommandLogViaClv2(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 6

    .line 101
    invoke-static {}, Lo/aeB;->c()Z

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "nf_widget_receiver"

    const-string v5, "action: %s"

    .line 103
    invoke-static {v4, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v1, "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v1, "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "com.netflix.mediaclient.intent.action.INSTALLED_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "com.netflix.mediaclient.intent.action.PLAY_1_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "com.netflix.mediaclient.intent.action.PLAY_2_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "com.netflix.mediaclient.intent.action.PLAY_3_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_9
    const-string v1, "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string p0, "Not supported!"

    .line 149
    invoke-static {v4, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->c(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 145
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->VIEW_TITLE_DETAILS3:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 140
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->c(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 141
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->VIEW_TITLE_DETAILS2:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 136
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->c(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 137
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->VIEW_TITLE_DETAILS1:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 132
    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 133
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->START_PLAY3:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 128
    :pswitch_4
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 129
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->START_PLAY2:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 124
    :pswitch_5
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 125
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->START_PLAY1:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 119
    :pswitch_6
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 120
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->HOME:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 114
    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->f(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 115
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->GO_TO_NEXT:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 110
    :pswitch_8
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->f(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 111
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->GO_TO_NEXT_ON_RESIZED:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    goto :goto_2

    .line 106
    :pswitch_9
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->f(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    .line 107
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->GO_TO_NEXT_ON_INSTALL:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3490065e -> :sswitch_9
        -0x33fc3147 -> :sswitch_8
        -0x1b9e07a6 -> :sswitch_7
        -0xb254859 -> :sswitch_6
        -0x33fde05 -> :sswitch_5
        0x7079323 -> :sswitch_4
        0xd38e148 -> :sswitch_3
        0x25970ae9 -> :sswitch_2
        0x4d0756e2 -> :sswitch_1
        0x580dfb3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->d(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    return-void
.end method

.method private static f(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 2

    const-string v0, "nf_widget_receiver"

    const-string v1, "trying to update widget"

    .line 174
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;

    invoke-direct {v0, p1, p0, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;-><init>(Landroid/content/Intent;Landroid/content/Context;Lo/xO$Activity;)V

    .line 195
    invoke-static {p0, v0}, Lo/xQ;->a(Landroid/content/Context;Lo/xQ$ActionBar;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->c(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 86
    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    :cond_2
    :goto_0
    return-void
.end method
