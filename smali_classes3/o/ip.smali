.class public Lo/ip;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bY;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ip;->e:Ljava/util/Map;

    .line 52
    new-instance v0, Lo/ip$2;

    invoke-direct {v0, p0}, Lo/ip$2;-><init>(Lo/ip;)V

    iput-object v0, p0, Lo/ip;->d:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    .line 100
    iput-object p1, p0, Lo/ip;->b:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object p1

    iput-object p1, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 102
    iget-object p1, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v0, p0, Lo/ip;->d:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    return-void
.end method

.method static synthetic a(Lo/ip;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/ip;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/ip;Ljava/lang/String;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/ip;->e(Ljava/lang/String;)Lio/reactivex/ObservableEmitter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/ip;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lo/ip;->d(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 197
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object v0

    const-string v1, "NetflixModuleInstaller"

    const-string v2, "SplitsManager startInstall"

    .line 201
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lo/ip$1;

    invoke-direct {v1, p0, p1}, Lo/ip$1;-><init>(Lo/ip;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lo/ip$3;

    invoke-direct {v1, p0, p1}, Lo/ip$3;-><init>(Lo/ip;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method static synthetic d(Lo/ip;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 43
    iput-object p1, p0, Lo/ip;->c:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private d(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 85
    iget-object p1, p0, Lo/ip;->b:Landroid/content/Context;

    invoke-static {p1}, Lo/adk;->n(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "NetflixModuleInstaller"

    const-string v2, "updateToNewContext got new context=%b"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CarrierIdentifier;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-18291"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private d(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lo/ip;->e:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Lo/ip;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Lio/reactivex/ObservableEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lo/ip;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableEmitter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic e(Lo/ip;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/ip;->d(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method


# virtual methods
.method public b(Lo/bY$TaskDescription;)Z
    .locals 8

    .line 176
    iget-object v0, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 177
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "NetflixModuleInstaller"

    const-string v5, "isModuleInstalled number of modules installed=%d"

    invoke-static {v3, v5, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v7, "installed moduleName=%s"

    .line 180
    invoke-static {v3, v7, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    invoke-virtual {p1}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bY$TaskDescription;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Lo/ip$4;

    invoke-direct {v0, p0, p1}, Lo/ip$4;-><init>(Lo/ip;Lo/bY$TaskDescription;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method c()Lio/reactivex/ObservableEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lo/ip;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->deferredLanguageInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public d(Ljava/util/Collection;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lo/ip$5;

    invoke-direct {v0, p0, p1}, Lo/ip$5;-><init>(Lo/ip;Ljava/util/Collection;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/bY$ActionBar;Landroid/app/Activity;I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {p1}, Lo/bY$ActionBar;->c()Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z

    return-void
.end method

.method public d(Lo/bY$TaskDescription;)V
    .locals 2

    .line 190
    invoke-virtual {p0, p1}, Lo/ip;->b(Lo/bY$TaskDescription;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NetflixModuleInstaller"

    const-string v1, "SplitsManager deferredInstall"

    .line 191
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-virtual {p1}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lo/ip;->a:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledLanguages()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method
