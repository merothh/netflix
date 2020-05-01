.class public Lo/kA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SuggestionsAdapter;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Landroid/media/VolumeProvider;

.field private b:Landroid/content/Context;

.field private c:Landroid/media/session/MediaSession;

.field private d:Z

.field private e:I

.field private f:Lo/cO;

.field private g:Z

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Ljava/lang/String;

.field private j:Lo/ko;

.field private k:Z

.field private m:Z

.field private final n:Landroid/content/BroadcastReceiver;

.field private o:I


# direct methods
.method public constructor <init>(Lo/ko;Lo/cO;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lo/kA;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lo/kA;->o:I

    .line 63
    iput-boolean v0, p0, Lo/kA;->m:Z

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lo/kA;->n:Landroid/content/BroadcastReceiver;

    const-string v0, "nf_media_session_controller"

    const-string v1, "Initializing MediaSessionController"

    .line 66
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lo/kA;->b:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lo/kA;->j:Lo/ko;

    .line 70
    iput-object p2, p0, Lo/kA;->f:Lo/cO;

    .line 72
    iget-object p1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_0

    const-string p1, "MediaSession was not destroyed correctly! Destroying it now."

    .line 73
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lo/kA;->b()V

    .line 76
    :cond_0
    new-instance p1, Landroid/media/session/MediaSession;

    iget-object p2, p0, Lo/kA;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Netflix media session"

    invoke-direct {p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    .line 77
    invoke-direct {p0}, Lo/kA;->k()V

    .line 78
    invoke-direct {p0}, Lo/kA;->m()V

    return-void
.end method

.method static synthetic a(Lo/kA;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/kA;->j()V

    return-void
.end method

.method static synthetic a(Lo/kA;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/kA;->e(I)V

    return-void
.end method

.method static synthetic b(Lo/kA;)Lo/ko;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/kA;->j:Lo/ko;

    return-object p0
.end method

.method static synthetic c(Lo/kA;)I
    .locals 0

    .line 40
    iget p0, p0, Lo/kA;->o:I

    return p0
.end method

.method private c(I)J
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x16b

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x16c

    :goto_0
    return-wide v0
.end method

.method static synthetic d(Lo/kA;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/kA;->h()V

    return-void
.end method

.method static synthetic d(Lo/kA;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lo/kA;->d:Z

    return p1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETVOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uuid"

    .line 544
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "volume"

    .line 545
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-interface {p1}, Lo/bO;->j()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "com.netflix.mediaclient.intent.category.MDX"

    .line 547
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private e()V
    .locals 6

    .line 123
    sget-object v0, Lo/nd;->b:Lo/nd;

    invoke-virtual {v0}, Lo/nd;->b()Z

    move-result v0

    const-string v1, "nf_media_session_controller"

    if-nez v0, :cond_0

    const-string v0, "no mde - safetyNet failed"

    .line 124
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "isRemote"

    .line 129
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    iget-object v3, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {v3}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    .line 131
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {v5}, Lo/ko;->g()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fName"

    .line 135
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "friendlyName"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "not sending extra via mde"

    .line 137
    invoke-static {v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "extrasInSession %s"

    .line 139
    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    iget-object v1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private e(I)V
    .locals 4

    .line 385
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 387
    iget-boolean v1, p0, Lo/kA;->g:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x4

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    .line 390
    :cond_0
    invoke-direct {p0, p1}, Lo/kA;->c(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    :goto_0
    const-wide/16 v1, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 392
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 393
    iget-object p1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lo/kA;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/kA;->i()V

    return-void
.end method

.method static synthetic f(Lo/kA;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/kA;->o()I

    move-result p0

    return p0
.end method

.method private f()Z
    .locals 2

    .line 430
    iget-object v0, p0, Lo/kA;->f:Lo/cO;

    invoke-interface {v0}, Lo/cO;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 433
    :cond_0
    iget-boolean v0, p0, Lo/kA;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "nf_media_session_controller"

    const-string v1, "Lock screen is visible and lock screen is NOT enabled! Remove it!"

    .line 434
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lo/kA;->d()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private g()V
    .locals 4

    .line 457
    new-instance v0, Lo/kA$5;

    iget v1, p0, Lo/kA;->e:I

    const/16 v2, 0xa

    div-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v2, v1}, Lo/kA$5;-><init>(Lo/kA;III)V

    iput-object v0, p0, Lo/kA;->a:Landroid/media/VolumeProvider;

    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "handlePlayEvent"

    .line 317
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lo/kA;->g:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->b()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->c()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "handlePauseEvent"

    .line 294
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-boolean v0, p0, Lo/kA;->g:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->b()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->a()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "handleStopEvent"

    .line 338
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_0
    iget-object v0, p0, Lo/kA;->j:Lo/ko;

    sget-object v1, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->f:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-virtual {v0, v1}, Lo/ko;->c(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 484
    invoke-direct {p0}, Lo/kA;->n()V

    .line 485
    new-instance v0, Lo/kA$3;

    invoke-direct {v0, p0}, Lo/kA$3;-><init>(Lo/kA;)V

    iput-object v0, p0, Lo/kA;->h:Landroid/content/BroadcastReceiver;

    .line 501
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 502
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lo/kA;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/kA;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 0

    return-void
.end method

.method private n()V
    .locals 2

    .line 507
    iget-object v0, p0, Lo/kA;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lo/kA;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/kA;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lo/kA;->h:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private o()I
    .locals 1

    .line 480
    iget v0, p0, Lo/kA;->e:I

    return v0
.end method


# virtual methods
.method public a()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "destroy"

    .line 445
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lo/kA;->n()V

    .line 448
    invoke-direct {p0}, Lo/kA;->l()V

    .line 449
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "startMediaSession"

    .line 181
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lo/kA;->k:Z

    .line 184
    iget-object v1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 185
    iget-object v1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 187
    iget-boolean v0, p0, Lo/kA;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/kA;->a:Landroid/media/VolumeProvider;

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lo/kA;->g()V

    .line 189
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lo/kA;->a:Landroid/media/VolumeProvider;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    new-instance v1, Lo/kA$2;

    invoke-direct {v1, p0}, Lo/kA$2;-><init>(Lo/kA;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0, v0}, Lo/kA;->e(ZZ)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, v0}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    move-object v0, v1

    :goto_0
    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 162
    iget-object p1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 166
    iget p1, p0, Lo/kA;->o:I

    if-lez p1, :cond_2

    .line 167
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lo/kA$4;

    invoke-direct {v0, p0}, Lo/kA$4;-><init>(Lo/kA;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 173
    iput p1, p0, Lo/kA;->o:I

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "nf_media_session_controller"

    const-string v0, "could not update bitmap in mediaSession"

    .line 154
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "stopMediaSession"

    .line 355
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lo/kA;->k:Z

    const/4 v1, 0x1

    .line 358
    invoke-direct {p0, v1}, Lo/kA;->e(I)V

    .line 359
    iget-object v1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public d(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 405
    invoke-static {p1, v0, v1}, Lo/adW;->e(III)I

    move-result p1

    iput p1, p0, Lo/kA;->e:I

    .line 407
    invoke-direct {p0}, Lo/kA;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object p1, p0, Lo/kA;->a:Landroid/media/VolumeProvider;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 412
    iget v1, p0, Lo/kA;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "nf_media_session_controller"

    const-string v1, "setCurrentVolume:%d"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 413
    iget-object p1, p0, Lo/kA;->a:Landroid/media/VolumeProvider;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 414
    iget v0, p0, Lo/kA;->e:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 419
    iget-object p1, p0, Lo/kA;->b:Landroid/content/Context;

    iget-object p2, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {p2}, Lo/ko;->h()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lo/kA;->e:I

    invoke-static {p1, p2, v0}, Lo/kA;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 420
    iget-object p2, p0, Lo/kA;->j:Lo/ko;

    invoke-virtual {p2, p1}, Lo/ko;->a(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    .line 101
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object p1, p0, Lo/kA;->i:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object p1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iput-boolean p2, p0, Lo/kA;->g:Z

    .line 111
    iget-object p1, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    if-nez p1, :cond_2

    .line 112
    new-instance p1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p2, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    move-object p1, p2

    .line 114
    :goto_0
    iget-object p2, p0, Lo/kA;->i:Ljava/lang/String;

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 115
    const-class p2, Lo/Cm;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Cm;

    iget-boolean v0, p0, Lo/kA;->g:Z

    invoke-interface {p2, v0}, Lo/Cm;->c(Z)I

    move-result p2

    .line 116
    iget-object v0, p0, Lo/kA;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 117
    iget-object p2, p0, Lo/kA;->c:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 119
    invoke-direct {p0}, Lo/kA;->e()V

    return-void

    :cond_3
    :goto_1
    const-string p1, "nf_media_session_controller"

    const-string p2, "unable to update mediaSession metadata"

    .line 105
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(ZZ)V
    .locals 1

    .line 373
    iput-boolean p2, p0, Lo/kA;->g:Z

    .line 375
    iget-boolean p2, p0, Lo/kA;->g:Z

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 376
    iput v0, p0, Lo/kA;->o:I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 381
    :goto_0
    invoke-direct {p0, v0}, Lo/kA;->e(I)V

    return-void
.end method
