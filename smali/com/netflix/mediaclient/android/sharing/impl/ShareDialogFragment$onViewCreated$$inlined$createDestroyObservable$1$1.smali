.class public final Lcom/netflix/mediaclient/android/sharing/impl/ShareDialogFragment$onViewCreated$$inlined$createDestroyObservable$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsListView$ActionBar;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareDialogFragment$onViewCreated$$inlined$createDestroyObservable$1$1;->a:Lio/reactivex/ObservableEmitter;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emitDestroy()V
    .locals 2
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareDialogFragment$onViewCreated$$inlined$createDestroyObservable$1$1;->a:Lio/reactivex/ObservableEmitter;

    const-string v1, "emitter"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareDialogFragment$onViewCreated$$inlined$createDestroyObservable$1$1;->a:Lio/reactivex/ObservableEmitter;

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareDialogFragment$onViewCreated$$inlined$createDestroyObservable$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
