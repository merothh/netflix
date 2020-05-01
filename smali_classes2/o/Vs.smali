.class public Lo/Vs;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/UP;",
        "Lo/UU;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lio/reactivex/Observable;[Lo/WI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;[",
            "Lo/WI;",
            ")V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiPlayerView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    check-cast p2, [Lo/UpdateLock;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/UpdateLock;

    invoke-direct {p0, p1, p2}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    .line 28
    instance-of p2, p0, Lo/Wg;

    if-eqz p2, :cond_0

    .line 29
    move-object p2, p0

    check-cast p2, Lo/Wg;

    invoke-interface {p2, p1}, Lo/Wg;->d(Lio/reactivex/Observable;)V

    .line 31
    :cond_0
    instance-of p2, p0, Lo/Wd;

    if-eqz p2, :cond_1

    .line 32
    move-object p2, p0

    check-cast p2, Lo/Wd;

    invoke-interface {p2, p1}, Lo/Wd;->a(Lio/reactivex/Observable;)V

    .line 34
    :cond_1
    instance-of p2, p0, Lo/Wj;

    if-eqz p2, :cond_2

    .line 35
    move-object p2, p0

    check-cast p2, Lo/Wj;

    invoke-interface {p2, p1}, Lo/Wj;->e(Lio/reactivex/Observable;)V

    .line 37
    :cond_2
    instance-of p2, p0, Lo/Wh;

    if-eqz p2, :cond_3

    .line 38
    move-object p2, p0

    check-cast p2, Lo/Wh;

    invoke-interface {p2, p1}, Lo/Wh;->a(Lio/reactivex/Observable;)V

    .line 40
    :cond_3
    instance-of p2, p0, Lo/Wf;

    if-eqz p2, :cond_4

    .line 41
    move-object p2, p0

    check-cast p2, Lo/Wf;

    invoke-interface {p2, p1}, Lo/Wf;->a_(Lio/reactivex/Observable;)V

    .line 43
    :cond_4
    instance-of p2, p0, Lo/Wa;

    if-eqz p2, :cond_5

    .line 44
    move-object p2, p0

    check-cast p2, Lo/Wa;

    invoke-interface {p2, p1}, Lo/Wa;->b(Lio/reactivex/Observable;)V

    .line 46
    :cond_5
    instance-of p2, p0, Lo/Wi;

    if-eqz p2, :cond_6

    .line 47
    move-object p2, p0

    check-cast p2, Lo/Wi;

    invoke-interface {p2, p1}, Lo/Wi;->a(Lio/reactivex/Observable;)V

    .line 50
    :cond_6
    instance-of p2, p0, Lo/Wb;

    if-eqz p2, :cond_7

    .line 51
    move-object p2, p0

    check-cast p2, Lo/Wb;

    invoke-interface {p2, p1}, Lo/Wb;->g(Lio/reactivex/Observable;)V

    .line 54
    :cond_7
    instance-of p2, p0, Lo/Wk;

    if-eqz p2, :cond_8

    .line 55
    move-object p2, p0

    check-cast p2, Lo/Wk;

    invoke-interface {p2, p1}, Lo/Wk;->c(Lio/reactivex/Observable;)V

    :cond_8
    return-void
.end method
