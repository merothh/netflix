.class public final Lo/BackupDataInputStream;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/PipModeChangeItem;

.field private b:Lo/TimeSparseArray;

.field private c:Lo/RulesManager;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/BackupDataInput<",
            "**>;>;"
        }
    .end annotation
.end field

.field private e:Lo/RulesUpdaterContract;

.field private f:Lo/AppWidgetManagerInternal;

.field private g:Lo/StorageStatsManager$Application;

.field private h:Lo/AppWidgetManagerInternal;

.field private i:Lo/AppWidgetHost;

.field private j:Lo/BluetoothLeDeviceFilter;

.field private k:Lo/ContentProviderOperation$StateListAnimator;

.field private l:Z

.field private m:I

.field private n:Lo/SearchRecentSuggestionsProvider;

.field private o:Lo/AppWidgetManagerInternal;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    iput-object v0, p0, Lo/BackupDataInputStream;->d:Ljava/util/Map;

    const/4 v0, 0x4

    .line 50
    iput v0, p0, Lo/BackupDataInputStream;->m:I

    .line 51
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    iput-object v0, p0, Lo/BackupDataInputStream;->n:Lo/SearchRecentSuggestionsProvider;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 14

    .line 438
    iget-object v0, p0, Lo/BackupDataInputStream;->h:Lo/AppWidgetManagerInternal;

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lo/AppWidgetManagerInternal;->e()Lo/AppWidgetManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInputStream;->h:Lo/AppWidgetManagerInternal;

    .line 442
    :cond_0
    iget-object v0, p0, Lo/BackupDataInputStream;->f:Lo/AppWidgetManagerInternal;

    if-nez v0, :cond_1

    .line 443
    invoke-static {}, Lo/AppWidgetManagerInternal;->c()Lo/AppWidgetManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInputStream;->f:Lo/AppWidgetManagerInternal;

    .line 446
    :cond_1
    iget-object v0, p0, Lo/BackupDataInputStream;->o:Lo/AppWidgetManagerInternal;

    if-nez v0, :cond_2

    .line 447
    invoke-static {}, Lo/AppWidgetManagerInternal;->d()Lo/AppWidgetManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInputStream;->o:Lo/AppWidgetManagerInternal;

    .line 450
    :cond_2
    iget-object v0, p0, Lo/BackupDataInputStream;->i:Lo/AppWidgetHost;

    if-nez v0, :cond_3

    .line 451
    new-instance v0, Lo/AppWidgetHost$Application;

    invoke-direct {v0, p1}, Lo/AppWidgetHost$Application;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/AppWidgetHost$Application;->c()Lo/AppWidgetHost;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInputStream;->i:Lo/AppWidgetHost;

    .line 454
    :cond_3
    iget-object v0, p0, Lo/BackupDataInputStream;->j:Lo/BluetoothLeDeviceFilter;

    if-nez v0, :cond_4

    .line 455
    new-instance v0, Lo/CompanionDeviceManager;

    invoke-direct {v0}, Lo/CompanionDeviceManager;-><init>()V

    iput-object v0, p0, Lo/BackupDataInputStream;->j:Lo/BluetoothLeDeviceFilter;

    .line 458
    :cond_4
    iget-object v0, p0, Lo/BackupDataInputStream;->e:Lo/RulesUpdaterContract;

    if-nez v0, :cond_6

    .line 459
    iget-object v0, p0, Lo/BackupDataInputStream;->i:Lo/AppWidgetHost;

    invoke-virtual {v0}, Lo/AppWidgetHost;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 461
    new-instance v1, Lo/EventStats;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lo/EventStats;-><init>(J)V

    iput-object v1, p0, Lo/BackupDataInputStream;->e:Lo/RulesUpdaterContract;

    goto :goto_0

    .line 463
    :cond_5
    new-instance v0, Lo/RulesState;

    invoke-direct {v0}, Lo/RulesState;-><init>()V

    iput-object v0, p0, Lo/BackupDataInputStream;->e:Lo/RulesUpdaterContract;

    .line 467
    :cond_6
    :goto_0
    iget-object v0, p0, Lo/BackupDataInputStream;->c:Lo/RulesManager;

    if-nez v0, :cond_7

    .line 468
    new-instance v0, Lo/ConfigurationStats;

    iget-object v1, p0, Lo/BackupDataInputStream;->i:Lo/AppWidgetHost;

    invoke-virtual {v1}, Lo/AppWidgetHost;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lo/ConfigurationStats;-><init>(I)V

    iput-object v0, p0, Lo/BackupDataInputStream;->c:Lo/RulesManager;

    .line 471
    :cond_7
    iget-object v0, p0, Lo/BackupDataInputStream;->b:Lo/TimeSparseArray;

    if-nez v0, :cond_8

    .line 472
    new-instance v0, Lo/UsageStatsManagerInternal;

    iget-object v1, p0, Lo/BackupDataInputStream;->i:Lo/AppWidgetHost;

    invoke-virtual {v1}, Lo/AppWidgetHost;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lo/UsageStatsManagerInternal;-><init>(J)V

    iput-object v0, p0, Lo/BackupDataInputStream;->b:Lo/TimeSparseArray;

    .line 475
    :cond_8
    iget-object v0, p0, Lo/BackupDataInputStream;->g:Lo/StorageStatsManager$Application;

    if-nez v0, :cond_9

    .line 476
    new-instance v0, Lo/UsageStats;

    invoke-direct {v0, p1}, Lo/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/BackupDataInputStream;->g:Lo/StorageStatsManager$Application;

    .line 479
    :cond_9
    iget-object v0, p0, Lo/BackupDataInputStream;->a:Lo/PipModeChangeItem;

    if-nez v0, :cond_a

    .line 480
    new-instance v0, Lo/PipModeChangeItem;

    iget-object v2, p0, Lo/BackupDataInputStream;->b:Lo/TimeSparseArray;

    iget-object v3, p0, Lo/BackupDataInputStream;->g:Lo/StorageStatsManager$Application;

    iget-object v4, p0, Lo/BackupDataInputStream;->f:Lo/AppWidgetManagerInternal;

    iget-object v5, p0, Lo/BackupDataInputStream;->h:Lo/AppWidgetManagerInternal;

    .line 486
    invoke-static {}, Lo/AppWidgetManagerInternal;->b()Lo/AppWidgetManagerInternal;

    move-result-object v6

    .line 487
    invoke-static {}, Lo/AppWidgetManagerInternal;->d()Lo/AppWidgetManagerInternal;

    move-result-object v7

    iget-boolean v8, p0, Lo/BackupDataInputStream;->l:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lo/PipModeChangeItem;-><init>(Lo/TimeSparseArray;Lo/StorageStatsManager$Application;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Z)V

    iput-object v0, p0, Lo/BackupDataInputStream;->a:Lo/PipModeChangeItem;

    .line 491
    :cond_a
    iget-object v0, p0, Lo/BackupDataInputStream;->p:Ljava/util/List;

    if-nez v0, :cond_b

    .line 492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInputStream;->p:Ljava/util/List;

    goto :goto_1

    .line 494
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInputStream;->p:Ljava/util/List;

    .line 497
    :goto_1
    new-instance v7, Lo/ContentProviderOperation;

    iget-object v0, p0, Lo/BackupDataInputStream;->k:Lo/ContentProviderOperation$StateListAnimator;

    invoke-direct {v7, v0}, Lo/ContentProviderOperation;-><init>(Lo/ContentProviderOperation$StateListAnimator;)V

    .line 500
    new-instance v0, Lcom/bumptech/glide/Glide;

    iget-object v3, p0, Lo/BackupDataInputStream;->a:Lo/PipModeChangeItem;

    iget-object v4, p0, Lo/BackupDataInputStream;->b:Lo/TimeSparseArray;

    iget-object v5, p0, Lo/BackupDataInputStream;->e:Lo/RulesUpdaterContract;

    iget-object v6, p0, Lo/BackupDataInputStream;->c:Lo/RulesManager;

    iget-object v8, p0, Lo/BackupDataInputStream;->j:Lo/BluetoothLeDeviceFilter;

    iget v9, p0, Lo/BackupDataInputStream;->m:I

    iget-object v1, p0, Lo/BackupDataInputStream;->n:Lo/SearchRecentSuggestionsProvider;

    .line 509
    invoke-virtual {v1}, Lo/SearchRecentSuggestionsProvider;->h()Lo/PeriodicSync;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lo/SearchRecentSuggestionsProvider;

    iget-object v11, p0, Lo/BackupDataInputStream;->d:Ljava/util/Map;

    iget-object v12, p0, Lo/BackupDataInputStream;->p:Ljava/util/List;

    iget-boolean v13, p0, Lo/BackupDataInputStream;->t:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lo/PipModeChangeItem;Lo/TimeSparseArray;Lo/RulesUpdaterContract;Lo/RulesManager;Lo/ContentProviderOperation;Lo/BluetoothLeDeviceFilter;ILo/SearchRecentSuggestionsProvider;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public b(Lo/SearchRecentSuggestionsProvider;)Lo/BackupDataInputStream;
    .locals 0

    .line 217
    iput-object p1, p0, Lo/BackupDataInputStream;->n:Lo/SearchRecentSuggestionsProvider;

    return-object p0
.end method

.method public b(Lo/StorageStatsManager$Application;)Lo/BackupDataInputStream;
    .locals 0

    .line 113
    iput-object p1, p0, Lo/BackupDataInputStream;->g:Lo/StorageStatsManager$Application;

    return-object p0
.end method

.method public d(Lo/TimeSparseArray;)Lo/BackupDataInputStream;
    .locals 0

    .line 97
    iput-object p1, p0, Lo/BackupDataInputStream;->b:Lo/TimeSparseArray;

    return-object p0
.end method

.method public d(Lo/ContentProviderOperation$StateListAnimator;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lo/BackupDataInputStream;->k:Lo/ContentProviderOperation$StateListAnimator;

    return-void
.end method

.method public e(Lo/RulesUpdaterContract;)Lo/BackupDataInputStream;
    .locals 0

    .line 69
    iput-object p1, p0, Lo/BackupDataInputStream;->e:Lo/RulesUpdaterContract;

    return-object p0
.end method
