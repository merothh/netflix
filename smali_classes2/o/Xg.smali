.class public final Lo/Xg;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xg$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/Xg$ActionBar;


# instance fields
.field private final c:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/aka;

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xg$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xg$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xg;->b:Lo/Xg$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 13
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dY:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xg;->e:Landroid/view/ViewGroup;

    .line 20
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.empty()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Xg;->c:Lio/reactivex/Observable;

    .line 22
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSubtitlesUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSubtitlesUIView$containerId$2;-><init>(Lo/Xg;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xg;->d:Lo/aka;

    return-void

    .line 13
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()V
    .locals 3

    .line 43
    sget-object v0, Lo/Xg;->b:Lo/Xg$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 45
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 47
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 48
    new-instance v1, Lo/Xg$TaskDescription;

    invoke-direct {v1, p0}, Lo/Xg$TaskDescription;-><init>(Lo/Xg;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x384

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Xg;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .line 68
    sget-object v0, Lo/Xg;->b:Lo/Xg$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 69
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 71
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 69
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 1

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleDisplayArea(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 25
    sget-object v0, Lo/Xg;->b:Lo/Xg$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 26
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 30
    sget-object v0, Lo/Xg;->b:Lo/Xg$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 31
    invoke-virtual {p0}, Lo/Xg;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Xg;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 59
    sget-object v0, Lo/Xg;->b:Lo/Xg$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 60
    invoke-direct {p0}, Lo/Xg;->f()V

    return-void
.end method

.method public w()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/Xg;->c:Lio/reactivex/Observable;

    return-object v0
.end method
