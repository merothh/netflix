.class public final Lo/BeamShareData;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/ApduList;",
        "Lo/ValidationProbeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lo/NsdServiceInfo;


# direct methods
.method public constructor <init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NsdServiceInfo;",
            "Lio/reactivex/Observable<",
            "Lo/ApduList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 14
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/BeamShareData;->b:Lo/NsdServiceInfo;

    .line 18
    new-instance p1, Lcom/netflix/android/components/LoadingPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/android/components/LoadingPresenter$1;-><init>(Lo/BeamShareData;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 17
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic e(Lo/BeamShareData;)Lo/NsdServiceInfo;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/BeamShareData;->b:Lo/NsdServiceInfo;

    return-object p0
.end method
