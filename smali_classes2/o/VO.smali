.class public final Lo/VO;
.super Lo/VW;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VO$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/VO$ActionBar;


# instance fields
.field private a:J

.field private c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private final d:Lo/aeA;

.field private e:Z

.field private g:Z

.field private final i:Lo/WD;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VO$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VO$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/VO;->b:Lo/VO$ActionBar;

    return-void
.end method

.method public constructor <init>(Lo/WD;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WD;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VO;->i:Lo/WD;

    .line 19
    new-instance p1, Lo/aeA;

    invoke-direct {p1}, Lo/aeA;-><init>()V

    iput-object p1, p0, Lo/VO;->d:Lo/aeA;

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lo/VO;->a:J

    .line 34
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;-><init>(Lo/VO;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 33
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/VO;IIZ)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lo/VO;->c(IIZ)V

    return-void
.end method

.method private final a()Z
    .locals 1

    .line 108
    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lo/VO;->g:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final synthetic b(Lo/VO;Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lo/VO;->g:Z

    return-void
.end method

.method private final c(IIZ)V
    .locals 2

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateInformation, currentProgress is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " xPositionFromProgress is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PlayerSeekbarBifPresenter"

    .line 77
    invoke-static {v0, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p3, p0, Lo/VO;->i:Lo/WD;

    .line 83
    iget-object v0, p0, Lo/VO;->d:Lo/aeA;

    invoke-virtual {v0, p1}, Lo/aeA;->e(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeLineFormatterHelper.\u2026ingForMs(currentProgress)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p3, v0, p2}, Lo/WD;->e(Ljava/lang/String;I)V

    .line 91
    invoke-direct {p0}, Lo/VO;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 92
    iget-object p3, p0, Lo/VO;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p3, :cond_0

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p3, 0x1

    .line 95
    iget-object v0, p0, Lo/VO;->i:Lo/WD;

    invoke-interface {v0, p1, p2}, Lo/WD;->b(Ljava/nio/ByteBuffer;I)V

    .line 96
    iget-object p1, p0, Lo/VO;->i:Lo/WD;

    invoke-interface {p1}, Lo/WD;->h()Z

    move-result p1

    if-nez p1, :cond_2

    .line 97
    iget-object p1, p0, Lo/VO;->i:Lo/WD;

    invoke-interface {p1}, Lo/WD;->i()V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 102
    iget-object p1, p0, Lo/VO;->i:Lo/WD;

    invoke-interface {p1}, Lo/WD;->j()V

    :cond_3
    return-void
.end method

.method public static final synthetic d(Lo/VO;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/VO;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object p0
.end method

.method public static final synthetic d(Lo/VO;J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lo/VO;->a:J

    return-void
.end method

.method public static final synthetic e(Lo/VO;)Lo/WD;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/VO;->i:Lo/WD;

    return-object p0
.end method

.method public static final synthetic e(Lo/VO;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lo/VO;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method

.method public static final synthetic e(Lo/VO;Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lo/VO;->e:Z

    return-void
.end method
