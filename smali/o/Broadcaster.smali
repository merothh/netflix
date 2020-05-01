.class public Lo/Broadcaster;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/Build;",
        "Lo/CommonClock;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/aeA;


# direct methods
.method public constructor <init>(Lo/UpdateLock;Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UpdateLock<",
            "Lo/CommonClock;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/Build;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 11
    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    .line 13
    new-instance p1, Lo/aeA;

    invoke-direct {p1}, Lo/aeA;-><init>()V

    iput-object p1, p0, Lo/Broadcaster;->a:Lo/aeA;

    return-void
.end method


# virtual methods
.method protected final b()Lo/aeA;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Broadcaster;->a:Lo/aeA;

    return-object v0
.end method
