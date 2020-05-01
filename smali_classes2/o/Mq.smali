.class public Lo/Mq;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lo/Mp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Mq$TaskDescription;,
        Lo/Mq$ActionBar;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/Mw;

.field private b:Lcom/netflix/mediaclient/media/Language;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private final k:Lo/Mq$TaskDescription;

.field private l:Lo/kC;

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;-><init>()V

    sput-object v0, Lo/Mq;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mq$TaskDescription;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    new-instance v0, Lo/Mw;

    invoke-direct {v0}, Lo/Mw;-><init>()V

    iput-object v0, p0, Lo/Mq;->a:Lo/Mw;

    const-string v0, "PLAY"

    .line 105
    iput-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const-string v0, "mdx_remote_player"

    const-string v1, "Remote player created"

    .line 154
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 164
    iput-object p1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 165
    iput-object p2, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    .line 166
    invoke-direct {p0}, Lo/Mq;->s()V

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "owner can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "activity can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)V
    .locals 2

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_SKIP"

    .line 307
    invoke-direct {p0, v0}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "time"

    .line 309
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    iget-object p1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    :cond_0
    const-string p1, "PLAY"

    .line 312
    iput-object p1, p0, Lo/Mq;->i:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 448
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lo/acE;->b(Lo/Am;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-interface {v0}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private r()V
    .locals 3

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lo/Mq;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lo/Mq;->o:Z

    .line 202
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "mdx_remote_player"

    const-string v2, "Failed to unregister "

    .line 206
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_AUDIOSUB"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGCANCEL"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGSHOW"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADATA_AVAILABLE"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADA"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NETWORK_CONNECTIVITY_CHANGE"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_SHOW"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_CANCEL"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_COMPLETED"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 190
    :try_start_0
    iget-object v1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lo/Mq;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "mdx_remote_player"

    const-string v2, "Failed to register "

    .line 194
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private t()V
    .locals 2

    const-string v0, "mdx_remote_player"

    const-string v1, "Resetting language data..."

    .line 692
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 693
    iput-boolean v0, p0, Lo/Mq;->e:Z

    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Lo/Mq;->b:Lcom/netflix/mediaclient/media/Language;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 593
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0}, Lo/Mq$TaskDescription;->a()V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 359
    iget v0, p0, Lo/Mq;->j:I

    const-string v1, "mdx_remote_player"

    if-gtz v0, :cond_0

    if-gtz p1, :cond_0

    const-string p1, "Volume is already less than 0 and it can not be turned down more. Do nothing."

    .line 360
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_0
    iget v0, p0, Lo/Mq;->j:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    if-lt p1, v2, :cond_1

    const-string p1, "Volume is already more than 100 and it can not be turned up more. Do nothing."

    .line 365
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-le p1, v2, :cond_2

    const/16 p1, 0x64

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 378
    :cond_3
    iput p1, p0, Lo/Mq;->j:I

    const-string p1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETVOLUME"

    .line 384
    invoke-direct {p0, p1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 386
    iget v0, p0, Lo/Mq;->j:I

    const-string v1, "volume"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public a(Lo/kC;)V
    .locals 1

    .line 523
    iput-object p1, p0, Lo/Mq;->l:Lo/kC;

    .line 524
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->a(Lo/kC;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "mdx_remote_player"

    const-string v1, "stop sending..."

    .line 264
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    invoke-direct {p0, v2}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    const-string v1, "stop sent"

    .line 266
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "STOP"

    .line 267
    iput-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 683
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0}, Lo/Mq$TaskDescription;->e()V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 581
    invoke-direct {p0}, Lo/Mq;->t()V

    .line 582
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1, p2, p3}, Lo/Mq$TaskDescription;->d(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)V
    .locals 2

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_SKIP_INTRO"

    .line 287
    invoke-direct {p0, v0}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "segmentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "invocSource"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object p1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    .line 535
    iput-object p1, p0, Lo/Mq;->b:Lcom/netflix/mediaclient/media/Language;

    .line 536
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->c(Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_DIALOGRESP"

    if-eq p1, v0, :cond_0

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_REMOTE_LOGIN_CONSENT"

    if-ne p1, v0, :cond_1

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "data"

    .line 346
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object p2, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 494
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0}, Lo/Mq$TaskDescription;->d()V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    const-string v0, "mdx_remote_player"

    if-nez p1, :cond_0

    const-string p1, "Language is null!"

    .line 226
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Language selected audio is null!"

    .line 231
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Language selected subtitle is null!"

    .line 236
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_2
    invoke-direct {p0}, Lo/Mq;->t()V

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETAUDIOSUB"

    .line 242
    invoke-direct {p0, v0}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioTrackId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "subtitleTrackId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object p1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public c(Lo/Mm;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->a(Lo/Mm;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 688
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 214
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETCAPABILITY"

    invoke-direct {p0, v1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    .line 215
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETSTATE"

    invoke-direct {p0, v1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 570
    iput p1, p0, Lo/Mq;->h:I

    .line 571
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->e(I)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 561
    iput-boolean p1, p0, Lo/Mq;->f:Z

    .line 562
    iget-object v0, p0, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v0, p1}, Lo/Mq$TaskDescription;->a(Z)V

    return-void
.end method

.method public e(I)V
    .locals 2

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_SEEK"

    .line 325
    invoke-direct {p0, v0}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "time"

    .line 327
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    iget-object p1, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    :cond_0
    const-string p1, "PLAY"

    .line 330
    iput-object p1, p0, Lo/Mq;->i:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v12, p0

    move-object/from16 v0, p1

    const-string v1, "END_PLAYBACK"

    .line 602
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "mdx_remote_player"

    if-eqz v2, :cond_0

    const-string v2, "DESTROY: end of playback"

    .line 603
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lo/Mq;->t()V

    .line 605
    iget-object v2, v12, Lo/Mq;->k:Lo/Mq$TaskDescription;

    invoke-interface {v2}, Lo/Mq$TaskDescription;->c()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "PLAYING"

    .line 607
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 609
    invoke-virtual {p0}, Lo/Mq;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "PLAYING: Do nothing, user just did trickplay"

    .line 610
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 612
    :cond_1
    iget-boolean v2, v12, Lo/Mq;->e:Z

    if-nez v2, :cond_2

    .line 613
    invoke-virtual {p0}, Lo/Mq;->p()V

    goto/16 :goto_0

    :cond_2
    const-string v2, "Video is playing"

    .line 615
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v2, "PAUSE"

    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 620
    invoke-virtual {p0}, Lo/Mq;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "PAUSE: Do nothing, user just did trickplay"

    .line 621
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v2, "Paused..."

    .line 624
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v2, "prepause"

    .line 627
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "PREPAUSE: Start listening to play/pause from target again"

    .line 629
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iput-boolean v3, v12, Lo/Mq;->n:Z

    return-void

    :cond_6
    const-string v2, "preplay"

    .line 633
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "PREPLAY: Start listening to play/pause from target again"

    .line 635
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput-boolean v3, v12, Lo/Mq;->n:Z

    goto :goto_0

    :cond_7
    const-string v2, "preseek"

    .line 638
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "PRESEEK: Start listening to video position updates from target again"

    .line 640
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput-boolean v3, v12, Lo/Mq;->m:Z

    return-void

    :cond_8
    const-string v2, "PLAY"

    .line 644
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Play, do nothing..."

    .line 645
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    const-string v2, "PROGRESS"

    .line 647
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Progress..."

    .line 648
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const-string v2, "STALLED"

    .line 650
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Stalled..."

    .line 651
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    iput-object v0, v12, Lo/Mq;->i:Ljava/lang/String;

    move/from16 v4, p2

    .line 661
    iput v4, v12, Lo/Mq;->g:I

    move/from16 v6, p3

    .line 662
    iput v6, v12, Lo/Mq;->j:I

    .line 664
    sget-object v2, Lo/Mq;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v13, v12, Lo/Mq;->k:Lo/Mq$TaskDescription;

    new-instance v14, Lo/Mq$ActionBar;

    .line 667
    invoke-virtual {p0}, Lo/Mq;->o()Z

    move-result v2

    invoke-virtual {p0}, Lo/Mq;->n()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lo/Mq;->o()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    const/4 v3, 0x1

    :cond_b
    iget v5, v12, Lo/Mq;->h:I

    sget-object v1, Lo/Mq;->c:Ljava/util/Set;

    .line 668
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Lo/Mq$ActionBar;-><init>(Lo/Mq;ZZIIIZLjava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;)V

    .line 666
    invoke-interface {v13, v14}, Lo/Mq$TaskDescription;->a(Lo/Mq$ActionBar;)V

    :cond_c
    return-void
.end method

.method public e()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lo/Mq;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/Mq;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()V
    .locals 2

    .line 281
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PAUSE"

    invoke-direct {p0, v1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    const-string v0, "PAUSE"

    .line 282
    iput-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lo/Mq;->n:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/16 v0, -0x1e

    .line 294
    invoke-direct {p0, v0}, Lo/Mq;->b(I)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 410
    iget v0, p0, Lo/Mq;->g:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 275
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_RESUME"

    invoke-direct {p0, v1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    const-string v0, "PLAYING"

    .line 276
    iput-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lo/Mq;->n:Z

    return-void
.end method

.method public j()I
    .locals 1

    .line 406
    iget v0, p0, Lo/Mq;->j:I

    return v0
.end method

.method public k()Lo/kC;
    .locals 1

    .line 503
    iget-object v0, p0, Lo/Mq;->l:Lo/kC;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 427
    iget-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const-string v1, "PLAYING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const-string v1, "preplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m()V
    .locals 0

    .line 423
    invoke-direct {p0}, Lo/Mq;->r()V

    return-void
.end method

.method public n()Z
    .locals 2

    .line 431
    iget-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const-string v1, "PLAYING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const-string v1, "PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Mq;->i:Ljava/lang/String;

    const-string v1, "prepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 467
    invoke-static {}, Lo/aeB;->a()Z

    .line 472
    iget-object p1, p0, Lo/Mq;->a:Lo/Mw;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Mw;->c(Ljava/lang/String;)Lo/Mv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 474
    invoke-interface {p1, p0, p2}, Lo/Mv;->e(Lo/Mp;Landroid/content/Intent;)V

    goto :goto_0

    .line 476
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event not supported "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mdx_remote_player"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "mdx_remote_player"

    const-string v1, "Sending request for subtitle/audio data..."

    .line 672
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lo/Mq;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETAUDIOSUB"

    invoke-direct {p0, v1}, Lo/Mq;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 674
    iput-boolean v0, p0, Lo/Mq;->e:Z

    return-void
.end method

.method public q()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    .line 515
    iget-object v0, p0, Lo/Mq;->b:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method
