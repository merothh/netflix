.class public Lo/lg;
.super Lo/lc;
.source ""

# interfaces
.implements Lo/kK;
.implements Lo/kL;
.implements Lcom/google/android/gms/cast/framework/CastStateListener;


# instance fields
.field private final f:Landroid/os/Handler;

.field private final h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/cast/framework/CastContext;

.field private final j:Landroid/os/Handler;

.field private l:Lo/kN;

.field private n:Z

.field private o:Lo/kJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zE;Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p3, p2}, Lo/lc;-><init>(Landroid/content/Context;Lo/kI;Lo/zE;)V

    const-string p1, "MdxStackCaf"

    const-string p2, "Initializing MdxStackCaf..."

    .line 68
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p3}, Lo/kI;->a()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/lg;->j:Landroid/os/Handler;

    .line 70
    invoke-virtual {p3}, Lo/kI;->b()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lo/lg;->f:Landroid/os/Handler;

    .line 71
    invoke-virtual {p3}, Lo/kI;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/lg;->h:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lo/lg;->f:Landroid/os/Handler;

    new-instance p2, Lo/lg$4;

    invoke-direct {p2, p0, p4}, Lo/lg$4;-><init>(Lo/lg;Lio/reactivex/subjects/CompletableSubject;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lo/lg;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/lg;->h:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;I)V
    .locals 20

    move-object/from16 v0, p0

    .line 502
    invoke-virtual/range {p0 .. p0}, Lo/lg;->k()Lo/mo;

    move-result-object v1

    .line 504
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    :goto_0
    move-object v5, v2

    .line 505
    new-instance v15, Lo/ku;

    sget-object v8, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;ILcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    if-eqz v1, :cond_3

    .line 507
    instance-of v2, v1, Lo/mp;

    if-eqz v2, :cond_3

    .line 508
    move-object v2, v1

    check-cast v2, Lo/mp;

    invoke-virtual {v2, v15}, Lo/mp;->b(Lo/ku;)V

    .line 512
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->y:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_1

    const/16 v2, 0x7d5

    move/from16 v3, p3

    if-ne v3, v2, :cond_1

    return-void

    .line 516
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    iget-object v2, v0, Lo/lg;->b:Lo/kO;

    invoke-virtual {v2}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 518
    invoke-virtual {v1}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 519
    invoke-virtual {v1}, Lo/mo;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lo/mo;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lo/mo;->g()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 517
    invoke-virtual/range {v6 .. v19}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;ZZZ)V

    goto :goto_1

    .line 523
    :cond_2
    iget-object v2, v0, Lo/lg;->b:Lo/kO;

    invoke-virtual {v2}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 524
    invoke-virtual {v1}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 525
    invoke-virtual {v1}, Lo/mo;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lo/mo;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lo/mo;->g()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    .line 523
    invoke-virtual/range {v6 .. v16}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "MdxStackCaf"

    const-string v2, "handleSessionFailure - can\'t notify target launch failed because target not found"

    .line 530
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic a(Lo/lg;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lo/lg;->n:Z

    return p1
.end method

.method static synthetic b(Lo/lg;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/lg;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lo/lg;Lo/kJ;)Lo/kJ;
    .locals 0

    .line 49
    iput-object p1, p0, Lo/lg;->o:Lo/kJ;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    .line 222
    invoke-virtual {p0, p1}, Lo/lg;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lo/lg;->c:Lo/kI;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/lg;->c:Lo/kI;

    invoke-virtual {v1}, Lo/kI;->u()Lo/kF;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/kF;->a(Lo/mo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 225
    instance-of v4, v0, Lo/mp;

    if-eqz v4, :cond_2

    .line 226
    check-cast v0, Lo/mp;

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v0}, Lo/mp;->j()V

    goto :goto_1

    .line 232
    :cond_1
    new-instance v10, Lo/ku;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to launch target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/mp;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v8, 0x0

    sget-object v9, Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSuffix;)V

    .line 236
    invoke-virtual {v0, v10}, Lo/mp;->b(Lo/ku;)V

    .line 237
    invoke-virtual {p0}, Lo/lg;->q()V

    :cond_2
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    if-eqz v1, :cond_3

    const-string p1, "success"

    goto :goto_2

    :cond_3
    const-string p1, "failed"

    :goto_2
    aput-object p1, v0, v2

    const-string p1, "MdxStackCaf"

    const-string v1, "launch %s %s"

    .line 241
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic c(Lo/lg;Lo/kN;)Lo/kN;
    .locals 0

    .line 49
    iput-object p1, p0, Lo/lg;->l:Lo/kN;

    return-object p1
.end method

