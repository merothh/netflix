.class Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# instance fields
.field private atEndPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

.field private atStartPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

.field private mContext:Landroid/content/Context;

.field private present:Z

.field private scale:I

.field private technology:Ljava/lang/String;

.field private wasCharged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->present:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->technology:Ljava/lang/String;

    iput p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->scale:I

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->atStartPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->atEndPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    return-void
.end method

.method public static createBatteryStats(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "present"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "technology"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;-><init>(Landroid/content/Context;ZLjava/lang/String;I)V

    return-object v3
.end method


# virtual methods
.method public getJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "technology"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->technology:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "scale"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->scale:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "present"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->present:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "wasCharged"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->wasCharged:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "atStart"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->atStartPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "atEnd"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->atEndPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWasCharged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->wasCharged:Z

    return-void
.end method

.method public updateBatteryStat(Z)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "health"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "plugged"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "voltage"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->atStartPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->setStat(IIIIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->atEndPlay:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->setStat(IIIIII)V

    goto :goto_0
.end method
