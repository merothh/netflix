.class public Lo/Uk;
.super Lo/Ur;
.source ""


# instance fields
.field c:Lo/Uo;

.field d:Lo/Uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lo/Ur;->a(I)V

    .line 43
    iget-object p1, p0, Lo/Uk;->c:Lo/Uo;

    invoke-virtual {p1}, Lo/Uo;->b()V

    return-void
.end method

.method public a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 8

    .line 32
    iput-object p1, p0, Lo/Uk;->b:Lo/Uq;

    .line 34
    iget-object v0, p0, Lo/Uk;->d:Lo/Uj;

    iget-object v1, p0, Lo/Uk;->b:Lo/Uq;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/Uj;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 36
    iget-object v2, p0, Lo/Uk;->c:Lo/Uo;

    iget-object v3, p0, Lo/Uk;->b:Lo/Uq;

    move-object v4, p2

    move-object v5, p6

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lo/Uo;->b(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    return-void
.end method

.method aj_()V
    .locals 1

    .line 49
    invoke-super {p0}, Lo/Ur;->aj_()V

    .line 50
    iget-object v0, p0, Lo/Uk;->c:Lo/Uo;

    invoke-virtual {v0}, Lo/Uo;->i()V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/Uk;->d:Lo/Uj;

    invoke-virtual {v0}, Lo/Uj;->b()V

    .line 76
    iget-object v0, p0, Lo/Uk;->c:Lo/Uo;

    invoke-virtual {v0}, Lo/Uo;->j()V

    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 55
    iget-object p1, p0, Lo/Uk;->c:Lo/Uo;

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lo/Uo;->a()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/Uk;->d:Lo/Uj;

    invoke-virtual {v0}, Lo/Uj;->a()V

    .line 70
    iget-object v0, p0, Lo/Uk;->c:Lo/Uo;

    invoke-virtual {v0}, Lo/Uo;->g()V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nx:I

    invoke-virtual {p0, v0}, Lo/Uk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Uj;

    iput-object v0, p0, Lo/Uk;->d:Lo/Uj;

    .line 24
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nD:I

    invoke-virtual {p0, v0}, Lo/Uk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Uo;

    iput-object v0, p0, Lo/Uk;->c:Lo/Uo;

    return-void
.end method

.method protected e()V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/Uk;->c:Lo/Uo;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lo/Uo;->d()V

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/Uk;->d:Lo/Uj;

    invoke-virtual {v0}, Lo/Uj;->h()V

    .line 83
    iget-object v0, p0, Lo/Uk;->c:Lo/Uo;

    invoke-virtual {v0}, Lo/Uo;->f()V

    return-void
.end method
