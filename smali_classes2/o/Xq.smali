.class public Lo/Xq;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WK;


# instance fields
.field private final b:I

.field private c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private final d:Landroid/view/View;

.field public e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private final f:Lo/aka;

.field private final g:I

.field private final h:I

.field private final i:Landroid/view/ViewGroup;

.field private final j:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Xq;->i:Landroid/view/ViewGroup;

    .line 19
    iget-object p1, p0, Lo/Xq;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lo/Xq;->c(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/Xq;->d:Landroid/view/View;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vy:I

    iput p1, p0, Lo/Xq;->b:I

    .line 26
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uD:I

    iput p1, p0, Lo/Xq;->g:I

    .line 28
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->en:I

    iput p1, p0, Lo/Xq;->h:I

    .line 30
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoTopView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoTopView$2;-><init>(Lo/Xq;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xq;->j:Lo/aka;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;-><init>(Lo/Xq;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xq;->f:Lo/aka;

    return-void
.end method

.method private final s()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Xq;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final v()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Xq;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 50
    iget-object v0, p0, Lo/Xq;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lo/Xq;->v()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1, p1}, Lo/RemoteException;->c(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lo/Xq;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method

.method public b(ZZI)V
    .locals 4

    .line 66
    iget-object v0, p0, Lo/Xq;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v0, :cond_1

    .line 67
    iget-object v2, p0, Lo/Xq;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.videoview.NetflixVideoView"

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 70
    iget-object p1, p0, Lo/Xq;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->eg:I

    iget-object v3, p0, Lo/Xq;->d:Landroid/view/View;

    if-eqz v3, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    goto :goto_2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez p1, :cond_8

    .line 71
    sget-object p1, Lo/fd;->d:Lo/fd$StateListAnimator;

    invoke-virtual {p1}, Lo/fd$StateListAnimator;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 78
    :cond_5
    iget-object p1, p0, Lo/Xq;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lo/Xq;->t()I

    move-result p2

    iget-object v3, p0, Lo/Xq;->d:Landroid/view/View;

    if-eqz v3, :cond_7

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    goto :goto_2

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_8
    :goto_1
    iget-object p1, p0, Lo/Xq;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 74
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->eT:I

    .line 75
    iget-object v3, p0, Lo/Xq;->d:Landroid/view/View;

    if-eqz v3, :cond_b

    check-cast v3, Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {p1, p2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 69
    :goto_2
    iput-object p1, p0, Lo/Xq;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 80
    iget-object p1, p0, Lo/Xq;->d:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lo/Xq;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 81
    iget-object p1, p0, Lo/Xq;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lo/Xq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 84
    new-instance p1, Lo/UW$PictureInPictureParams;

    invoke-virtual {p0}, Lo/Xq;->o()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/UW$PictureInPictureParams;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    invoke-virtual {p0, p1}, Lo/Xq;->e(Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public c(I)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lo/Xq;->s()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1, p1}, Lo/RemoteException;->c(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/Xq;->o()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/Xq;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/Xq;->d:Landroid/view/View;

    return-object v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final k()I
    .locals 1

    .line 25
    iget v0, p0, Lo/Xq;->b:I

    return v0
.end method

.method public final n()I
    .locals 1

    .line 26
    iget v0, p0, Lo/Xq;->g:I

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 2

    .line 21
    iget-object v0, p0, Lo/Xq;->e:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-nez v0, :cond_0

    const-string v1, "uiView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 28
    iget v0, p0, Lo/Xq;->h:I

    return v0
.end method
