.class public final Lo/WU;
.super Lo/Xl;
.source ""


# instance fields
.field private final b:Landroid/view/View;

.field private c:Z

.field private final d:Landroid/widget/ImageButton;

.field private final e:Lo/HorizontalScrollView;

.field private f:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 19
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->ei:I

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lo/WU;->b:Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->jG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "uiView.findViewById(R.id.lock_button)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lo/WU;->d:Landroid/widget/ImageButton;

    .line 24
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->tZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "uiView.findViewById(R.id.unlock_button)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/WU;->e:Lo/HorizontalScrollView;

    .line 29
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Lo/WU;->d:Landroid/widget/ImageButton;

    new-instance v0, Lo/WU$1;

    invoke-direct {v0, p0}, Lo/WU$1;-><init>(Lo/WU;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 18
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/WU;)Lo/HorizontalScrollView;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/WU;->e:Lo/HorizontalScrollView;

    return-object p0
.end method

.method public static final synthetic b(Lo/WU;)Landroid/widget/ImageButton;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/WU;->d:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static final synthetic b(Lo/WU;Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lo/WU;->c:Z

    return-void
.end method

.method public static final synthetic e(Lo/WU;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lo/WU;->c:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 10

    .line 72
    iget-boolean v0, p0, Lo/WU;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lo/WU;->h:Z

    .line 76
    iget-boolean v1, p0, Lo/WU;->c:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lo/WU;->e:Lo/HorizontalScrollView;

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lo/WU;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lo/WU;->e:Lo/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lo/WU;->e:Lo/HorizontalScrollView;

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lo/WU;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 84
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;-><init>(Lo/WU;)V

    move-object v7, v1

    check-cast v7, Lo/alB;

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lo/WU;->f:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 92
    :goto_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 90
    :goto_3
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(IIII)V

    :cond_5
    return-void
.end method

.method public c()V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lo/WU;->q()Lo/TA;

    move-result-object v0

    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/TA;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/WU;->b:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 10

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lo/WU;->h:Z

    .line 59
    iget-object v0, p0, Lo/WU;->e:Lo/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lo/WU;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 61
    iput-boolean v1, p0, Lo/WU;->c:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p0

    .line 62
    invoke-static/range {v2 .. v9}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lo/WU;->f:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 66
    :goto_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v1, v4, Landroid/graphics/Rect;->right:I

    :cond_2
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 64
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(IIII)V

    :cond_3
    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/WU;->f:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method

.method public g()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lo/WU;->q()Lo/TA;

    move-result-object v0

    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/TA;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/WU;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
