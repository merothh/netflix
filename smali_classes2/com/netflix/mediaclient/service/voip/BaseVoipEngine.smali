.class public abstract Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    }
.end annotation


# static fields
.field private static final C:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field protected a:Lo/cz;

.field protected b:Lo/Ac;

.field protected c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field protected d:Landroid/content/Context;

.field protected e:Lo/hF;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lo/zc;

.field protected h:Lo/yY;

.field protected i:Landroid/content/BroadcastReceiver;

.field protected j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

.field protected k:Lo/zb;

.field protected l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field protected m:J

.field protected n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

.field protected o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field protected p:Lo/yW;

.field protected q:Ljava/lang/Long;

.field protected r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected s:Ljava/util/UUID;

.field protected t:Landroid/media/AudioManager;

.field protected u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected w:Landroid/os/Handler;

.field protected x:Ljava/lang/Runnable;

.field protected y:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 467
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->C:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/hF;Lo/Ac;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->f:Ljava/util/List;

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 90
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->w:Landroid/os/Handler;

    .line 315
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$1;-><init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 476
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;-><init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->x:Ljava/lang/Runnable;

    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->e:Lo/hF;

    .line 162
    iput-object p3, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->b:Lo/Ac;

    .line 163
    iput-object p4, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 164
    iput-object p5, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a:Lo/cz;

    .line 165
    iput-object p6, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    .line 166
    new-instance p3, Lo/zb;

    check-cast p2, Lo/bV;

    invoke-direct {p3, p1, p2}, Lo/zb;-><init>(Landroid/content/Context;Lo/bV;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->k:Lo/zb;

    .line 167
    const-class p2, Lo/Co;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Co;

    invoke-interface {p2, p1}, Lo/Co;->e(Landroid/content/Context;)Lo/yY;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->h:Lo/yY;

    const-string p2, "audio"

    .line 168
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->t:Landroid/media/AudioManager;

    return-void
.end method

.method protected static a(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/cl/model/Error;
    .locals 1

    .line 521
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "sipCode"

    .line 522
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "reason"

    .line 524
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    :cond_0
    new-instance p1, Lcom/netflix/cl/model/Debug;

    invoke-direct {p1, p0}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 530
    :goto_0
    new-instance p0, Lcom/netflix/cl/model/Error;

    invoke-direct {p0, p2, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    return-object p0
.end method

.method private a(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;)Lorg/json/JSONObject;
    .locals 7

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->g:Lo/zc;

    const-string v1, "terminationReason"

    const/4 v2, 0x0

    const-string v3, "Failed to create call stats JSON!"

    const-string v4, "nf_voip"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 426
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lo/zc;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    .line 428
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v6, v5

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 431
    invoke-static {v4, p1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 435
    :cond_0
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz p1, :cond_1

    .line 437
    :try_start_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v6, v5

    :goto_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 440
    invoke-static {v4, p1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_3
    return-object v6
.end method

.method public static b(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDesinationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationPORT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.CALL_CANCEL"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static i()Landroid/content/IntentFilter;
    .locals 2

    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.netflix.mediaclient.intent.action.CALL_CANCEL"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.VOIP"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    return-object v0
.end method

.method protected static q()V
    .locals 1

    const/16 v0, 0xa

    .line 497
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v0, -0x13

    .line 498
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_voip"

    const-string v1, "--- DESTROY VOIP engine"

    .line 217
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 219
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->x:Ljava/lang/Runnable;

    .line 220
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->i:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    return-void
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;)V
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "nf_voip"

    const-string v0, "Listener is already added!"

    .line 204
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->m:J

    return-wide v0
.end method

.method public declared-synchronized b(Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;)Z
    .locals 1

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a:Lo/cz;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lo/bV;

    invoke-virtual {v0}, Lo/bV;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a:Lo/cz;

    invoke-interface {v0}, Lo/cz;->A()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method protected abstract e()Landroid/content/BroadcastReceiver;
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDesinationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationPORT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 4

    const-string v0, "nf_voip"

    const-string v1, "Registering VOIP receiver..."

    .line 273
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "Context is null, nothing to register."

    .line 275
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->e()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->i()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "Registered VOIP receiver"

    .line 279
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()V
    .locals 3

    .line 380
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->e:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->h:Lo/yY;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->b:Lo/Ac;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->w:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lo/yY;->d(Lo/Ac;Landroid/os/Handler;)V

    return-void
.end method

.method protected l()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->t:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const-string v1, "nf_voip"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "[AudioManager] already in MODE_IN_COMMUNICATION, skipping..."

    .line 327
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "[AudioManager] Mode: MODE_IN_COMMUNICATION"

    .line 330
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->t:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_1
    return-void
.end method

.method protected m()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_voip"

    const-string v1, "We had audio focus, release it."

    .line 360
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Failed to request audio focus release"

    .line 369
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public n()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d:Landroid/content/Context;

    const-string v1, "nf_voip"

    if-nez v0, :cond_0

    const-string v0, "Context is null, nothing to unregister."

    .line 299
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "Unregistering VOIP receiver..."

    .line 304
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->e()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "Unregistered VOIP receiver"

    .line 306
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister VOIP receiver  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected o()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v2, "nf_voip"

    if-eqz v0, :cond_0

    const-string v0, "Already asked for audip focus..."

    .line 339
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->d:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 345
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Failed to request audio focus"

    .line 350
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected p()V
    .locals 3

    .line 401
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v1, "cs.CallCommand"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 404
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    goto :goto_0

    .line 406
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 409
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;)Lorg/json/JSONObject;

    move-result-object v0

    .line 411
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->q:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v1

    .line 412
    instance-of v2, v1, Lcom/netflix/cl/model/event/session/action/cs/Call;

    if-eqz v2, :cond_1

    .line 413
    new-instance v2, Lcom/netflix/cl/model/event/session/cs/CallEnded;

    check-cast v1, Lcom/netflix/cl/model/event/session/action/cs/Call;

    invoke-direct {v2, v1, v0}, Lcom/netflix/cl/model/event/session/cs/CallEnded;-><init>(Lcom/netflix/cl/model/event/session/action/cs/Call;Lorg/json/JSONObject;)V

    .line 415
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 418
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-void
.end method

.method protected r()V
    .locals 5

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->o:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 389
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    goto :goto_0

    .line 391
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 394
    :goto_0
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v2, "cs.CallCommand"

    invoke-virtual {v1, v2}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    .line 395
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->q:Ljava/lang/Long;

    const/4 v3, 0x0

    const-string v4, "networkFailed"

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/cl/model/event/session/action/cs/Call;->createActionFailedEvent(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Lcom/netflix/cl/model/event/session/action/ActionFailed;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    return-void
.end method

.method public s()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->e:Lo/hF;

    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getUserToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->g:Lo/zc;

    invoke-interface {v0, v1, v2}, Lo/hF;->c(Ljava/lang/String;Lo/zc;)V

    :cond_0
    return-void
.end method
