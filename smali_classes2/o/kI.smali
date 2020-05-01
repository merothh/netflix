.class public Lo/kI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/kn;


# instance fields
.field private final a:Lo/kF;

.field private final b:Lo/kO;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Looper;

.field private final e:Lo/kH;

.field private f:Lo/lg;

.field private final g:Landroid/os/Handler;

.field private h:Lo/lf;


# direct methods
.method constructor <init>(Lo/kH;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Lo/kF;Lo/kO;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lo/kI;->e:Lo/kH;

    .line 78
    iput-object p2, p0, Lo/kI;->c:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lo/kI;->d:Landroid/os/Looper;

    .line 80
    iput-object p4, p0, Lo/kI;->g:Landroid/os/Handler;

    .line 81
    iput-object p5, p0, Lo/kI;->a:Lo/kF;

    .line 82
    iput-object p6, p0, Lo/kI;->b:Lo/kO;

    return-void
.end method

.method static synthetic a(Lo/kI;Lo/lg;)Lo/lg;
    .locals 0

    .line 64
    iput-object p1, p0, Lo/kI;->f:Lo/lg;

    return-object p1
.end method

.method private l(Ljava/lang/String;)Lo/mo;
    .locals 2

    .line 365
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Lo/lg;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-object v1, p0, Lo/kI;->h:Lo/lf;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 370
    invoke-virtual {v1, p1}, Lo/lf;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lo/mo;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/kI;->d:Landroid/os/Looper;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 403
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 405
    new-instance v0, Lo/lC;

    invoke-direct {v0}, Lo/lC;-><init>()V

    .line 406
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 524
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 526
    new-instance v0, Lo/lH;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/lH;-><init>(Ljava/lang/String;I)V

    .line 527
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/mo;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ZLo/kx;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 180
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "TargetManagerV2"

    const-string v4, "selectTarget %s %b"

    invoke-static {v2, v4, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    if-eqz v0, :cond_9

    .line 183
    invoke-direct {p0, p1}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    .line 184
    invoke-static {}, Lo/dQ;->i()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lo/mo;->b()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lo/mo;->a()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_8

    .line 189
    iget-object v4, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v4, v0}, Lo/kF;->d(Lo/mo;)V

    if-eqz p2, :cond_4

    .line 192
    invoke-static {}, Lo/dQ;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 193
    sget-object v4, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {p3, v4}, Lo/kx;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    :cond_2
    invoke-virtual {v0}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :cond_3
    invoke-virtual {v0}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Ljava/lang/String;)V

    .line 202
    :cond_4
    :goto_2
    instance-of v4, v0, Lo/mn;

    if-eqz v4, :cond_6

    const-string p1, "selectTarget, need launch"

    .line 203
    invoke-static {v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    instance-of p1, v0, Lo/mm;

    if-eqz p1, :cond_5

    .line 206
    check-cast v0, Lo/mm;

    invoke-virtual {v0, p2, p3}, Lo/mm;->c(ZLo/kx;)Z

    goto :goto_3

    .line 209
    :cond_5
    check-cast v0, Lo/mn;

    invoke-interface {v0, p2}, Lo/mn;->d(Z)Z

    goto :goto_3

    .line 212
    :cond_6
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string p1, "selectTarget, contact mdx target"

    .line 214
    invoke-static {v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(ZLo/kx;)V

    goto :goto_3

    :cond_7
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "BUG!!! selectTarget failed %s"

    .line 218
    invoke-static {v2, p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    :goto_3
    invoke-virtual {p0}, Lo/kI;->k()V

    goto :goto_4

    :cond_8
    const-string p2, ""

    .line 224
    invoke-static {p1, p2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 225
    iget-object p1, p0, Lo/kI;->a:Lo/kF;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/kF;->d(Lo/mo;)V

    .line 226
    invoke-virtual {p0}, Lo/kI;->k()V

    :cond_9
    :goto_4
    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/kI;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public b(Landroid/content/Context;Lo/zE;ZLorg/json/JSONArray;)V
    .locals 0

    .line 116
    iget-object p3, p0, Lo/kI;->h:Lo/lf;

    if-nez p3, :cond_0

    .line 118
    :try_start_0
    new-instance p3, Lo/lf;

    invoke-direct {p3, p1, p2, p0}, Lo/lf;-><init>(Landroid/content/Context;Lo/zE;Lo/kI;)V

    iput-object p3, p0, Lo/kI;->h:Lo/lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 121
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to init MdxStackDial, error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "TargetManagerV2"

    const-string p3, "Failed to init MdxStackDial, error: %s"

    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lo/kI;->h:Lo/lf;

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 467
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 469
    new-instance v0, Lo/lK;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lK;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 495
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 497
    new-instance v0, Lo/lN;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/lN;-><init>(Ljava/lang/String;I)V

    .line 498
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/kI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 476
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    new-instance v0, Lo/lL;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lL;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    .line 420
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 422
    new-instance v0, Lo/lQ;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/lQ;-><init>(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 503
    invoke-static {p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    move-result-object p2

    .line 504
    invoke-static {p3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    move-result-object p3

    .line 506
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 508
    iget-object v0, p0, Lo/kI;->b:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->c()Lo/kZ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Lo/kZ;->b(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V

    .line 510
    new-instance p2, Lo/lO;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lo/lO;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_1
    return-void
.end method

.method public d()Lo/kO;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/kI;->b:Lo/kO;

    return-object v0
.end method

.method public d(Landroid/content/Context;Lo/zE;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lio/reactivex/subjects/CompletableSubject;->create()Lio/reactivex/subjects/CompletableSubject;

    move-result-object v0

    .line 96
    new-instance v1, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    new-instance v2, Lo/kI$2;

    invoke-direct {v2, p0, p3}, Lo/kI$2;-><init>(Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V

    new-instance v3, Lo/kI$3;

    invoke-direct {v3, p0, p3}, Lo/kI$3;-><init>(Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/CompletableSubject;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 111
    new-instance p3, Lo/lg;

    invoke-direct {p3, p1, p2, p0, v0}, Lo/lg;-><init>(Landroid/content/Context;Lo/zE;Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V

    iput-object p3, p0, Lo/kI;->f:Lo/lg;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 557
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 559
    new-instance v0, Lo/lB;

    invoke-direct {v0}, Lo/lB;-><init>()V

    .line 560
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 2

    .line 516
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 518
    new-instance v0, Lo/lM;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/lM;-><init>(Ljava/lang/String;I)V

    .line 519
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 484
    invoke-static {p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    move-result-object p2

    .line 485
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 487
    iget-object v0, p0, Lo/kI;->b:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->c()Lo/kZ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    :goto_0
    invoke-virtual {v0, p2, v1}, Lo/kZ;->e(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V

    .line 489
    new-instance p2, Lo/lP;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lo/lP;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 540
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    new-instance v0, Lo/lz;

    invoke-direct {v0, p2, p3}, Lo/lz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, p2, v0}, Lo/kI;->a(Ljava/lang/String;ZLo/kx;)V

    return-void
.end method

.method public d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 314
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UNKNOWN-NAME"

    .line 317
    :cond_0
    invoke-static {p4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p4, "UNKNOWN-SSID"

    .line 320
    :cond_1
    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p3, "0.0.0.0"

    .line 324
    :cond_2
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/lg;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_3
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_4

    .line 329
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/lf;->e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public e()Lo/kH;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/kI;->e:Lo/kH;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 411
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 413
    new-instance v0, Lo/lI;

    invoke-direct {v0}, Lo/lI;-><init>()V

    .line 414
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 429
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    .line 431
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v2

    invoke-interface {v2}, Lo/bO;->h()Ljava/lang/String;

    move-result-object v11

    .line 433
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 434
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v2

    invoke-virtual {v2}, Lo/CameraPrewarmService;->e()Lo/cz;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {v2}, Lo/cz;->af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v2

    invoke-static {v2}, Lo/kP;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "{}"

    :goto_0
    move-object v12, v2

    .line 439
    new-instance v2, Lo/lJ;

    iget-object v6, v0, Lo/kI;->c:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v3, v2

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v13}, Lo/lJ;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 442
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    .line 443
    iget-object v2, v0, Lo/kI;->b:Lo/kO;

    .line 444
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 445
    :goto_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v2, v3, v4, v1}, Lo/kO;->a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 453
    :cond_2
    invoke-direct {p0, p1}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 455
    invoke-virtual {v1, v2}, Lo/mo;->a(Lo/ly;)V

    .line 457
    iget-object v2, v0, Lo/kI;->b:Lo/kO;

    instance-of v3, v1, Lo/mp;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 459
    :goto_2
    invoke-virtual {v1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {v2, v3, v4, v1}, Lo/kO;->a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 532
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 534
    new-instance v0, Lo/lR;

    invoke-direct {v0, p2, p3}, Lo/lR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 549
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 551
    new-instance v0, Lo/lG;

    invoke-direct {v0, p2, p3, p4}, Lo/lG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Z)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 565
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 567
    new-instance v0, Lo/lF;

    invoke-direct {v0}, Lo/lF;-><init>()V

    .line 568
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 130
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    invoke-virtual {v0}, Lo/lf;->l()[Lo/mo;

    move-result-object v0

    .line 131
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 132
    invoke-virtual {v3}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v3}, Lo/mo;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 1

    .line 251
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lo/lg;->q()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "TargetManagerV2"

    const-string v1, "stop"

    .line 166
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const/4 v1, 0x1

    .line 167
    invoke-virtual {p0, v0, v1}, Lo/kI;->d(Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lo/lg;->r()V

    .line 173
    :cond_0
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lo/lf;->e()V

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .line 581
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 583
    new-instance v0, Lo/lV;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lV;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "TargetManagerV2"

    const-string v1, "start MDX"

    .line 154
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lo/lg;->p()V

    .line 160
    :cond_0
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lo/lf;->d()V

    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 573
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 575
    new-instance v0, Lo/lD;

    invoke-direct {v0}, Lo/lD;-><init>()V

    .line 576
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_0
    return-void
.end method

.method public j()Lo/mo;
    .locals 1

    .line 232
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-direct {p0, v0}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 237
    invoke-direct {p0, p1}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p1, v0}, Lo/mo;->c(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 257
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    const-string v1, "TargetManagerV2"

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lo/lg;->o()V

    goto :goto_0

    :cond_0
    const-string v0, "updateTargetList, cast mdx is not ready"

    .line 261
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lo/lf;->o()V

    goto :goto_1

    :cond_1
    const-string v0, "updateTargetList, dial mdx is not ready"

    .line 268
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l()[Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lo/mo;

    .line 288
    iget-object v2, p0, Lo/kI;->f:Lo/lg;

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {v2}, Lo/lg;->l()[Lo/mo;

    move-result-object v1

    .line 290
    array-length v2, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v0, [Lo/mo;

    .line 294
    iget-object v4, p0, Lo/kI;->h:Lo/lf;

    if-eqz v4, :cond_1

    .line 295
    invoke-virtual {v4}, Lo/lf;->l()[Lo/mo;

    move-result-object v3

    .line 296
    array-length v4, v3

    add-int/2addr v2, v4

    :cond_1
    if-lez v2, :cond_4

    .line 300
    new-array v2, v2, [Landroid/util/Pair;

    .line 302
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, v1, v5

    add-int/lit8 v8, v6, 0x1

    .line 303
    invoke-virtual {v7}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    .line 305
    :cond_2
    array-length v1, v3

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v4, v3, v0

    add-int/lit8 v5, v6, 0x1

    .line 306
    invoke-virtual {v4}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    aput-object v4, v2, v6

    add-int/lit8 v0, v0, 0x1

    move v6, v5

    goto :goto_2

    :cond_3
    return-object v2

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 2

    .line 274
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lo/lg;->l()[Lo/mo;

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    .line 278
    :cond_0
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Lo/lf;->l()[Lo/mo;

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public n()V
    .locals 1

    .line 334
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lo/lg;->m()V

    .line 338
    :cond_0
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lo/lf;->m()V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 1

    .line 354
    iget-object v0, p0, Lo/kI;->f:Lo/lg;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lo/lg;->t()V

    .line 358
    :cond_0
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lo/lf;->j:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lo/kI;->h:Lo/lf;

    invoke-virtual {v0}, Lo/lf;->t()V

    :cond_1
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .line 244
    invoke-direct {p0, p1}, Lo/kI;->l(Ljava/lang/String;)Lo/mo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p1, v0}, Lo/mo;->c(Z)V

    :cond_0
    return-void
.end method

.method public p()Lo/kC;
    .locals 1

    .line 641
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-direct {p0, v0}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->w()Lo/kC;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Z
    .locals 2

    .line 612
    invoke-virtual {p0}, Lo/kI;->j()Lo/mo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 615
    instance-of v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-nez v1, :cond_0

    instance-of v1, v0, Lo/mh;

    if-eqz v1, :cond_1

    .line 616
    :cond_0
    invoke-virtual {v0}, Lo/mo;->a()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 2

    .line 600
    invoke-virtual {p0}, Lo/kI;->j()Lo/mo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    instance-of v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-nez v1, :cond_0

    instance-of v1, v0, Lo/mh;

    if-eqz v1, :cond_1

    .line 604
    :cond_0
    invoke-virtual {v0}, Lo/mo;->b()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s()J
    .locals 2

    .line 627
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-direct {p0, v0}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-direct {p0, v0}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Lo/kF;
    .locals 1

    .line 676
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-direct {p0, v0}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lo/aeM$Application;
    .locals 1

    .line 655
    iget-object v0, p0, Lo/kI;->a:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/kI;->m(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->A()Lo/aeM$Application;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
