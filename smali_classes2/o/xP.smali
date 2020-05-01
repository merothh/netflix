.class public Lo/xP;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/xR;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xP$Application;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/BroadcastReceiver;

.field private b:Lo/iu;

.field private final c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private d:Lo/xN;

.field private final e:Lo/xP$Application;

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Landroid/content/BroadcastReceiver;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lo/iu;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 53
    new-instance v0, Lo/xP$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/xP$Application;-><init>(Lo/xP;Lo/xP$1;)V

    iput-object v0, p0, Lo/xP;->e:Lo/xP$Application;

    .line 92
    new-instance v0, Lo/xP$1;

    invoke-direct {v0, p0}, Lo/xP$1;-><init>(Lo/xP;)V

    iput-object v0, p0, Lo/xP;->h:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lo/xP$2;

    invoke-direct {v0, p0}, Lo/xP$2;-><init>(Lo/xP;)V

    iput-object v0, p0, Lo/xP;->g:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lo/xP$3;

    invoke-direct {v0, p0}, Lo/xP$3;-><init>(Lo/xP;)V

    iput-object v0, p0, Lo/xP;->a:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lo/xP$4;

    invoke-direct {v0, p0}, Lo/xP$4;-><init>(Lo/xP;)V

    iput-object v0, p0, Lo/xP;->i:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lo/xP;->b:Lo/iu;

    .line 59
    iput-object p2, p0, Lo/xP;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method

.method static synthetic a(Lo/xP;)Lo/xP$Application;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/xP;->e:Lo/xP$Application;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/xP;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterMinusoneDebugReeiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_preappagent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 283
    invoke-static {p0}, Lo/ia;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lo/xP;)Lo/iu;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/xP;->b:Lo/iu;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/xP;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDataUpdateReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_preappagent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lo/xP;->d:Lo/xN;

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {p1, v0}, Lo/xN;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method static synthetic c(Lo/xP;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lo/xP;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lo/xP;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic d(Lo/xP;)Lo/Ac;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lo/xP;->getServiceNotificationHelper()Lo/Ac;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lo/xP;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/xP;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail removing informPrefetchRunnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_preappagent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2

    const-string v0, "nf_preappagent"

    const-string v1, "building preApp foreground notification"

    .line 326
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-class v0, Lo/Cl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cl;

    invoke-interface {v0, p0}, Lo/Cl;->e(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lo/xP;)Lo/xN;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/xP;->d:Lo/xN;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.netflix.mediaclient.intent.action.DEBUG_MINUSONE_CLEAR_TEMPLATE"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.DEBUG_MINUSONE_FORCE_TEMPLATE"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/xP;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic e(Lo/xP;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/xP;->b(Landroid/content/Context;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 241
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/xP;->a:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 345
    const-class v0, Lo/Cl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cl;

    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Cl;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_preappagent"

    const-string v1, "registering app widget maintenance action"

    .line 346
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lo/xP;->b:Lo/iu;

    iget-object v1, p0, Lo/xP;->e:Lo/xP$Application;

    invoke-interface {v0, v1}, Lo/iu;->a(Lo/iw;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/xP;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterUserAgentIntentReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_preappagent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 341
    iget-object v0, p0, Lo/xP;->b:Lo/iu;

    iget-object v1, p0, Lo/xP;->e:Lo/xP$Application;

    invoke-interface {v0, v1}, Lo/iu;->b(Lo/iw;)V

    return-void
.end method


# virtual methods
.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "preapp"

    return-object v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "nf_preappagent"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Intent is null"

    .line 288
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 297
    const-class v2, Lo/hW;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/hW;

    if-nez v2, :cond_1

    const-string p1, "browseAgent null?"

    .line 299
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 303
    :cond_1
    new-instance v3, Lo/xP$6;

    invoke-direct {v3, p0}, Lo/xP$6;-><init>(Lo/xP;)V

    const-string v4, "com.netflix.mediaclient.intent.action.REFRESH_DATA"

    .line 311
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lo/xP;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/xP;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/xN;->e(Landroid/content/Context;)I

    move-result p1

    invoke-interface {v2, p1, v1, v3}, Lo/hW;->d(IZLo/ci;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const-string p1, "Unknown command!"

    .line 318
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    const-string p1, "nf_preappagent"

    const-string v0, "removing preApp foreground notification"

    .line 331
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lo/xP;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lo/xP$10;

    invoke-direct {v0, p0}, Lo/xP$10;-><init>(Lo/xP;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lo/xP;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/xP;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual {p0}, Lo/xP;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/xP;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    new-instance p1, Lo/xP$5;

    invoke-direct {p1, p0}, Lo/xP$5;-><init>(Lo/xP;)V

    .line 269
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/xN;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lo/hW;->d(IZLo/ci;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lo/xP;->d()V

    .line 81
    invoke-direct {p0}, Lo/xP;->b()V

    .line 82
    invoke-direct {p0}, Lo/xP;->h()V

    .line 83
    invoke-direct {p0}, Lo/xP;->j()V

    .line 84
    invoke-direct {p0}, Lo/xP;->a()V

    .line 86
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 2

    .line 69
    new-instance v0, Lo/xN;

    invoke-virtual {p0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lo/xN;-><init>(Landroid/content/Context;Lo/bV;)V

    iput-object v0, p0, Lo/xP;->d:Lo/xN;

    .line 70
    invoke-direct {p0}, Lo/xP;->c()V

    .line 71
    invoke-direct {p0}, Lo/xP;->f()V

    .line 72
    invoke-direct {p0}, Lo/xP;->g()V

    .line 73
    invoke-direct {p0}, Lo/xP;->e()V

    .line 75
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/xP;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
