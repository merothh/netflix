.class public Lo/Xc;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WC;


# instance fields
.field private final b:Landroid/widget/Button;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/Button;

.field private final f:Landroid/widget/Button;

.field private g:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0, p1}, Lo/Xc;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/Xc;->d:Landroid/view/View;

    .line 20
    invoke-virtual {p0}, Lo/Xc;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->na:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.player_episodes_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lo/Xc;->b:Landroid/widget/Button;

    .line 22
    invoke-virtual {p0}, Lo/Xc;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mZ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.player_langSubs_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lo/Xc;->e:Landroid/widget/Button;

    .line 24
    invoke-virtual {p0}, Lo/Xc;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id\u2026ayer_next_episode_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lo/Xc;->f:Landroid/widget/Button;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/Button;

    .line 25
    invoke-virtual {p0}, Lo/Xc;->o()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lo/Xc;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Xc;->i:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lo/Xc;->o()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lo/Xc$1;

    invoke-direct {v0, p0}, Lo/Xc$1;-><init>(Lo/Xc;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lo/Xc;->e:Landroid/widget/Button;

    new-instance v0, Lo/Xc$2;

    invoke-direct {v0, p0}, Lo/Xc$2;-><init>(Lo/Xc;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lo/Xc;->f:Landroid/widget/Button;

    new-instance v0, Lo/Xc$4;

    invoke-direct {v0, p0}, Lo/Xc$4;-><init>(Lo/Xc;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final c(Landroid/widget/Button;)V
    .locals 5

    .line 111
    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "button.compoundDrawablesRelative"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 112
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 113
    aget-object v1, v0, v1

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private final e(Landroid/widget/Button;)V
    .locals 5

    .line 118
    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "button.compoundDrawablesRelative"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 119
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 120
    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lo/Xc;->i:Ljava/util/List;

    return-void
.end method

.method public b()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    .line 62
    invoke-static/range {v0 .. v7}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 39
    invoke-super {p0}, Lo/Xl;->c()V

    .line 40
    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 41
    iget-object v0, p0, Lo/Xc;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lo/Xc;->o()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public c(I)V
    .locals 6

    .line 82
    iput p1, p0, Lo/Xc;->g:I

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 96
    iget-object p1, p0, Lo/Xc;->i:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 157
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 97
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 99
    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    .line 100
    invoke-direct {p0, v2}, Lo/Xc;->e(Landroid/widget/Button;)V

    .line 101
    invoke-virtual {p0}, Lo/Xc;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aJ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 102
    check-cast v2, Landroid/view/View;

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 163
    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    iget-object p1, p0, Lo/Xc;->i:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 86
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    .line 89
    invoke-direct {p0, v2}, Lo/Xc;->c(Landroid/widget/Button;)V

    .line 90
    invoke-virtual {p0}, Lo/Xc;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aH:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 91
    invoke-virtual {p0}, Lo/Xc;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 92
    check-cast v2, Landroid/view/View;

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 154
    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 87
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/Xc;->d:Landroid/view/View;

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dS:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    .line 54
    invoke-static/range {v0 .. v7}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lo/Xc;->o()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 46
    invoke-super {p0}, Lo/Xl;->g()V

    .line 47
    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lo/Xc;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lo/Xc;->o()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lo/Xc;->o()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Landroid/widget/Button;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Xc;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public o()Landroid/widget/Button;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Xc;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public r()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    move-object v0, p0

    .line 58
    invoke-static/range {v0 .. v7}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()Landroid/widget/Button;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/Xc;->f:Landroid/widget/Button;

    return-object v0
.end method
