.class public abstract Lo/VibrationEffect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UpdateLock;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/UpdateLock<",
        "TUIE;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TUIE;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "TUIE;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/VibrationEffect;->e:Landroid/view/View;

    .line 9
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object p1

    const-string v0, "PublishSubject.create<UIE>().toSerialized()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/VibrationEffect;->b:Lio/reactivex/subjects/Subject;

    .line 12
    iget-object p1, p0, Lo/VibrationEffect;->b:Lio/reactivex/subjects/Subject;

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lo/VibrationEffect;->a:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUIE;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/VibrationEffect;->b:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public w()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TUIE;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/VibrationEffect;->a:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final y()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/VibrationEffect;->e:Landroid/view/View;

    return-object v0
.end method
