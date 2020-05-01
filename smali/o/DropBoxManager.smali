.class public final Lo/DropBoxManager;
.super Lo/Broadcaster;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DropBoxManager$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/DropBoxManager$Activity;


# instance fields
.field private a:I

.field private b:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DropBoxManager$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DropBoxManager$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/DropBoxManager;->c:Lo/DropBoxManager$Activity;

    return-void
.end method

.method public constructor <init>(Lo/DeadSystemException;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DeadSystemException;",
            "Lio/reactivex/Observable<",
            "Lo/Build;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p1

    check-cast v0, Lo/UpdateLock;

    invoke-direct {p0, v0, p2}, Lo/Broadcaster;-><init>(Lo/UpdateLock;Lio/reactivex/Observable;)V

    .line 27
    new-instance v0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$1;-><init>(Lo/DropBoxManager;)V

    check-cast v0, Lo/alB;

    invoke-interface {p1, v0}, Lo/DeadSystemException;->a(Lo/alB;)V

    .line 30
    new-instance v0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;-><init>(Lo/DropBoxManager;Lo/DeadSystemException;)V

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

.method public static final synthetic a(Lo/DropBoxManager;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lo/DropBoxManager;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/DropBoxManager;)I
    .locals 0

    .line 12
    iget p0, p0, Lo/DropBoxManager;->a:I

    return p0
.end method

.method public static final synthetic e(Lo/DropBoxManager;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/DropBoxManager;->b:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic e(Lo/DropBoxManager;I)V
    .locals 0

    .line 12
    iput p1, p0, Lo/DropBoxManager;->a:I

    return-void
.end method
