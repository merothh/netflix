.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VO;-><init>(Lo/WD;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/VO;


# direct methods
.method public constructor <init>(Lo/VO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->e()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    invoke-static {v0, p1}, Lo/VO;->e(Lo/VO;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 38
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {p1}, Lo/VO;->d(Lo/VO;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->W()Z

    move-result p1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {v0}, Lo/VO;->e(Lo/VO;)Lo/WD;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/WD;->e(Z)V

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {p1}, Lo/VO;->e(Lo/VO;)Lo/WD;

    move-result-object p1

    invoke-interface {p1}, Lo/WD;->b()V

    goto/16 :goto_1

    .line 43
    :cond_1
    instance-of v0, p1, Lo/UP$Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    check-cast p1, Lo/UP$Paint;

    invoke-virtual {p1}, Lo/UP$Paint;->a()I

    move-result v2

    invoke-virtual {p1}, Lo/UP$Paint;->b()I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lo/VO;->a(Lo/VO;IIZ)V

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {v0}, Lo/VO;->e(Lo/VO;)Lo/WD;

    move-result-object v0

    invoke-interface {v0}, Lo/WD;->f()V

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {v0, v1}, Lo/VO;->e(Lo/VO;Z)V

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-virtual {p1}, Lo/UP$Paint;->b()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lo/VO;->d(Lo/VO;J)V

    goto :goto_1

    .line 49
    :cond_2
    instance-of v0, p1, Lo/UP$Point;

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    .line 51
    check-cast p1, Lo/UP$Point;

    invoke-virtual {p1}, Lo/UP$Point;->d()I

    move-result v1

    .line 52
    invoke-virtual {p1}, Lo/UP$Point;->c()I

    move-result v2

    .line 53
    invoke-virtual {p1}, Lo/UP$Point;->b()Z

    move-result v3

    .line 50
    invoke-static {v0, v1, v2, v3}, Lo/VO;->a(Lo/VO;IIZ)V

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-virtual {p1}, Lo/UP$Point;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lo/VO;->e(Lo/VO;Z)V

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-virtual {p1}, Lo/UP$Point;->c()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lo/VO;->d(Lo/VO;J)V

    goto :goto_1

    .line 58
    :cond_3
    instance-of v0, p1, Lo/UP$Rect;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {p1}, Lo/VO;->e(Lo/VO;)Lo/WD;

    move-result-object p1

    invoke-interface {p1}, Lo/WD;->b()V

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    invoke-static {p1, v1}, Lo/VO;->e(Lo/VO;Z)V

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lo/VO;->d(Lo/VO;J)V

    goto :goto_1

    .line 64
    :cond_5
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_6

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->b:Lo/VO;

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->d()Z

    move-result p1

    invoke-static {v0, p1}, Lo/VO;->b(Lo/VO;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarBifPresenter$1;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
