.class public Lo/jZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jZ$ActionBar;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field private static final j:Ljava/lang/String;


# instance fields
.field f:Lo/iS;

.field i:Lo/zS;

.field private k:Ljava/lang/Object;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/jY;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lo/nS;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lo/jZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/jZ;->j:Ljava/lang/String;

    const-string v0, "com.netflix.mediaclient.intent.category.PDSLOG_DOWNLOAD"

    .line 38
    sput-object v0, Lo/jZ;->b:Ljava/lang/String;

    const-string v0, "com.netflix.mediaclient.intent.action.LICENSE_ERROR"

    .line 39
    sput-object v0, Lo/jZ;->a:Ljava/lang/String;

    const-string v0, "com.netflix.mediaclient.intent.action.MANIFEST_EXPIRED"

    .line 40
    sput-object v0, Lo/jZ;->d:Ljava/lang/String;

    const-string v0, "com.netflix.mediaclient.intent.action.DOWNLOAD_ERROR"

    .line 41
    sput-object v0, Lo/jZ;->c:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 42
    sput-object v0, Lo/jZ;->e:Ljava/lang/String;

    const-string v0, "errorMessage"

    .line 43
    sput-object v0, Lo/jZ;->g:Ljava/lang/String;

    const-string v0, "playableId"

    .line 44
    sput-object v0, Lo/jZ;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/jZ;->k:Ljava/lang/Object;

    .line 343
    new-instance v0, Lo/jZ$5;

    invoke-direct {v0, p0}, Lo/jZ$5;-><init>(Lo/jZ;)V

    iput-object v0, p0, Lo/jZ;->r:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/jZ;->l:Ljava/util/Map;

    .line 61
    iput-object p3, p0, Lo/jZ;->m:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 62
    iput-object p2, p0, Lo/jZ;->p:Lo/nS;

    .line 63
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p2

    iput-object p2, p0, Lo/jZ;->i:Lo/zS;

    .line 64
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->b()Lo/iS;

    move-result-object p2

    iput-object p2, p0, Lo/jZ;->f:Lo/iS;

    .line 65
    invoke-direct {p0, p1}, Lo/jZ;->a(Landroid/content/Context;)V

    .line 66
    sget-object p1, Lo/jZ;->j:Ljava/lang/String;

    const-string p2, "inited download session manager"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lo/Bi;)Lo/jY;
    .locals 7

    .line 255
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/jZ;->d(Ljava/lang/String;)Lo/jY;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 260
    :cond_0
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lo/Bi;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lo/Bi;->k()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {p1}, Lo/jX;->d(Lo/Bi;)Lo/jX;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 260
    invoke-direct/range {v1 .. v6}, Lo/jZ;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)Lo/jY;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 376
    sget-object v0, Lo/jZ;->j:Ljava/lang/String;

    const-string v1, "Register receiver"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 378
    sget-object v1, Lo/jZ;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/jZ;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/jZ;->a:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 383
    iget-object v1, p0, Lo/jZ;->r:Landroid/content/BroadcastReceiver;

    sget-object v2, Lo/jZ;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 271
    iget-object v0, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jY;

    .line 272
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/jY;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/jZ;Lo/jY;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lo/jZ;->e(Lo/jY;I)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lo/jZ;->j:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)Lo/jY;
    .locals 8

    .line 303
    new-instance v7, Lo/jY;

    iget-object v4, p0, Lo/jZ;->o:Ljava/lang/String;

    iget-object v5, p0, Lo/jZ;->n:Ljava/lang/String;

    iget-object v6, p0, Lo/jZ;->f:Lo/iS;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lo/jY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/iS;)V

    .line 304
    invoke-virtual {v7, p4}, Lo/jY;->e(Lo/jX;)Lo/jY;

    move-result-object p2

    .line 305
    invoke-virtual {p2, p5}, Lo/jY;->d(Lo/sA;)Lo/jY;

    move-result-object p2

    .line 306
    invoke-direct {p0, p1, p2}, Lo/jZ;->d(Ljava/lang/String;Lo/jY;)V

    return-object p2
