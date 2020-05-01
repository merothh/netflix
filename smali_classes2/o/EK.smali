.class public final Lo/EK;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/DC;",
        "Lo/DG;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/Fs;


# direct methods
.method public constructor <init>(Lo/Fs;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Fs;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 15
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/EK;->a:Lo/Fs;

    .line 20
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;-><init>(Lo/EK;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 48
    sget-object p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$2;->d:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    .line 19
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 1

    .line 55
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object p1, p0, Lo/EK;->a:Lo/Fs;

    invoke-virtual {p1}, Lo/Fs;->h()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lo/EK;->a:Lo/Fs;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Lo/Fs;->c(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lo/EK;)Lo/Fs;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/EK;->a:Lo/Fs;

    return-object p0
.end method

.method public static final synthetic d(Lo/EK;Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lo/EK;->a(Ljava/lang/String;I)V

    return-void
.end method
