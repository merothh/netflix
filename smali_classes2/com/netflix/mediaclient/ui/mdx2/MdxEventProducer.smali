.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private c:Ljava/lang/String;

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Build$BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lo/Build$BroadcastReceiver;",
            ">;",
            "Lo/Build$BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Md\u2026ateEvent.MdxAgentEvent>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d:Lio/reactivex/subjects/PublishSubject;

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e:Ljava/util/Map;

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)V

    .line 376
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.category.MDX"

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_READY"

    .line 378
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKEND"

    .line 379
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    .line 380
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_AUDIOSUB"

    .line 381
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    .line 382
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGCANCEL"

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGSHOW"

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADATA_AVAILABLE"

    .line 386
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADA"

    .line 387
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    .line 388
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NETWORK_CONNECTIVITY_CHANGE"

    .line 390
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    .line 391
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PIN_VERIFICATION_INCORRECT_PIN"

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_SHOW"

    .line 393
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_CANCEL"

    .line 394
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    check-cast v0, Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_HIDE"

    invoke-virtual {p1, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_END"

    .line 398
    invoke-virtual {p1, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT"

    .line 399
    invoke-virtual {p1, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 401
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 510
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 401
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    sget-object p1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 468
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a:I

    return-void
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a:I

    return p0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final c(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;->a(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private final d(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6

    .line 484
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 486
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "MDX_ACTION_UPDATE_"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-static {p1, v1, v5, v4, v5}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v1, "MDX_ACTION_PLAYER_"

    .line 488
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, v4, v5}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-static {p1, v1, v5, v4, v5}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    new-instance v0, Lo/Build$PendingIntent;

    invoke-direct {v0, p1}, Lo/Build$PendingIntent;-><init>(Ljava/lang/String;)V

    .line 461
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 507
    const-class p1, Lo/MO;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MO;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " _ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/Build$PendingIntent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/MO;->c(Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 464
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final e()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Build$BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d:Lio/reactivex/subjects/PublishSubject;

    .line 103
    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;-><init>(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)V

    check-cast v1, Lio/reactivex/functions/BiPredicate;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->distinctUntilChanged(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "mdxAgentEventsPub\n      \u2026     equals\n            }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lo/Build$ActionBar;

    invoke-direct {v0, p1}, Lo/Build$ActionBar;-><init>(Ljava/lang/String;)V

    .line 418
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 496
    const-class v1, Lo/MO;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MO;

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/Build$ActionBar;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/MO;->c(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 421
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeId"

    .line 426
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, -0xc8

    const/4 v3, 0x0

    const-string v4, "time"

    const/4 v5, 0x0

    const-string v6, "trackId"

    if-eqz v1, :cond_1

    .line 427
    new-instance v1, Lo/Build$FragmentManager;

    .line 429
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "intent.getStringExtra(IMdx.MDX_EXTRA_EPISODE_ID)"

    invoke-static {v0, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 431
    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 427
    :cond_0
    invoke-direct {v1, p1, v0, v5, v3}, Lo/Build$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    move-object v5, v1

    check-cast v5, Lo/Build$SharedPreferences;

    goto/16 :goto_1

    :cond_1
    const-string v0, "catalogId"

    .line 437
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    new-instance v1, Lo/Build$ComponentCallbacks2;

    .line 440
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "intent.getStringExtra(IMdx.MDX_EXTRA_CATALOG_ID)"

    invoke-static {v0, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 442
    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 438
    :cond_2
    invoke-direct {v1, p1, v0, v5, v3}, Lo/Build$ComponentCallbacks2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    move-object v5, v1

    check-cast v5, Lo/Build$SharedPreferences;

    goto/16 :goto_1

    .line 449
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown MDX playback intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 500
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    .line 501
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p2, " no extra"

    .line 503
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "builder.toString()"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 450
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_1
    if-eqz v5, :cond_6

    .line 454
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 506
    const-class p1, Lo/MO;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MO;

    .line 454
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x23

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " _ : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lo/Build$SharedPreferences;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/MO;->c(Ljava/lang/String;)V

    .line 455
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v5}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 408
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