.end method

.method static synthetic b(Lo/jZ;Lo/jY;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/jZ;->e(Lo/jY;)V

    return-void
.end method

.method static synthetic c(Lo/jZ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)Lo/jY;
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lo/jZ;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)Lo/jY;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 265
    iget-object v0, p0, Lo/jZ;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lo/jZ;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lo/jZ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 207
    invoke-direct {p0, p1}, Lo/jZ;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lo/jY;Lo/jZ$ActionBar;)V
    .locals 2

    const/4 v0, 0x1

    .line 311
    invoke-virtual {p1, v0}, Lo/jY;->c(Z)V

    .line 312
    iget-object v0, p0, Lo/jZ;->p:Lo/nS;

    invoke-virtual {p1}, Lo/jY;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lo/jZ$3;

    invoke-direct {v1, p0, p2}, Lo/jZ$3;-><init>(Lo/jZ;Lo/jZ$ActionBar;)V

    invoke-interface {v0, p1, v1}, Lo/nS;->c(Ljava/lang/String;Lo/nS$ActionBar;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Lo/jY;
    .locals 1

    .line 242
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_0
    iget-object v0, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jY;

    return-object p1
.end method

.method static synthetic d(Lo/jZ;Ljava/lang/String;)Lo/jY;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/jZ;->d(Ljava/lang/String;)Lo/jY;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;Lo/jY;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lo/jZ;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lo/jZ;->r:Landroid/content/BroadcastReceiver;

    invoke-static {p1, v0}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method

.method private e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lo/jZ;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jY;

    if-eqz p1, :cond_0

    .line 279
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lo/jY;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e(Lo/jY;)V
    .locals 0

    .line 147
    invoke-virtual {p1}, Lo/jY;->d()V

    .line 148
    invoke-virtual {p1}, Lo/jY;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/jZ;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lo/jY;I)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Lo/jY;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0}, Lo/jY;->d(Z)V

    .line 118
    invoke-virtual {p1}, Lo/jY;->c()V

    .line 122
    :cond_0
    invoke-virtual {p1, p2}, Lo/jY;->c(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-direct {p0, v0, p2}, Lo/jZ;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lo/jZ;->a(Lo/Bi;)Lo/jY;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lo/jY;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lo/jZ$4;

    invoke-direct {v0, p0, p2}, Lo/jZ$4;-><init>(Lo/jZ;I)V

    invoke-direct {p0, p1, v0}, Lo/jZ;->c(Lo/jY;Lo/jZ$ActionBar;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/jZ;->e(Lo/jY;I)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/jZ;->m:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/jZ;->o:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lo/jZ;->m:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/jZ;->n:Ljava/lang/String;

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/jZ;->e(Landroid/content/Context;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lo/jZ;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 213
    invoke-direct {p0}, Lo/jZ;->c()V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2}, Lo/jZ;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Lo/jZ;->c(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lo/jZ;->j:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "setOfflineManifest playableId: %s, oxid: %s, dxid: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    invoke-direct/range {p0 .. p5}, Lo/jZ;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)Lo/jY;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lo/jY;->e()V

    return-void
.end method

.method public d(Lo/Bi;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 2

    .line 153
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/jZ;->d(Ljava/lang/String;)Lo/jY;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    sget-object v0, Lo/jZ$1;->d:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 188
    sget-object p1, Lo/jZ;->j:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, " onDownloadStopped stopReason: %s, no-op"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual {p1, v1}, Lo/jY;->d(Z)V

    .line 172
    invoke-virtual {p1}, Lo/jY;->b()V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Lo/jZ;->a(Lo/Bi;)Lo/jY;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lo/jY;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lo/jZ$2;

    invoke-direct {v0, p0}, Lo/jZ$2;-><init>(Lo/jZ;)V

    invoke-direct {p0, p1, v0}, Lo/jZ;->c(Lo/jY;Lo/jZ$ActionBar;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lo/jZ;->e(Lo/jY;)V

    :goto_0
    return-void
.end method
