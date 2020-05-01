.class public final Lo/WV;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Wx;


# instance fields
.field private final d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 12
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ev:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/WV;->d:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final h()V
    .locals 3

    .line 18
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->er:I

    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nR:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/WV$StateListAnimator;

    invoke-direct {v1, p0}, Lo/WV$StateListAnimator;-><init>(Lo/WV;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nY:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/WV$Application;

    invoke-direct {v1, p0}, Lo/WV$Application;-><init>(Lo/WV;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nX:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/WV$TaskDescription;

    invoke-direct {v1, p0}, Lo/WV$TaskDescription;-><init>(Lo/WV;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 40
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 10

    .line 33
    invoke-virtual {p0}, Lo/WV;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0}, Lo/WV;->h()V

    :cond_0
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v1, p0

    .line 36
    invoke-static/range {v1 .. v9}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 48
    sget-object v0, Lo/UU$PendingIntent;->a:Lo/UU$PendingIntent;

    invoke-virtual {p0, v0}, Lo/WV;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/WV;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 44
    sget-object v0, Lo/UW$LoaderManager;->c:Lo/UW$LoaderManager;

    invoke-virtual {p0, v0}, Lo/WV;->e(Ljava/lang/Object;)V

    return-void
.end method
