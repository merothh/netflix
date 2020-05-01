.class public final Lo/UO;
.super Lo/UN;
.source ""


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MenuInflater;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lo/UK;",
            ")V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 36
    invoke-direct/range {v1 .. v6}, Lo/UN;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;Z)V

    .line 39
    new-instance v0, Lo/VG;

    .line 40
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Integer;

    .line 41
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->nj:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v6, 0x0

    aput-object p4, p1, v6

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->mX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x1

    aput-object p4, p1, v2

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object p1

    invoke-virtual {p1}, Lo/Xq;->w()Lio/reactivex/Observable;

    move-result-object v4

    move-object v5, p3

    .line 39
    invoke-direct/range {v0 .. v5}, Lo/VG;-><init>(Landroid/view/ViewGroup;Ljava/util/List;Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 46
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lo/VB;

    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object p4

    check-cast p4, Lo/Wv;

    invoke-direct {p1, p4, p2, p3}, Lo/VB;-><init>(Lo/Wv;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 48
    invoke-virtual {p0}, Lo/UO;->a()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object p2

    invoke-virtual {p2}, Lo/WQ;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    invoke-direct {p0, v6}, Lo/UO;->e(Z)V

    return-void
.end method

.method private final c(Lo/Factory2;)V
    .locals 11

    .line 74
    invoke-virtual {p0}, Lo/UO;->i()Lo/Xg;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xq;->k()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 75
    invoke-virtual {p0}, Lo/UO;->i()Lo/Xg;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xq;->n()I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 78
    invoke-virtual {p0}, Lo/UO;->g()Lo/WS;

    move-result-object v0

    invoke-virtual {v0}, Lo/WS;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 79
    invoke-virtual {p0}, Lo/UO;->g()Lo/WS;

    move-result-object v0

    invoke-virtual {v0}, Lo/WS;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 82
    invoke-virtual {p0}, Lo/UO;->j()Lo/Xn;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xn;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xq;->k()I

    move-result v4

    invoke-virtual {p1, v0, v2, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 83
    invoke-virtual {p0}, Lo/UO;->j()Lo/Xn;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xn;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xq;->n()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 85
    invoke-virtual {p0}, Lo/UO;->o()Lo/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 86
    invoke-virtual {p0}, Lo/UO;->o()Lo/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xq;->n()I

    move-result v4

    invoke-virtual {p1, v0, v2, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 89
    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xq;->n()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 90
    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v5

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 91
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 94
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xe;->a()I

    move-result v4

    invoke-virtual {p1, v0, v2, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 95
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xe;->a()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 96
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v7

    const/4 v8, 0x2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 97
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->P:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lo/UO;->s()Lo/Xf;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xf;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v4

    invoke-virtual {v4}, Lo/Xe;->a()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 104
    invoke-virtual {p0}, Lo/UO;->s()Lo/Xf;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xf;->a()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 105
    invoke-virtual {p0}, Lo/UO;->s()Lo/Xf;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xf;->a()I

    move-result v0

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 108
    invoke-virtual {p0}, Lo/UO;->t()Lo/Xd;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 109
    invoke-virtual {p0}, Lo/UO;->t()Lo/Xd;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xq;->k()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 110
    invoke-virtual {p0}, Lo/UO;->t()Lo/Xd;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 113
    invoke-virtual {p0}, Lo/UO;->r()Lo/WX;

    move-result-object v0

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 114
    invoke-virtual {p0}, Lo/UO;->r()Lo/WX;

    move-result-object v0

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xq;->k()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 115
    invoke-virtual {p0}, Lo/UO;->r()Lo/WX;

    move-result-object v0

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 117
    invoke-virtual {p0}, Lo/UO;->n()Lo/WJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 118
    invoke-virtual {p0}, Lo/UO;->n()Lo/WJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 120
    invoke-virtual {p0}, Lo/UO;->m()Lo/WO;

    move-result-object v0

    invoke-virtual {v0}, Lo/WO;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 121
    invoke-virtual {p0}, Lo/UO;->m()Lo/WO;

    move-result-object v0

    invoke-virtual {v0}, Lo/WO;->a()I

    move-result v0

    const/4 v5, 0x7

    invoke-virtual {p1, v0, v5, v1, v5}, Lo/Factory2;->e(IIII)V

    .line 123
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lo/Factory2;->d(II)V

    .line 124
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 125
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Lo/Factory2;->d(II)V

    .line 126
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v5}, Lo/Factory2;->d(II)V

    .line 127
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xq;->k()I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->P:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lo/Factory2;->b(IIIII)V

    .line 128
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lo/Factory2;->b(IIIII)V

    .line 129
    invoke-virtual {p0}, Lo/UO;->l()Lo/Xi;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v6

    const/4 v7, 0x7

    const/4 v9, 0x7

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lo/Factory2;->b(IIIII)V

    .line 131
    invoke-virtual {p0}, Lo/UO;->h()Lo/WP;

    move-result-object v0

    invoke-virtual {v0}, Lo/WP;->a()I

    move-result v6

    const/4 v7, 0x3

    const/4 v9, 0x3

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->P:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lo/Factory2;->b(IIIII)V

    .line 132
    invoke-virtual {p0}, Lo/UO;->h()Lo/WP;

    move-result-object v0

    invoke-virtual {v0}, Lo/WP;->a()I

    move-result v0

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    return-void
.end method

.method private final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lo/UO;->n()Lo/WJ;

    move-result-object p1

    invoke-virtual {p1}, Lo/WJ;->f()V

    .line 150
    invoke-virtual {p0}, Lo/UO;->m()Lo/WO;

    move-result-object p1

    invoke-virtual {p1}, Lo/WO;->i()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lo/UO;->n()Lo/WJ;

    move-result-object p1

    invoke-virtual {p1}, Lo/WJ;->j()V

    .line 153
    invoke-virtual {p0}, Lo/UO;->m()Lo/WO;

    move-result-object p1

    invoke-virtual {p1}, Lo/WO;->j()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lo/Xc;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lo/WZ;

    invoke-direct {v0, p1}, Lo/WZ;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/Xc;

    return-object v0
.end method

.method public a(Z)V
    .locals 2

    .line 55
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 56
    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lo/UO;->b(Lo/Factory2;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, v0}, Lo/UO;->c(Lo/Factory2;)V

    .line 66
    :goto_0
    invoke-direct {p0, p1}, Lo/UO;->e(Z)V

    .line 69
    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method public b(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lo/VX;

    invoke-virtual {p0}, Lo/UO;->f()Lo/Xq;

    move-result-object v1

    check-cast v1, Lo/WK;

    invoke-direct {v0, v1, p1, p2}, Lo/VX;-><init>(Lo/WK;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    return-void
.end method

.method public b(Lo/Factory2;)V
    .locals 7

    const-string v0, "constraintSet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-super {p0, p1}, Lo/UN;->b(Lo/Factory2;)V

    .line 138
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0}, Lo/UO;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/Factory2;->b(IIIII)V

    .line 141
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xe;->a()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 142
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UO;->k()Lo/Xe;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xe;->a()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 143
    invoke-virtual {p0}, Lo/UO;->p()Lo/WQ;

    move-result-object v0

    invoke-virtual {v0}, Lo/WQ;->a()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/Factory2;->b(IIIII)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)Lo/Xi;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lo/Xj;

    invoke-direct {v0, p1}, Lo/Xj;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/Xi;

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;)Lo/Xq;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lo/Xp;

    invoke-direct {v0, p1}, Lo/Xp;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/Xq;

    return-object v0
.end method

.method public e(Lo/WJ;Lio/reactivex/Observable;)Lo/Vx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WJ;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)",
            "Lo/Vx;"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lo/VA;

    invoke-direct {v0, p1, p2}, Lo/VA;-><init>(Lo/WJ;Lio/reactivex/Observable;)V

    check-cast v0, Lo/Vx;

    return-object v0
.end method

.method public e(Landroid/view/ViewGroup;)Lo/WQ;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lo/WQ;

    invoke-direct {v0, p1}, Lo/WQ;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public e(Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lo/UK;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lo/VP;

    invoke-virtual {p0}, Lo/UO;->o()Lo/Xc;

    move-result-object v1

    check-cast v1, Lo/WC;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/VP;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    return-void
.end method
