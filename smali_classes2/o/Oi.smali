.class final Lo/Oi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;
.implements Lio/reactivex/functions/Cancellable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/Ob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/Ob;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Oi;->a:Ljava/lang/String;

    iput-object p2, p0, Lo/Oi;->b:Lio/reactivex/ObservableEmitter;

    .line 29
    iget-object p1, p0, Lo/Oi;->a:Ljava/lang/String;

    move-object p2, p0

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;

    invoke-static {p1, p2}, Lo/zq;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    .line 30
    iget-object p1, p0, Lo/Oi;->b:Lio/reactivex/ObservableEmitter;

    move-object p2, p0

    check-cast p2, Lio/reactivex/functions/Cancellable;

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)Lo/Ob;
    .locals 1

    .line 42
    sget-object v0, Lo/Oj;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 45
    sget-object p1, Lo/Ob$TaskDescription;->d:Lo/Ob$TaskDescription;

    check-cast p1, Lo/Ob;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 44
    :cond_1
    sget-object p1, Lo/Ob$Application;->b:Lo/Ob$Application;

    check-cast p1, Lo/Ob;

    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lo/Ob$Activity;->a:Lo/Ob$Activity;

    check-cast p1, Lo/Ob;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 34
    iget-object v0, p0, Lo/Oi;->a:Ljava/lang/String;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;

    invoke-static {v0, v1}, Lo/zq;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lo/Oi;->b:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0, p1}, Lo/Oi;->d(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)Lo/Ob;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
