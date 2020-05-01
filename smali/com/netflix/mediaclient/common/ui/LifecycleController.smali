.class public abstract Lcom/netflix/mediaclient/common/ui/LifecycleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/common/ui/LifecycleController$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ClassCircularityError;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/common/ui/LifecycleController$Activity;


# instance fields
.field private a:Z

.field private final b:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private h:Ljava/lang/Throwable;

.field private i:Ljava/lang/Throwable;

.field private final j:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/common/ui/LifecycleController$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/common/ui/LifecycleController$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->e:Lcom/netflix/mediaclient/common/ui/LifecycleController$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    const-string v0, "controllerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->j:Landroid/view/View;

    .line 43
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<T>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->c:Lio/reactivex/subjects/PublishSubject;

    .line 45
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->b:Lio/reactivex/subjects/PublishSubject;

    .line 47
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    const-string v0, "ReplaySubject.create<Unit>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->d:Lio/reactivex/subjects/ReplaySubject;

    .line 59
    iget-object p1, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->d:Lio/reactivex/subjects/ReplaySubject;

    move-object v0, p1

    check-cast v0, Lio/reactivex/Observable;

    .line 60
    new-instance p1, Lcom/netflix/mediaclient/common/ui/LifecycleController$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/common/ui/LifecycleController$1;-><init>(Lcom/netflix/mediaclient/common/ui/LifecycleController;)V

    move-object v2, p1

    check-cast v2, Lo/alB;

    .line 64
    new-instance p1, Lcom/netflix/mediaclient/common/ui/LifecycleController$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/common/ui/LifecycleController$2;-><init>(Lcom/netflix/mediaclient/common/ui/LifecycleController;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 59
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LifecycleController"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->b:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->c:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->a:Z

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleController"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->a:Z

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->h:Ljava/lang/Throwable;

    const-string v1, "controller already active (\'Caused by\' will tell you where it was last activated)"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->a:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeactivated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleController"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->a:Z

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->i:Ljava/lang/Throwable;

    const-string v1, "controller already inactive. (\'Caused by\' will tell you where it was last deactivated)"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected final l()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->b:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final m()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->c:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final n()Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->j:Landroid/view/View;

    return-object v0
.end method

.method public final o()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->d:Lio/reactivex/subjects/ReplaySubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 108
    iget-boolean v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->f:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleController"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->f:Z

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->d:Lio/reactivex/subjects/ReplaySubject;

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/common/ui/LifecycleController;->d:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject;->onComplete()V

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "controller already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