.method static synthetic c(Lo/lg;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lo/lg;->n:Z

    return p0
.end method

.method static synthetic d(Lo/lg;)Lo/kN;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/lg;->l:Lo/kN;

    return-object p0
.end method

.method static synthetic e(Lo/lg;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/lg;->i:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method static synthetic e(Lo/lg;Lcom/google/android/gms/cast/framework/CastContext;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 0

    .line 49
    iput-object p1, p0, Lo/lg;->i:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p1
.end method

.method static synthetic g(Lo/lg;)Lo/kJ;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/lg;->o:Lo/kJ;

    return-object p0
.end method

.method static synthetic h(Lo/lg;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/lg;->s()V

    return-void
.end method

.method private s()V
    .locals 3

    const-string v0, "MdxStackCaf"

    const-string v1, "onLaunched"

    .line 245
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v1, p0, Lo/lg;->n:Z

    if-nez v1, :cond_0

    const-string v1, "onLaunched - haven\'t finished init yet - unable to handle callback"

    .line 248
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lo/lg;->n()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lo/lg;->l:Lo/kN;

    invoke-virtual {v2, v1}, Lo/kN;->b(Ljava/lang/String;)Lo/Object$LoaderManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v0, p0, Lo/lg;->o:Lo/kJ;

    invoke-virtual {v2}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/kJ;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "onLaunched, no selected route"

    .line 259
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    .line 104
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const-string p1, "MdxStackCaf"

    const-string p4, "setMdxNetworkInterface - name: %s, connected: %b"

    invoke-static {p1, p4, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    iget-object p1, p0, Lo/lg;->j:Landroid/os/Handler;

    new-instance p3, Lo/lg$2;

    invoke-direct {p3, p0, p2}, Lo/lg$2;-><init>(Lo/lg;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "MdxStackCaf onSessionStartFailed"

    .line 417
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->w:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-direct {p0, p1, v0, p2}, Lo/lg;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 264
    invoke-virtual {p0, p2}, Lo/lg;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MdxStackCaf"

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string p2, "onMessageReceived, no target to handle message. %s"

    .line 267
    invoke-static {v3, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 271
    :cond_0
    invoke-virtual {v0}, Lo/mo;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    aput-object p3, p1, v2

    const-string p2, "onMessageReceived, no target to handle message. %s %s"

    .line 275
    invoke-static {v3, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 279
    :cond_1
    :try_start_0
    invoke-static {p1}, Lo/mr;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "/pairingresponse"

    .line 280
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "/regpairreply"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "/regpairerror"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "/session"

    .line 286
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 287
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    const-string p2, "/broadcast"

    .line 289
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "onMessageReceived, CAST not handle broadcast message"

    .line 290
    invoke-static {v3, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p2, "/error"

    .line 292
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 293
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    const-string p1, "onMessageReceived, not handling %s"

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    .line 297
    invoke-static {v3, p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 284
    :cond_6
    :goto_0
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "handleIncommingMdxMessage, JSONException %s"

    .line 301
    invoke-static {v3, p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 322
    iget-boolean v0, p0, Lo/lg;->n:Z

    if-nez v0, :cond_0

    const-string p1, "MdxStackCaf"

    const-string p2, "onRouteAdded - haven\'t finished init yet - unable to handle callback"

    .line 323
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lo/lg;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v6

    .line 329
    iget-object v7, p0, Lo/lg;->g:Ljava/util/ArrayList;

    monitor-enter v7

    .line 330
    :try_start_0
    iget-object v0, p0, Lo/lg;->i:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v6, :cond_1

    const-string v3, "MdxStackCaf"

    const-string v4, "MdxStackCaf onRouteAdded - new target - uuid: %s, name: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    .line 333
    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    new-instance v6, Lo/mp;

    invoke-direct {v6, p1, p2, p3, p0}, Lo/mp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lg;)V

    .line 336
    iget-object v0, p0, Lo/lg;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lo/lg;->a:Lo/kH;

    invoke-interface {v0}, Lo/kH;->e()V

    .line 338
    iget-object v0, p0, Lo/lg;->b:Lo/kO;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/kO;->a(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lo/lg;->d:Landroid/content/Context;

    invoke-static {v0, p1, p3, p2}, Lo/afF;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "MdxStackCaf"

    const-string v4, "MdxStackCaf onRouteAdded - existing target - uuid: %s, name: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    .line 342
    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    if-eqz v8, :cond_2

    .line 347
    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "Google"

    .line 352
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lo/mo;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "Google"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    .line 355
    invoke-virtual/range {v0 .. v5}, Lo/mo;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_4

    const-string p1, "MdxStackCaf"

    const-string p2, "MdxStackCaf onRouteAdded - route isSelected"

    .line 361
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_4

    .line 364
    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "MdxStackCaf"

    const-string p2, "MdxStackCaf onRouteAdded - session is connected"

    .line 365
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p1, p0, Lo/lg;->c:Lo/kI;

    invoke-virtual {p1}, Lo/kI;->u()Lo/kF;

    move-result-object p1

    invoke-virtual {p1, v6}, Lo/kF;->d(Lo/mo;)V

    .line 370
    :cond_4
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 4

    const-string v0, "MdxStackCaf"

    const-string v1, "MdxStackCaf onSessionEnded"

    .line 423
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Lo/lg;->k()Lo/mo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 428
    invoke-virtual {v1, v0}, Lo/mo;->c(Z)V

    .line 429
    iget-object v0, p0, Lo/lg;->a:Lo/kH;

    invoke-virtual {v1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/kH;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "MdxStackCaf onSessionEnded - target is null"

    .line 432
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p2, "MdxStackCaf"

    const-string p3, "sendMessage - uuid: %s, url: %s, message: %s"

    .line 201
    invoke-static {p2, p3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    iget-boolean p3, p0, Lo/lg;->n:Z

    if-nez p3, :cond_0

    const-string p1, "sendMessage - haven\'t finished init yet - unable to sendMessage"

    .line 204
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_0
    iget-object p2, p0, Lo/lg;->o:Lo/kJ;

    invoke-virtual {p2, p1}, Lo/kJ;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "MdxStackCaf onSessionResumed"

    .line 438
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lo/lg;->s()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "MdxStackCaf"

    const-string v2, "launchNetflix - uuid: %s"

    .line 168
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    iget-object v0, p0, Lo/lg;->f:Landroid/os/Handler;

    new-instance v1, Lo/lg$9;

    invoke-direct {v1, p0, p1}, Lo/lg$9;-><init>(Lo/lg;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "MdxStackCaf onSessionResumeFailed"

    .line 444
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->y:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-direct {p0, p1, v0, p2}, Lo/lg;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 475
    invoke-virtual {p0}, Lo/lg;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "castHandShakeAck"

    .line 477
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-direct {p0, v0}, Lo/lg;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "castHandShakeRequest"

    .line 482
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "MdxStackCaf"

    if-eqz p1, :cond_1

    const-string p1, "onMessageReceived castHandShakeRequest"

    .line 483
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lo/lg;->s()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0, p3, v0, p2}, Lo/lg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "onMessageReceived, no selected route"

    .line 497
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "MdxStackCaf onSessionStarted"

    .line 411
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lo/lg;->s()V

    return-void
.end method

.method public e(Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "MdxStackCaf"

    const-string v1, "MdxStackCaf onSendMessageResult"

    .line 450
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lo/lg;->k()Lo/mo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "onSendMessageResult, no target to handle message."

    .line 455
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_0
    invoke-virtual {v1}, Lo/mo;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    .line 462
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->y()V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "onSendMessageResult, no session target to handle message. %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 8

    .line 376
    invoke-virtual {p0, p1}, Lo/lg;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 378
    instance-of v3, v0, Lo/mp;

    if-eqz v3, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "MdxStackCaf"

    const-string v5, "MdxStackCaf onRouteRemoved - target found, notifying - uuid: %s"

    .line 379
    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 380
    move-object v3, v0

    check-cast v3, Lo/mp;

    invoke-virtual {v3}, Lo/mp;->i()V

    .line 383
    :cond_0
    iget-object v3, p0, Lo/lg;->g:Ljava/util/ArrayList;

    monitor-enter v3

    .line 384
    :try_start_0
    iget-object v4, p0, Lo/lg;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 385
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 386
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/mo;

    .line 388
    invoke-virtual {v5, v0}, Lo/mo;->d(Lo/mo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    invoke-virtual {p0}, Lo/lg;->k()Lo/mo;

    move-result-object v0

    invoke-virtual {v5, v0}, Lo/mo;->d(Lo/mo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MdxStackCaf"

    const-string v6, "MdxStackCaf onRouteRemoved - removed route is the currently selected target - uuid: %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p1, v7, v1

    .line 390
    invoke-static {v0, v6, v7}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 391
    iget-object v0, p0, Lo/lg;->a:Lo/kH;

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v6

    invoke-virtual {v5}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1, v6, v5}, Lo/kH;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const-string v0, "MdxStackCaf"

    const-string v5, "MdxStackCaf onRouteRemoved - found target in device list, removing - uuid: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 394
    invoke-static {v0, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 396
    iget-object v0, p0, Lo/lg;->a:Lo/kH;

    invoke-interface {v0}, Lo/kH;->e()V

    .line 397
    iget-object v0, p0, Lo/lg;->b:Lo/kO;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/kO;->b(Ljava/lang/String;)V

    .line 402
    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()Landroid/os/Looper;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/lg;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public onCastStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 312
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastState;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MdxStackCaf"

    const-string v1, "onCastStateChanged - newState: %s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "enable - enabling Cast CAF stack"

    .line 123
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lo/lg;->f:Landroid/os/Handler;

    new-instance v1, Lo/lg$3;

    invoke-direct {v1, p0}, Lo/lg$3;-><init>(Lo/lg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q()V
    .locals 2

    .line 212
    iget-boolean v0, p0, Lo/lg;->n:Z

    if-nez v0, :cond_0

    const-string v0, "MdxStackCaf"

    const-string v1, "disconnect - haven\'t finished init yet - unable to disconnect"

    .line 213
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lo/lg;->i:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V

    return-void
.end method

.method public r()V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "disable - disabling Cast CAF stack"

    .line 139
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lo/lg;->f:Landroid/os/Handler;

    new-instance v1, Lo/lg$1;

    invoke-direct {v1, p0}, Lo/lg$1;-><init>(Lo/lg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public t()V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "restartDiscovery"

    .line 155
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lo/lg;->j:Landroid/os/Handler;

    new-instance v1, Lo/lg$5;

    invoke-direct {v1, p0}, Lo/lg$5;-><init>(Lo/lg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
