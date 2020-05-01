.class public final Lo/VA;
.super Lo/Vx;
.source ""


# direct methods
.method public constructor <init>(Lo/WJ;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WJ;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lo/Vx;-><init>(Lo/WJ;Lio/reactivex/Observable;)V

    .line 15
    invoke-virtual {p1}, Lo/WJ;->e()V

    return-void
.end method
