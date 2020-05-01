.class public final Lo/jj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lo/cz;

.field private c:Lo/ji;

.field private d:Landroid/content/Context;

.field private e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private f:Lo/jm;

.field private final g:Landroid/content/BroadcastReceiver;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Boolean;

.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/cz;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lo/jj$2;

    invoke-direct {v0, p0}, Lo/jj$2;-><init>(Lo/jj;)V

    iput-object v0, p0, Lo/jj;->g:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lo/jj;->d:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lo/jj;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 73
    new-instance p1, Lo/jm;

    invoke-direct {p1, p3}, Lo/jm;-><init>(Lo/cz;)V

    iput-object p1, p0, Lo/jj;->f:Lo/jm;

    .line 74
    iput-object p3, p0, Lo/jj;->b:Lo/cz;

    .line 75
    invoke-direct {p0}, Lo/jj;->d()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->a:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/jj;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/jj;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/jj;->a()V

    return-void
.end method

.method static synthetic b(Lo/jj;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lo/jj;->j:J

    return-wide p1
.end method

.method static synthetic b(Lo/jj;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/jj;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lo/jj;Lo/ji;)Lo/ji;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/jj;->c:Lo/ji;

    return-object p1
.end method

.method static synthetic c(Lo/jj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/jj;->h:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lo/jj;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/jj;->b:Lo/cz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lo/jj;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lo/ds;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    new-instance v1, Lo/jn;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, p1, v2, p3, v0}, Lo/jn;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p3, Lo/jj$4;

    invoke-direct {p3, p0, p1, p2}, Lo/jj$4;-><init>(Lo/jj;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    invoke-virtual {v1}, Lo/jn;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lo/jj;->c(Ljava/lang/String;Lo/jh;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lo/jh;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_adv_id"

    const-string v2, "send Advertising ID event send starts: %s"

    .line 215
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    iget-object v0, p0, Lo/jj;->f:Lo/jm;

    invoke-virtual {v0, p1, p2}, Lo/jm;->d(Ljava/lang/String;Lo/jh;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    .line 217
    iget-object p2, p0, Lo/jj;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    const-string p1, "send Advertising ID event send done."

    .line 218
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic d(Lo/jj;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/jj;->d:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    .line 84
    new-instance v1, Lo/jj$3;

    invoke-direct {v1, p0}, Lo/jj$3;-><init>(Lo/jj;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lo/jj;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/jj;->i:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic e(Lo/jj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/jj;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lo/jj;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/jj;->h()V

    return-void
.end method

.method private e()Z
    .locals 7

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    iget-wide v2, p0, Lo/jj;->j:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 4

    .line 278
    :try_start_0
    iget-object v0, p0, Lo/jj;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/jj;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_adv_id"

    const-string v3, "Failed to unregister "

    .line 281
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private h()V
    .locals 0

    return-void
.end method

.method private j()V
    .locals 4

    const-string v0, "nf_adv_id"

    const-string v1, "Register receiver"

    .line 259
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    .line 261
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.action.ONSIGNUP"

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.category.PUSH"

    .line 263
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.category.LOGGING"

    .line 264
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v2, 0x3e7

    .line 265
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 268
    :try_start_0
    iget-object v2, p0, Lo/jj;->d:Landroid/content/Context;

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    iget-object v3, p0, Lo/jj;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to register "

    .line 271
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "nf_adv_id"

    const-string v1, "Destroy and unregister receiver"

    .line 286
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0}, Lo/jj;->f()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lo/jj;->j()V

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lo/jj;->c:Lo/ji;

    if-nez v0, :cond_0

    const-string v0, "nf_adv_id"

    const-string v1, "User is logged in, but ADV ID provider is not readu, postpone sending ID"

    .line 125
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lo/jj;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 130
    :try_start_1
    iput-object v0, p0, Lo/jj;->h:Ljava/lang/String;

    const-string v0, "nf_adv_id"

    const-string v1, "Ad ID provider is ready and request to send AD ID exist, execute."

    .line 131
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lo/jj;->c:Lo/ji;

    invoke-interface {v0}, Lo/ji;->d()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lo/jj;->c:Lo/ji;

    invoke-interface {v1}, Lo/ji;->e()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v4, "nf_adv_id"

    const-string v5, "Ad ID provider exist, if we need to send ID %s, opted in %b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v0, :cond_2

    const-string p1, "nf_adv_id"

    const-string v0, "Ad id can not be null!"

    .line 139
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 143
    :cond_2
    :try_start_2
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->d:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "nf_adv_id"

    const-string v3, "Not check in, execute"

    .line 144
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lo/jj;->c(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string v2, "nf_adv_id"

    const-string v3, "Check in, validate"

    .line 148
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lo/jj;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lo/jj;->a:Ljava/lang/String;

    iget-object v3, p0, Lo/jj;->c:Lo/ji;

    invoke-interface {v3}, Lo/ji;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 155
    :cond_4
    iget-object v2, p0, Lo/jj;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lo/jj;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "nf_adv_id"

    const-string v3, "Adverising ID is not changed, check when it was last time sent."

    .line 159
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lo/jj;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "nf_adv_id"

    const-string v0, "Ad id and opt in status already sent in last 24 hours, do not send again"

    .line 161
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    const-string v2, "nf_adv_id"

    const-string v3, "Ad id and opt in status were NOT sent in last 24 hours, execute"

    .line 164
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lo/jj;->c(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_1
    const-string v2, "nf_adv_id"

    const-string v3, "opt in status changed, execute"

    .line 156
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lo/jj;->c(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v2, "nf_adv_id"

    const-string v3, "Ad ID changed, execute"

    .line 153
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lo/jj;->c(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
