.class public Lo/hY;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/hW;
.implements Lo/ic;
.implements Lo/SearchIndexablesContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hY$Application;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Boolean;

.field private static final b:J

.field private static final d:Ljava/lang/Boolean;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final e:Lo/cz;

.field private f:Lo/MetadataReader;

.field private final g:Lcom/netflix/mediaclient/media/BookmarkStore;

.field private i:Lo/FontRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FontRequest<",
            "Lo/agf;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/zM;

.field private k:Z

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Lo/NetworkViolation;

.field private final n:Lo/iu;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ci;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/content/BroadcastReceiver;

.field private final s:Lo/hY$Application;

.field private final t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lo/hY;->d:Ljava/lang/Boolean;

    .line 123
    sget-object v1, Lo/hY;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lo/hY;->a:Ljava/lang/Boolean;

    .line 126
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/hY;->b:J

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lo/hY;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zM;Lo/iu;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/hY;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/hY;->o:Ljava/util/List;

    .line 155
    new-instance v0, Lo/hY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/hY$Application;-><init>(Lo/hY;Lo/hY$4;)V

    iput-object v0, p0, Lo/hY;->s:Lo/hY$Application;

    .line 286
    new-instance v0, Lo/hY$4;

    invoke-direct {v0, p0}, Lo/hY$4;-><init>(Lo/hY;)V

    iput-object v0, p0, Lo/hY;->p:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v0, Lo/hY$8;

    invoke-direct {v0, p0}, Lo/hY$8;-><init>(Lo/hY;)V

    iput-object v0, p0, Lo/hY;->t:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v0, Lo/hY$7;

    invoke-direct {v0, p0}, Lo/hY$7;-><init>(Lo/hY;)V

    iput-object v0, p0, Lo/hY;->r:Landroid/content/BroadcastReceiver;

    .line 1237
    new-instance v0, Lo/hY$3;

    invoke-direct {v0, p0}, Lo/hY$3;-><init>(Lo/hY;)V

    iput-object v0, p0, Lo/hY;->q:Ljava/lang/Runnable;

    .line 160
    iput-object p1, p0, Lo/hY;->e:Lo/cz;

    .line 161
    iput-object p2, p0, Lo/hY;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 162
    iput-object p3, p0, Lo/hY;->j:Lo/zM;

    .line 163
    const-class p1, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/BookmarkStore;

    iput-object p1, p0, Lo/hY;->g:Lcom/netflix/mediaclient/media/BookmarkStore;

    .line 164
    iput-object p4, p0, Lo/hY;->n:Lo/iu;

    .line 165
    const-class p1, Lo/hW;

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)V"
        }
    .end annotation

    .line 1198
    new-instance v0, Lo/hY$2;

    invoke-direct {v0, p0}, Lo/hY$2;-><init>(Lo/hY;)V

    .line 1205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    if-eqz v1, :cond_0

    .line 1208
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1210
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 1212
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "FalkorAgent"

    const-string v6, "RefreshSeasonsAndEpisodes refreshing %s"

    invoke-static {v4, v6, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1215
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1216
    :goto_1
    iget-object v3, p0, Lo/hY;->f:Lo/MetadataReader;

    new-instance v4, Lo/RegexValidator;

    .line 1217
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lo/RegexValidator;-><init>(Ljava/lang/String;Z)V

    .line 1216
    invoke-virtual {v3, v4, v0}, Lo/MetadataReader;->a(Lo/ConfirmationCallback;Lo/ci;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lo/hY;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/hY;->j()V

    return-void
.end method

.method static synthetic a(Lo/hY;Ljava/util/List;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lo/hY;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lo/hY;Ljava/util/List;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lo/hY;->d(Ljava/util/List;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/hY;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/hY;->n()V

    return-void
.end method

.method static synthetic c(Lo/hY;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/hY;->m()V

    return-void
.end method

.method static synthetic c(Lo/hY;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)Z
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lo/hY;->d(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)Z

    move-result p0

    return p0
.end method

.method private d(Ljava/util/List;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;"
        }
    .end annotation

    .line 1259
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    sget-object p1, Lo/id;->c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    return-object p1

    .line 1262
    :cond_0
    invoke-static {p1}, Lo/aee;->b(Ljava/util/List;)I

    move-result p1

    .line 1263
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;-><init>(I)V

    return-object v0
.end method

.method static synthetic d(Lo/hY;Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lo/hY;->e(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/hY;)Lo/FontRequest;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->i:Lo/FontRequest;

    return-object p0
.end method

.method private d(IIIIIIZZZLo/ci;IIZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 488
    new-instance v11, Lo/hY$13;

    move-object/from16 v1, p10

    invoke-direct {v11, v0, v1}, Lo/hY$13;-><init>(Lo/hY;Lo/ci;)V

    .line 522
    iget-object v1, v0, Lo/hY;->f:Lo/MetadataReader;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-virtual/range {v1 .. v15}, Lo/MetadataReader;->d(IIIIIIZZZLo/ci;IIZLjava/lang/String;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1230
    invoke-static {}, Lo/CarrierIdentifier;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/hY;->j:Lo/zM;

    if-eqz p1, :cond_0

    .line 1231
    invoke-interface {p1}, Lo/zM;->isOptIn()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;"
        }
    .end annotation

    .line 1268
    invoke-static {p1}, Lo/aee;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1270
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lo/hY;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/hY;->o()V

    return-void
.end method

.method static synthetic f(Lo/hY;)Lcom/netflix/mediaclient/media/BookmarkStore;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->g:Lcom/netflix/mediaclient/media/BookmarkStore;

    return-object p0
.end method

.method static synthetic g(Lo/hY;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/hY;->i()V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    .line 118
    invoke-static {}, Lo/hY;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lo/hY;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 372
    invoke-static {}, Lo/eM;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lo/NegationValidator;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v2, 0x3

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lo/NegationValidator;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V

    new-instance v1, Lo/hY$10;

    invoke-direct {v1, p0}, Lo/hY$10;-><init>(Lo/hY;)V

    invoke-virtual {p0, v0, v1}, Lo/hY;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Lo/TrustAnchor;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-direct {v0, v1}, Lo/TrustAnchor;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    new-instance v1, Lo/hY$11;

    invoke-direct {v1, p0}, Lo/hY$11;-><init>(Lo/hY;)V

    invoke-virtual {p0, v0, v1}, Lo/hY;->d(Lo/SettingsValidators;Lo/ci;)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lo/hY;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lo/hY;->l()V

    return-void
.end method

.method static synthetic j(Lo/hY;)Lo/MetadataReader;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->f:Lo/MetadataReader;

    return-object p0
.end method

.method private j()V
    .locals 2

    const-string v0, "FalkorAgent"

    const-string v1, "handleProfileTypeChanged"

    .line 396
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, v0}, Lo/hY;->b(Z)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 406
    iget-object v0, p0, Lo/hY;->m:Lo/NetworkViolation;

    .line 407
    invoke-interface {v0}, Lo/NetworkViolation;->e()Lo/ServiceConnectionLeakedViolation;

    move-result-object v0

    .line 408
    :try_start_0
    invoke-interface {v0}, Lo/ServiceConnectionLeakedViolation;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-interface {v0}, Lo/ServiceConnectionLeakedViolation;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 407
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 409
    :try_start_2
    invoke-interface {v0}, Lo/ServiceConnectionLeakedViolation;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
.end method

.method private l()V
    .locals 2

    const-string v0, "FalkorAgent"

    const-string v1, "handleAccountNotLoggedIn"

    .line 400
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0}, Lo/hY;->b(Z)V

    return-void
.end method

.method static synthetic m(Lo/hY;)Ljava/util/List;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->o:Ljava/util/List;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 419
    sget-object v0, Lo/hY;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lo/hY;->k:Z

    .line 424
    invoke-direct {p0}, Lo/hY;->k()V

    .line 425
    invoke-direct {p0}, Lo/hY;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FalkorAgent"

    const-string v2, "handleProfileActive: Flushing all caches because profile deactivate..."

    .line 426
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0, v1}, Lo/hY;->b(Z)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lo/hY;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 435
    invoke-direct {p0}, Lo/hY;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FalkorAgent"

    const-string v2, "handleProfileActive: Flushing all caches because new profile activated..."

    .line 436
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0, v1}, Lo/hY;->b(Z)V

    .line 444
    :cond_0
    iput-boolean v1, p0, Lo/hY;->k:Z

    .line 445
    sget-object v0, Lo/hY;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic o(Lo/hY;)Lo/iu;
    .locals 0

    .line 118
    iget-object p0, p0, Lo/hY;->n:Lo/iu;

    return-object p0
.end method

.method private o()V
    .locals 0

    .line 414
    invoke-direct {p0}, Lo/hY;->k()V

    return-void
.end method

.method private static p()Z
    .locals 2

    .line 453
    sget-object v0, Lo/hY;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FalkorAgent"

    const-string v1, "wrong state - canDoDataFetches false - skipping browse request"

    .line 454
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    sget-object v0, Lo/hY;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private q()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lo/hY;->k:Z

    return v0
.end method

.method private t()V
    .locals 4

    .line 1253
    invoke-virtual {p0}, Lo/hY;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/hY;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1254
    invoke-virtual {p0}, Lo/hY;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/hY;->q:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lo/hY;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLo/ci;)V
    .locals 7

    .line 554
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    sget-object p4, Lo/hY;->a:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    return-void
.end method

.method a(Ljava/lang/String;IIIILo/ci;)V
    .locals 7

    .line 531
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->a(Ljava/lang/String;IIIILo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIZLo/ci;)V
    .locals 7

    .line 1354
    new-instance v6, Lo/hY$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/hY$1;-><init>(Lo/hY;IIZLo/ci;)V

    .line 1383
    iget-object p2, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 p3, 0x0

    const/16 p4, 0xa

    invoke-virtual {p2, p1, p3, p4, v6}, Lo/MetadataReader;->d(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIZZLo/ci;)V
    .locals 7

    .line 1310
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->c(Ljava/lang/String;IIZZLo/ci;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 631
    invoke-virtual/range {v0 .. v6}, Lo/hY;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 8

    .line 652
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lo/MetadataReader;->e(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method a(Ljava/lang/String;Lo/ci;)V
    .locals 2

    .line 813
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lo/MetadataReader;->e(Ljava/lang/String;ZLo/ci;)V

    return-void
.end method

.method public a(Ljava/util/List;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 1335
    invoke-virtual {p0}, Lo/hY;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->c(Ljava/util/List;Lo/ci;)V

    :cond_0
    return-void
.end method

.method a(ZLjava/lang/String;)V
    .locals 2

    .line 934
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/hY$12;

    invoke-direct {v1, p0, p2, p1}, Lo/hY$12;-><init>(Lo/hY;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "falkor"

    return-object v0
.end method

.method public b()Lo/hZ;
    .locals 1

    .line 258
    sget-object v0, Lo/ib;->e:Lo/ib;

    return-object v0
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, p1, p2, v0}, Lo/hY;->c(IILo/ci;)V

    return-void
.end method

.method public b(IILjava/lang/String;Lo/ci;Z)V
    .locals 6

    if-eqz p3, :cond_0

    .line 596
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->d(IILjava/lang/String;Lo/ci;Z)V

    :cond_0
    return-void
.end method

.method public b(IILjava/lang/String;ZLo/ci;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v0, p5

    .line 1443
    invoke-static {}, Lo/adS;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FalkorAgent"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 1446
    iget-object v1, v15, Lo/hY;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_0
    iget-object v0, v15, Lo/hY;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 1450
    iget-object v3, v15, Lo/hY;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Attaching callback to already prefetching lolomo request. Callback list size = %s"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1454
    :cond_1
    const-class v0, Lo/kg;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kg;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->f:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-interface {v0, v2}, Lo/kg;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 1455
    new-instance v10, Lo/hY$9;

    invoke-direct {v10, v15}, Lo/hY$9;-><init>(Lo/hY;)V

    .line 1470
    iget-object v0, v15, Lo/hY;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1471
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/ep;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-nez p4, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v0, 0x6

    const/4 v4, 0x6

    goto :goto_0

    :cond_4
    const/16 v0, 0x15

    const/16 v4, 0x15

    :goto_0
    const/4 v5, 0x0

    .line 1477
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v0, v1, v6}, Lo/bO;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    .line 1478
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v0, v1, v8}, Lo/bO;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1479
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0}, Lo/bO;->c()Z

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v1, v2

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v11

    move v9, v12

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v14, p3

    .line 1473
    invoke-direct/range {v0 .. v14}, Lo/hY;->d(IIIIIIZZZLo/ci;IIZLjava/lang/String;)V

    return-void
.end method

.method public b(IIZLjava/lang/String;Lo/ci;)V
    .locals 7

    .line 580
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    sget-object v1, Lo/hY;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->e(IIZLjava/lang/String;ZLo/ci;)V

    return-void
.end method

.method b(Ljava/lang/String;IILo/ci;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->a(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V
    .locals 6

    .line 755
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 1

    .line 732
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/ci;)V
    .locals 1

    .line 747
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/ci;)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .line 1017
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "FalkorAgent"

    const-string v0, "fetchEpisodesForSeason - videoId %s is not an episode - skip!"

    .line 1018
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1023
    :cond_0
    new-instance p2, Lo/hY$15;

    invoke-direct {p2, p0, p1}, Lo/hY$15;-><init>(Lo/hY;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lo/hY;->b(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 6

    .line 856
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->c(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->a(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public b(Ljava/lang/String;ZLo/ci;)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->b(Ljava/lang/String;ZLo/ci;)V

    return-void
.end method

.method public b(Ljava/util/List;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->b(Ljava/util/List;Lo/ci;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 239
    iget-object v0, p0, Lo/hY;->i:Lo/FontRequest;

    invoke-virtual {v0, p1}, Lo/FontRequest;->a(Z)V

    return-void
.end method

.method public b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 4

    .line 1151
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    if-nez v0, :cond_0

    .line 1152
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "FalkorAgent method called while netflixFalkorTasksDispatcher is null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x13

    .line 1156
    new-instance v3, Lo/hY$5;

    invoke-direct {v3, p0, p3, p2, p4}, Lo/hY$5;-><init>(Lo/hY;ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lo/MetadataReader;->c(IIZLo/ci;)V

    .line 1188
    iget-object p1, p0, Lo/hY;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1189
    invoke-direct {p0}, Lo/hY;->t()V

    :cond_1
    return-void
.end method

.method public c()Lo/TableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TableLayout<",
            "*>;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lo/hY;->i:Lo/FontRequest;

    return-object v0
.end method

.method public c(IILo/ci;)V
    .locals 15

    add-int/lit8 v6, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move v4, v6

    move-object/from16 v10, p3

    .line 1283
    invoke-direct/range {v0 .. v14}, Lo/hY;->d(IIIIIIZZZLo/ci;IIZLjava/lang/String;)V

    return-void
.end method

.method public c(IZLo/ci;)V
    .locals 9

    .line 1300
    iget-object v0, p0, Lo/hY;->i:Lo/FontRequest;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/FontRequest;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v6, v2

    .line 1302
    iget-object v3, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lo/MetadataReader;->d(IILjava/lang/String;ZLo/ci;)V

    return-void
.end method

.method c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/ci;)V
    .locals 1

    .line 771
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/ci;)V

    return-void
.end method

.method public c(Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;)V
    .locals 6

    .line 248
    :try_start_0
    iget-object p1, p0, Lo/hY;->m:Lo/NetworkViolation;

    invoke-interface {p1}, Lo/NetworkViolation;->e()Lo/ServiceConnectionLeakedViolation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lo/hY;->b:J

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lo/ServiceConnectionLeakedViolation;->d(JJLo/ServiceConnectionLeakedViolation$Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    invoke-interface {p1}, Lo/ServiceConnectionLeakedViolation;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 248
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    .line 250
    :try_start_4
    invoke-interface {p1}, Lo/ServiceConnectionLeakedViolation;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 251
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .line 968
    iget-object v0, p0, Lo/hY;->i:Lo/FontRequest;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/TextInputTimePickerView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "lolomo"

    aput-object v5, v3, v4

    .line 969
    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "topCategories"

    aput-object v5, v3, v4

    .line 971
    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 968
    invoke-virtual {v0, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    .line 974
    invoke-virtual {p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ia;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;IILo/ci;)V
    .locals 1

    .line 538
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->d(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method c(Ljava/lang/String;IIZLo/ci;)V
    .locals 6

    .line 785
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->d(Ljava/lang/String;IIZLo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 7

    .line 888
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 6

    .line 839
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ContentAction;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->c(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ContentAction;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 847
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->c(Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->d(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d()Lo/hW;
    .locals 0

    return-object p0
.end method

.method public d(IZLo/ci;)V
    .locals 1

    .line 1404
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    if-nez v0, :cond_0

    .line 1405
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "FalkorAgent method called while netflixFalkorTasksDispatcher is null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1409
    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->d(IZLo/ci;)V

    return-void
.end method

.method public d(IZZLo/ci;)V
    .locals 7

    .line 1318
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    add-int/lit8 v2, p1, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v3, p3

    move v5, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->e(IIZLjava/lang/String;ZLo/ci;)V

    return-void
.end method

.method d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/ci;)V
    .locals 7

    .line 778
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/ci;)V

    return-void
.end method

.method d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/ci;)V
    .locals 6

    .line 880
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 6

    .line 895
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 953
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    if-nez v0, :cond_0

    .line 954
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "FalkorAgent method called while netflixFalkorTasksDispatcher is null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 958
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 9

    .line 709
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lo/MetadataReader;->d(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 831
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->c(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public d(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AR;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3}, Lo/MetadataReader;->e(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    return-void
.end method

.method public d(Lo/AutofillServiceInfo;Lo/cm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AutofillServiceInfo<",
            "TT;>;",
            "Lo/cm<",
            "TT;>;)V"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    check-cast p1, Lo/DateTransformation;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->a(Lo/DateTransformation;Lo/cm;)V

    return-void
.end method

.method public d(Lo/SettingsValidators;Lo/ci;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    check-cast p1, Lo/ConfirmationCallback;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->a(Lo/ConfirmationCallback;Lo/ci;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/hY;->t:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 214
    invoke-virtual {p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/hY;->p:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 215
    invoke-virtual {p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/hY;->r:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 216
    iget-object v0, p0, Lo/hY;->n:Lo/iu;

    iget-object v1, p0, Lo/hY;->s:Lo/hY$Application;

    invoke-interface {v0, v1}, Lo/iu;->b(Lo/iw;)V

    .line 217
    iget-object v0, p0, Lo/hY;->m:Lo/NetworkViolation;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lo/NetworkViolation;->close()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lo/hY;->m:Lo/NetworkViolation;

    .line 222
    :cond_0
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method public doInit()V
    .locals 10

    .line 179
    invoke-virtual {p0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lo/CleartextNetworkViolation;->d(Landroid/content/Context;)V

    .line 184
    new-instance v8, Lo/agf;

    invoke-direct {v8}, Lo/agf;-><init>()V

    .line 185
    const-class v1, Lcom/google/gson/Gson;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    .line 186
    invoke-static {v0, v1}, Lo/CleartextNetworkViolation;->b(Landroid/content/Context;Lcom/google/gson/Gson;)Lo/NetworkViolation;

    move-result-object v1

    iput-object v1, p0, Lo/hY;->m:Lo/NetworkViolation;

    .line 188
    sget-object v1, Lo/gi;->e:Lo/gi$Activity;

    invoke-virtual {v1}, Lo/gi$Activity;->a()Z

    move-result v6

    .line 189
    invoke-static {}, Lo/ff;->j()Z

    move-result v7

    .line 190
    new-instance v9, Lo/FontRequest;

    iget-object v1, p0, Lo/hY;->e:Lo/cz;

    .line 192
    invoke-interface {v1}, Lo/cz;->ah()Z

    move-result v3

    iget-object v4, p0, Lo/hY;->m:Lo/NetworkViolation;

    sget-object v5, Lo/CallLog;->e:Lo/CallLog;

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Lo/FontRequest;-><init>(Lo/Browser;ZLo/NetworkViolation;Lo/LeakedClosableViolation;ZZ)V

    iput-object v9, p0, Lo/hY;->i:Lo/FontRequest;

    .line 199
    iget-object v1, p0, Lo/hY;->i:Lo/FontRequest;

    invoke-virtual {v8, v1}, Lo/agf;->e(Lo/TableLayout;)V

    .line 200
    new-instance v1, Lo/MetadataReader;

    iget-object v2, p0, Lo/hY;->i:Lo/FontRequest;

    invoke-direct {v1, v2, p0}, Lo/MetadataReader;-><init>(Lo/FontRequest;Lo/hY;)V

    iput-object v1, p0, Lo/hY;->f:Lo/MetadataReader;

    .line 202
    iget-object v1, p0, Lo/hY;->n:Lo/iu;

    iget-object v2, p0, Lo/hY;->s:Lo/hY$Application;

    invoke-interface {v1, v2}, Lo/iu;->a(Lo/iw;)V

    .line 204
    iget-object v1, p0, Lo/hY;->t:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/adG;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 205
    iget-object v1, p0, Lo/hY;->p:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    const-string v3, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-static {v0, v1, v3, v2}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 206
    iget-object v1, p0, Lo/hY;->r:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 208
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/hY;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/media/BookmarkStore;
    .locals 1

    .line 275
    iget-object v0, p0, Lo/hY;->g:Lcom/netflix/mediaclient/media/BookmarkStore;

    return-object v0
.end method

.method public e(I)V
    .locals 2

    .line 1388
    new-instance v0, Lo/hY$6;

    invoke-direct {v0, p0}, Lo/hY$6;-><init>(Lo/hY;)V

    const/4 v1, 0x0

    .line 1395
    invoke-virtual {p0, p1, v1, v0}, Lo/hY;->d(IZLo/ci;)V

    return-void
.end method

.method public e(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/ci;)V
    .locals 8

    .line 604
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    sget-object v1, Lo/hY;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lo/MetadataReader;->b(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;ZZLo/ci;)V

    return-void
.end method

.method public e(IILo/ci;)V
    .locals 2

    .line 1110
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lo/MetadataReader;->c(IIZLo/ci;)V

    return-void
.end method

.method public e(ILo/ci;)V
    .locals 6

    .line 1326
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    add-int/lit8 v2, p1, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->b(IIZLjava/lang/String;Lo/ci;)V

    return-void
.end method

.method public e(IZZLo/ci;)V
    .locals 8

    .line 1345
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    add-int/lit8 v2, p1, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lo/MetadataReader;->b(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;ZZLo/ci;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V
    .locals 7

    .line 547
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/MetadataReader;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    return-void
.end method

.method e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 871
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;IILo/ci;)V
    .locals 1

    .line 739
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->b(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V
    .locals 6

    .line 561
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/MetadataReader;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    return-void
.end method

.method e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .line 1416
    iget-object v0, p0, Lo/hY;->i:Lo/FontRequest;

    invoke-virtual {v0, p1, p2}, Lo/FontRequest;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V
    .locals 2

    .line 925
    iget-object p2, p0, Lo/hY;->i:Lo/FontRequest;

    invoke-static {}, Lo/aey;->b()J

    move-result-wide v0

    invoke-virtual {p2, p1, p3, v0, v1}, Lo/FontRequest;->a(Ljava/lang/String;IJ)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V
    .locals 1

    .line 822
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MetadataReader;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 9

    .line 668
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lo/MetadataReader;->d(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 688
    invoke-virtual/range {v0 .. v6}, Lo/hY;->d(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method e(Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 806
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->b(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public e(Ljava/util/List;Lo/ci;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lo/MetadataReader;->b(Lo/ci;[Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 983
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/hY$14;

    invoke-direct {v1, p0}, Lo/hY$14;-><init>(Lo/hY;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method f(Ljava/lang/String;Lo/ci;)V
    .locals 1

    .line 917
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    invoke-virtual {v0, p1, p2}, Lo/MetadataReader;->e(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lo/ci;)V
    .locals 3

    .line 1126
    iget-object v0, p0, Lo/hY;->f:Lo/MetadataReader;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lo/MetadataReader;->b(Lo/ci;[Ljava/lang/String;)V

    return-void
.end method

.method public getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .line 227
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->a:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    iget-object v0, p0, Lo/hY;->i:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
