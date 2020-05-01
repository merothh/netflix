.class public final Lo/Qy$StateListAnimator;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Qy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field public a:Lo/ImageSwitcher;

.field public b:Lo/BaseAdapter;

.field public c:Lo/ImageSwitcher;

.field public d:Landroid/view/View;

.field public e:Lo/ImageSwitcher;

.field public f:Landroid/widget/CheckBox;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo/ImageSwitcher;
    .locals 2

    .line 92
    iget-object v0, p0, Lo/Qy$StateListAnimator;->e:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "statusView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b()Lo/BaseAdapter;
    .locals 2

    .line 93
    iget-object v0, p0, Lo/Qy$StateListAnimator;->b:Lo/BaseAdapter;

    if-nez v0, :cond_0

    const-string v1, "boxShotView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lo/ImageSwitcher;
    .locals 2

    .line 91
    iget-object v0, p0, Lo/Qy$StateListAnimator;->c:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "infoView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .line 89
    iget-object v0, p0, Lo/Qy$StateListAnimator;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "baseView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lo/Qy$StateListAnimator;->d:Landroid/view/View;

    .line 100
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.title)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/Qy$StateListAnimator;->a:Lo/ImageSwitcher;

    .line 101
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.info)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/Qy$StateListAnimator;->c:Lo/ImageSwitcher;

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->si:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.status)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/Qy$StateListAnimator;->e:Lo/ImageSwitcher;

    .line 103
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.box_shot)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Qy$StateListAnimator;->b:Lo/BaseAdapter;

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ce:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.check_box)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lo/Qy$StateListAnimator;->f:Landroid/widget/CheckBox;

    .line 105
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.error_indicator)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/Qy$StateListAnimator;->i:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.show_indicator)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/Qy$StateListAnimator;->j:Landroid/widget/ImageView;

    return-void
.end method

.method public final e()Lo/ImageSwitcher;
    .locals 2

    .line 90
    iget-object v0, p0, Lo/Qy$StateListAnimator;->a:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "titleView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final f()Landroid/widget/ImageView;
    .locals 2

    .line 95
    iget-object v0, p0, Lo/Qy$StateListAnimator;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "errorIndicatorView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final g()Landroid/widget/CheckBox;
    .locals 2

    .line 94
    iget-object v0, p0, Lo/Qy$StateListAnimator;->f:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const-string v1, "checkBoxView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final i()Landroid/widget/ImageView;
    .locals 2

    .line 96
    iget-object v0, p0, Lo/Qy$StateListAnimator;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "caret"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
