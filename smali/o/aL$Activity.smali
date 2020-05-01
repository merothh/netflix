.class public final Lo/aL$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/UnicodeScript;


# direct methods
.method public constructor <init>(Lo/UnicodeScript;)V
    .locals 0

    iput-object p1, p0, Lo/aL$Activity;->a:Lo/UnicodeScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lo/aL$Activity;->a:Lo/UnicodeScript;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "this.lifecycle"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lo/aL$Activity;->a:Lo/UnicodeScript;

    invoke-interface {v0}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$$special$$inlined$createDestroyObservable$1$1;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$$special$$inlined$createDestroyObservable$1$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    check-cast v1, Lo/ClassCircularityError;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    return-void

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 60
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
