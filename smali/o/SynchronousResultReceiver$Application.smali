.class final Lo/SynchronousResultReceiver$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;->d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic c:Lo/SynchronousResultReceiver;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/SynchronousResultReceiver;Lio/reactivex/subjects/PublishSubject;Z)V
    .locals 0

    iput-object p1, p0, Lo/SynchronousResultReceiver$Application;->c:Lo/SynchronousResultReceiver;

    iput-object p2, p0, Lo/SynchronousResultReceiver$Application;->a:Lio/reactivex/subjects/PublishSubject;

    iput-boolean p3, p0, Lo/SynchronousResultReceiver$Application;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lo/SynchronousResultReceiver$Application;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lo/SynchronousResultReceiver$Application;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 295
    iget-boolean p1, p0, Lo/SynchronousResultReceiver$Application;->e:Z

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lo/SynchronousResultReceiver$Application;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {p1}, Lo/SynchronousResultReceiver;->dismiss()V

    :cond_0
    return-void
.end method
