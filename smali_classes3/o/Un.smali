.class public Lo/Un;
.super Lo/Ur;
.source ""


# instance fields
.field protected a:Landroid/widget/Button;

.field protected c:Landroid/widget/Button;

.field protected d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

.field protected e:I

.field private g:Z

.field private j:Lo/Uh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lo/Un;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lo/Un;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lo/Un;->g:Z

    return-void
.end method

.method static synthetic c(Lo/Un;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lo/Un;->g:Z

    return p1
.end method


# virtual methods
.method public a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 8

    .line 103
    iput-object p1, p0, Lo/Un;->b:Lo/Uq;

    .line 104
    iput-object p3, p0, Lo/Un;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 105
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 106
    new-instance p5, Lo/Uh;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v3

    iget-object v5, p0, Lo/Un;->c:Landroid/widget/Button;

    move-object v0, p5

    move-object v1, p6

    move-object v2, p3

    move-object v4, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lo/Uh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V

    iput-object p5, p0, Lo/Un;->j:Lo/Uh;

    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 91
    iput p1, p0, Lo/Un;->e:I

    .line 92
    invoke-virtual {p0}, Lo/Un;->i()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vE:I

    invoke-virtual {p0, v0}, Lo/Un;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/Un;->a:Landroid/widget/Button;

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nJ:I

    invoke-virtual {p0, v0}, Lo/Un;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/Un;->c:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lo/Un;->a:Landroid/widget/Button;

    new-instance v1, Lo/Un$3;

    invoke-direct {v1, p0}, Lo/Un$3;-><init>(Lo/Un;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 85
    iput p1, p0, Lo/Un;->e:I

    .line 86
    invoke-virtual {p0}, Lo/Un;->i()V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/Un;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected f()V
    .locals 2

    .line 115
    iget-object v0, p0, Lo/Un;->j:Lo/Uh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Uh;->c(Z)V

    return-void
.end method

.method protected i()V
    .locals 2

    .line 50
    iget v0, p0, Lo/Un;->e:I

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lo/Un;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 52
    iget-object v0, p0, Lo/Un;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 53
    iget-boolean v0, p0, Lo/Un;->g:Z

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lo/Un;->f()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lo/Un;->a:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 58
    iget-object v0, p0, Lo/Un;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 59
    invoke-virtual {p0}, Lo/Un;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected j()V
    .locals 6

    .line 111
    iget-object v0, p0, Lo/Un;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lo/Un;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->je:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lo/Un;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
