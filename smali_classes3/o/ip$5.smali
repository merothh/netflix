.class Lo/ip$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ip;->d(Ljava/util/Collection;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lo/bY$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Collection;

.field final synthetic d:Lo/ip;


# direct methods
.method constructor <init>(Lo/ip;Ljava/util/Collection;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/ip$5;->d:Lo/ip;

    iput-object p2, p0, Lo/ip$5;->c:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lo/ip$5;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lo/ip$5;->d:Lo/ip;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lo/ip;->d(Lo/ip;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 126
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lo/ip$5;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 128
    invoke-virtual {p1, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addLanguage(Ljava/util/Locale;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object p1

    const-string v0, "NetflixModuleInstaller"

    const-string v1, "startLanguageInstallForeground"

    .line 131
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lo/ip$5;->d:Lo/ip;

    invoke-static {v0}, Lo/ip;->e(Lo/ip;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lo/ip$5$5;

    invoke-direct {v0, p0}, Lo/ip$5$5;-><init>(Lo/ip$5;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lo/ip$5$3;

    invoke-direct {v0, p0}, Lo/ip$5$3;-><init>(Lo/ip$5;)V

    .line 139
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
