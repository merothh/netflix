.class public Lo/QB$Activity;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/QB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lo/ImageSwitcher;

.field public c:Lo/ImageSwitcher;

.field public d:Lo/BaseAdapter;

.field public e:Lo/ImageSwitcher;

.field public f:Landroid/widget/CheckBox;

.field public g:Landroid/widget/ProgressBar;

.field public i:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field public j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo/ImageSwitcher;
    .locals 2

    .line 310
    iget-object v0, p0, Lo/QB$Activity;->c:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "infoView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b()Lo/BaseAdapter;
    .locals 2

    .line 312
    iget-object v0, p0, Lo/QB$Activity;->d:Lo/BaseAdapter;

    if-nez v0, :cond_0

    const-string v1, "boxShotView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lo/ImageSwitcher;
    .locals 2

    .line 309
    iget-object v0, p0, Lo/QB$Activity;->b:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "titleView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .line 308
    iget-object v0, p0, Lo/QB$Activity;->a:Landroid/view/View;

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

    .line 319
    iput-object p1, p0, Lo/QB$Activity;->a:Landroid/view/View;

    .line 320
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.title)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/QB$Activity;->b:Lo/ImageSwitcher;

    .line 321
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.info)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/QB$Activity;->c:Lo/ImageSwitcher;

    .line 322
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->si:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.status)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/QB$Activity;->e:Lo/ImageSwitcher;

    .line 323
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.box_shot)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/QB$Activity;->d:Lo/BaseAdapter;

    .line 324
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.progress)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/QB$Activity;->g:Landroid/widget/ProgressBar;

    .line 325
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.play_icon)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/QB$Activity;->j:Landroid/widget/ImageView;

    .line 326
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.download_button)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lo/QB$Activity;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 327
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ce:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.check_box)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lo/QB$Activity;->f:Landroid/widget/CheckBox;

    return-void
.end method

.method public final e()Lo/ImageSwitcher;
    .locals 2

    .line 311
    iget-object v0, p0, Lo/QB$Activity;->e:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "statusView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final f()Landroid/widget/CheckBox;
    .locals 2

    .line 316
    iget-object v0, p0, Lo/QB$Activity;->f:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const-string v1, "checkBoxView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final h()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 2

    .line 315
    iget-object v0, p0, Lo/QB$Activity;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v0, :cond_0

    const-string v1, "downloadButton"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final i()Landroid/widget/ImageView;
    .locals 2

    .line 314
    iget-object v0, p0, Lo/QB$Activity;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "playIcon"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final j()Landroid/widget/ProgressBar;
    .locals 2

    .line 313
    iget-object v0, p0, Lo/QB$Activity;->g:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBarView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
