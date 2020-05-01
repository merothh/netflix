.class public Lo/Ty;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/CY;


# instance fields
.field private e:Lo/TC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)Landroid/content/Intent;
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    .line 101
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    const-string v0, "createStartIntent with null playContext"

    invoke-interface {p3, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 102
    new-instance p3, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v0, -0x143

    const-string v1, "PlayerActivity"

    invoke-direct {p3, v1, v0}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStartIntent with context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " videoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 106
    :cond_2
    :goto_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/StartPlay;

    int-to-long v2, p4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lo/TE;

    invoke-direct {v4, p3, p1}, Lo/TE;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lo/Ty;->j()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x20000

    .line 115
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "extra_video_id"

    .line 116
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "extra_video_type_string_value"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_play_context"

    .line 118
    invoke-virtual {v1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    new-instance p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(I)V

    const-string p1, "player_extras"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "CL_START_PLAY_SESSION_ID"

    .line 121
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 0

    .line 126
    invoke-static {p0, p1, p2, p3, p4}, Lo/Ty;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)Landroid/content/Intent;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 155
    const-class v0, Landroid/content/Context;

    .line 156
    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/content/Context;

    .line 158
    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lo/q;

    invoke-static {v3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/q;

    invoke-interface {v3}, Lo/q;->c()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    .line 159
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 160
    invoke-static {p0}, Lo/aem;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "extra_video_id"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    .line 155
    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lo/Ty;->d(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 2

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/Ty;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "extra_video_id"

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "extra_video_type_string_value"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_play_context"

    .line 137
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "play_launched_by"

    .line 138
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "player_extras"

    .line 139
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.END_PIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V
    .locals 0

    .line 144
    invoke-static {p0, p1, p3, p2, p4}, Lo/Ty;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 145
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "extra_video_id"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-static {p0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic d(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    sget-object v1, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    const-string v2, "uiLabel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p0

    const-string v1, "trackId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "videoId"

    .line 110
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static e(Landroid/app/Activity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V
    .locals 0

    .line 150
    invoke-static {p0, p1, p2, p3}, Lo/Tq;->c(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x14

    .line 151
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lo/Ty;->isInMultiWindowMode()Z

    move-result v0

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lo/Ty;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lo/Ty;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lo/Ty;",
            ">;"
        }
    .end annotation

    .line 78
    const-class v0, Lo/Ty;

    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 10

    .line 217
    invoke-virtual {p0}, Lo/Ty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_id"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "player_extras"

    if-eqz v2, :cond_0

    const-string v2, "extra_play_context"

    .line 219
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-wide/16 v4, 0x0

    const-string v2, "CL_START_PLAY_SESSION_ID"

    .line 220
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 221
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "extra_video_type_string_value"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 224
    invoke-static/range {v4 .. v9}, Lo/TC;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;JLcom/netflix/mediaclient/ui/player/PlayerExtras;)Lo/TC;

    move-result-object v1

    iput-object v1, p0, Lo/Ty;->e:Lo/TC;

    .line 231
    :cond_0
    iget-object v1, p0, Lo/Ty;->e:Lo/TC;

    if-nez v1, :cond_1

    .line 232
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Unable to create primary fragment in PlayerActivity as video id was not passed in the intent."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lo/Ty;->finish()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 336
    new-instance v0, Lo/Ty$4;

    invoke-direct {v0, p0}, Lo/Ty$4;-><init>(Lo/Ty;)V

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 319
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bA:I

    return v0
.end method

.method public getDataContext()Lo/afC;
    .locals 3

    .line 363
    invoke-virtual {p0}, Lo/Ty;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/TC;->m()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->m()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lo/Ty;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_video_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    :goto_0
    new-instance v2, Lo/afC;

    invoke-direct {v2, v0, v1}, Lo/afC;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-object v2
.end method

.method public getEpisodeRowListener()Lo/Du$TaskDescription;
    .locals 1

    .line 463
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    invoke-virtual {v0}, Lo/TC;->W()Lo/Du$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 358
    sget-object v0, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/TC;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 419
    invoke-super {p0}, Lo/CookieSyncManager;->invalidateOptionsMenu()V

    const-string v0, "PlayerActivity"

    const-string v1, "Check if MDX status is changed"

    .line 420
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lo/TC;->O()V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 496
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lo/TC;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lo/Ty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_play_context"

    .line 500
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_1

    .line 502
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x145

    const-string v2, "PlayerActivity"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "]"

    const-string v1, " "

    .line 255
    invoke-virtual {p0}, Lo/Ty;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_video_id"

    .line 257
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v7, " taskRoot: "

    .line 264
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Ty;->isTaskRoot()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " savedInstance: "

    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Action: "

    .line 266
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PIP Enabled: "

    .line 267
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/adk;->k(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_2

    const-string v4, " in PIP mode: "

    .line 269
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Ty;->isInPictureInPictureMode()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 274
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "["

    .line 275
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "[EXCEPTION: "

    .line 279
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-16126 intent didn\'t have videoId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 286
    :cond_4
    :try_start_1
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    if-eqz v3, :cond_5

    .line 289
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-16126 intent didn\'t have videoId look at last breadcrumb"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lo/Ty;->finish()V

    .line 296
    :goto_3
    invoke-direct {p0}, Lo/Ty;->g()V

    return-void

    .line 292
    :cond_5
    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo/TC;->d(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 430
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lo/CookieSyncManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 438
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo/TC;->e(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 439
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lo/CookieSyncManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 166
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    const-string v1, "PlayerActivity"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->m()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/Ty;->c(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Got same video ID - resuming the playback..."

    .line 167
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onNewIntent(Landroid/content/Intent;)V

    .line 172
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-8343 - PlayerActivity received onNewIntent() prior to onCreate() - skipping to avoid crash"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerActivity::onNewIntent - playerActivity got new intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extra_video_id"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "extra_video_type_string_value"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    const-string v0, "extra_play_context"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_2

    .line 186
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x144

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    :cond_2
    move-object v5, v0

    const-string v0, "player_extras"

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    if-eqz v6, :cond_4

    .line 190
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d()I

    move-result v0

    .line 191
    iget-object v1, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget-object p1, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual {p1, v3, v4, v5, v0}, Lo/TC;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    return-void

    :cond_3
    const-wide/16 v0, 0x0

    const-string v2, "CL_START_PLAY_SESSION_ID"

    .line 197
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 199
    iget-object v2, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual/range {v2 .. v8}, Lo/TC;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;J)V

    goto :goto_0

    .line 207
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "PlayerExtras is null in PlayerActivity"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Unable to start handle the new intent without a video id"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 212
    :goto_0
    iget-object p1, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->X()V

    return-void
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    invoke-virtual {v0, p1, p2}, Lo/TC;->e(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 485
    invoke-super {p0}, Lo/CookieSyncManager;->onResume()V

    .line 487
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/Ty;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lo/Ty;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/TC;

    iput-object v0, p0, Lo/Ty;->e:Lo/TC;

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 2

    .line 382
    invoke-super {p0}, Lo/CookieSyncManager;->onStop()V

    .line 383
    invoke-static {p0}, Lo/aed;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayerActivity"

    const-string v1, "another activity on top, finish SPY-11284"

    .line 384
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Lo/Ty;->finish()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/TC;->ag()Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    .line 512
    invoke-virtual {v0}, Lo/TC;->ag()Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lo/Ty;->dismissAllVisibleDialog()V

    .line 514
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->U()V

    .line 516
    :cond_0
    invoke-super {p0}, Lo/CookieSyncManager;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 446
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p1}, Lo/TC;->b(Z)V

    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .line 329
    iget-object v0, p0, Lo/Ty;->e:Lo/TC;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lo/TC;->n()Z

    :cond_0
    return-void
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
