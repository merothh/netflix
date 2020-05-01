.class public final Lo/UV;
.super Lo/UN;
.source ""


# instance fields
.field private d:Lo/WU;


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

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 22
    invoke-direct/range {v1 .. v6}, Lo/UN;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;Z)V

    .line 33
    sget-object p2, Lo/es;->b:Lo/es$Application;

    invoke-virtual {p2}, Lo/es$Application;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    new-instance p2, Lo/WU;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p2, p1}, Lo/WU;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lo/UV;->d:Lo/WU;

    .line 35
    iget-object p1, p0, Lo/UV;->d:Lo/WU;

    if-eqz p1, :cond_0

    .line 36
    new-instance p2, Lo/VI;

    .line 38
    invoke-virtual {p0}, Lo/UV;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 36
    invoke-direct {p2, p1, p4, p3}, Lo/VI;-><init>(Lo/WU;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 41
    invoke-virtual {p0}, Lo/UV;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lo/WU;->w()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lo/Xc;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lo/UN;->a(Landroid/view/ViewGroup;)Lo/Xc;

    move-result-object p1

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    new-instance p1, Lo/WY;

    invoke-virtual {p0}, Lo/UV;->c()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lo/WY;-><init>(Landroid/view/ViewGroup;)V

    check-cast p1, Lo/Xc;

    :goto_1
    return-object p1
.end method

.method public b(Lo/Factory2;)V
    .locals 9

    const-string v0, "mainContainerConstraintSet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Lo/UN;->b(Lo/Factory2;)V

    .line 78
    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lo/UV;->d:Lo/WU;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lo/Factory2;->d(II)V

    .line 82
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 86
    invoke-virtual {p0}, Lo/UV;->c()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v1}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object v3, p1

    .line 81
    invoke-virtual/range {v3 .. v8}, Lo/Factory2;->b(IIIII)V

    .line 89
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 88
    invoke-virtual {p1, v1, v3, v2, v3}, Lo/Factory2;->e(IIII)V

    .line 95
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v0

    const/4 v1, 0x7

    .line 94
    invoke-virtual {p1, v0, v1, v2, v1}, Lo/Factory2;->e(IIII)V

    :cond_0
    return-void
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

    .line 60
    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lo/VN;

    .line 62
    invoke-virtual {p0}, Lo/UV;->o()Lo/Xc;

    move-result-object v1

    .line 61
    invoke-direct {v0, v1, p1, p2, p3}, Lo/VN;-><init>(Lo/Xc;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/UN;->e(Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    :goto_0
    return-void
.end method

.method public f(Landroid/view/ViewGroup;)Lo/WH;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lo/Xk;

    invoke-direct {v0, p1}, Lo/Xk;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/WH;

    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lo/UN;->f(Landroid/view/ViewGroup;)Lo/WH;

    move-result-object v0

    :goto_0
    return-object v0
.end method
