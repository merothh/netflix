.class public final Lo/TX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pC;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo/Ac;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lo/Bc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/TX;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    .line 177
    const-class v0, Landroid/content/Context;

    .line 178
    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 177
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 121
    :try_start_0
    iget-object v0, p0, Lo/TX;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 125
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kl:I

    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {}, Lo/adk;->c()I

    move-result v2

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 127
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ki:I

    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_1
    new-instance v2, Lo/OnGenericMotionListener$Activity;

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "playback_notification_channel"

    invoke-direct {v2, v3, v4}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lo/OnGenericMotionListener$StateListAnimator;

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->ck:I

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->kj:I

    .line 132
    invoke-static {v5}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-direct {p0}, Lo/TX;->a()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lo/OnGenericMotionListener$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 131
    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    const/4 v3, 0x1

    .line 134
    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->e(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    .line 135
    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->c(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    iget-object v3, p0, Lo/TX;->c:Ljava/lang/String;

    .line 136
    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->b(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    iget-object v3, p0, Lo/TX;->c:Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->a(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v0}, Lo/OnGenericMotionListener$Activity;->b(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 139
    invoke-direct {p0}, Lo/TX;->e()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/OnGenericMotionListener$Activity;->e(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lo/TX;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/OnGenericMotionListener$Activity;->a(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/OnGenericMotionListener$Activity;->b(J)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    const/4 v2, -0x1

    .line 142
    invoke-virtual {v0, v2}, Lo/OnGenericMotionListener$Activity;->a(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {v0, p1}, Lo/OnGenericMotionListener$Activity;->c(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$Activity;

    .line 150
    :cond_2
    iget-object p1, p0, Lo/TX;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {v0, v1}, Lo/OnGenericMotionListener$Activity;->e(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    goto :goto_0

    .line 153
    :cond_3
    iget-object p1, p0, Lo/TX;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/OnGenericMotionListener$Activity;->e(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    .line 154
    invoke-virtual {v0, v1}, Lo/OnGenericMotionListener$Activity;->c(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    .line 157
    :goto_0
    invoke-virtual {v0}, Lo/OnGenericMotionListener$Activity;->c()Landroid/app/Notification;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lo/TX;->d:Lo/Ac;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lo/Ac;->e(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 160
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    .line 191
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static c()Landroid/content/IntentFilter;
    .locals 2

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 93
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PlayerSuspendNotificationImpl"

    const-string p2, "Loader url empty"

    .line 94
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    .line 100
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v0, p1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lo/Ua;

    invoke-direct {p2, p0}, Lo/Ua;-><init>(Lo/TX;)V

    new-instance v0, Lo/Ub;

    invoke-direct {v0, p0}, Lo/Ub;-><init>(Lo/TX;)V

    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic d(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lo/TX;->a(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/TX;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/TX;->d(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method static synthetic d(Lo/TX;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/TX;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private e()Landroid/app/PendingIntent;
    .locals 2

    .line 169
    iget-object v0, p0, Lo/TX;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SPY-16126 Empty playableId"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    const-class v0, Lo/q;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/q;

    iget-object v1, p0, Lo/TX;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/q;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PlayerSuspendNotificationImpl"

    const-string v1, "failed to download"

    .line 113
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 114
    invoke-direct {p0, p1}, Lo/TX;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 54
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/TX;->j:Lo/Bc;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 58
    :cond_0
    iget-object v0, p0, Lo/TX;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v0, p0, Lo/TX;->j:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/TX;->b:Ljava/lang/String;

    .line 62
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/TX;->j:Lo/Bc;

    invoke-interface {p2}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lo/TX;->j:Lo/Bc;

    invoke-interface {p2}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 63
    :cond_1
    iget-object p2, p0, Lo/TX;->j:Lo/Bc;

    invoke-interface {p2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v3, "PlayerSuspendNotificationImpl"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p2, v2, :cond_3

    .line 64
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gv:I

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Object;

    .line 65
    invoke-interface {v0}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 66
    invoke-interface {v0}, Lo/AK;->V()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 67
    invoke-interface {v0}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 64
    invoke-static {p2, v6}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/TX;->a:Ljava/lang/String;

    .line 68
    invoke-interface {v0}, Lo/AK;->ai()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 69
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lo/TX;->j:Lo/Bc;

    invoke-interface {v7}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {p2, v6}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/TX;->a:Ljava/lang/String;

    .line 71
    :cond_2
    invoke-interface {v0}, Lo/AK;->O()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/TX;->c:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lo/TX;->b:Ljava/lang/String;

    aput-object v0, p2, v5

    iget-object v0, p0, Lo/TX;->c:Ljava/lang/String;

    aput-object v0, p2, v1

    iget-object v0, p0, Lo/TX;->a:Ljava/lang/String;

    aput-object v0, p2, v4

    const-string v0, "%s is episode %s : %s"

    invoke-static {v3, v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 74
    iput-object p2, p0, Lo/TX;->a:Ljava/lang/String;

    .line 75
    invoke-interface {v0}, Lo/AK;->N()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/TX;->c:Ljava/lang/String;

    new-array p2, v4, [Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lo/TX;->b:Ljava/lang/String;

    aput-object v0, p2, v5

    iget-object v0, p0, Lo/TX;->c:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "%s is movie %s "

    invoke-static {v3, v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    :goto_0
    iget-object p2, p0, Lo/TX;->j:Lo/Bc;

    invoke-interface {p2}, Lo/Bc;->aY()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-direct {p0, p1, p2}, Lo/TX;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method a(Lo/Bc;Lo/Ac;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lo/TX;->j:Lo/Bc;

    .line 200
    iput-object p2, p0, Lo/TX;->d:Lo/Ac;

    return-void
.end method

.method public b()V
    .locals 3

    .line 85
    iget-object v0, p0, Lo/TX;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    iget-object v0, p0, Lo/TX;->d:Lo/Ac;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 87
    invoke-interface {v0, v1, v2}, Lo/Ac;->c(IZ)V

    :cond_0
    return-void
.end method
