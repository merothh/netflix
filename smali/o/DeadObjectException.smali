.class public final Lo/DeadObjectException;
.super Lo/Broadcaster;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DeadObjectException$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/DeadObjectException$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DeadObjectException$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DeadObjectException$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/DeadObjectException;->b:Lo/DeadObjectException$Application;

    return-void
.end method

.method public constructor <init>(Lo/FileBridge;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBridge;",
            "Lio/reactivex/Observable<",
            "Lo/Build;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p1

    check-cast v0, Lo/UpdateLock;

    invoke-direct {p0, v0, p2}, Lo/Broadcaster;-><init>(Lo/UpdateLock;Lio/reactivex/Observable;)V

    .line 17
    new-instance v0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;

    invoke-direct {v0, p1}, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;-><init>(Lo/FileBridge;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
