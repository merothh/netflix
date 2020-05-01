.class public abstract Lo/HF;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/Hz;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Z

.field private final g:Landroid/view/View$OnClickListener;

.field private h:Ljava/lang/String;

.field private j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 18
    new-instance v0, Lo/HF$Activity;

    invoke-direct {v0, p0}, Lo/HF$Activity;-><init>(Lo/HF;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/HF;->g:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo/HF;->f:Z

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 39
    sget v0, Lo/GS$FragmentManager;->k:I

    return v0
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/HF;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/HF;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HF;->e(Lo/Hz;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/HF;->f:Z

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HF;->e(Lo/Hz;)V

    return-void
.end method

.method public e(Lo/Hz;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p1

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, v0}, Lo/GR;->c(Lo/TimeUnit;)V

    .line 45
    invoke-virtual {p1}, Lo/Hz;->d()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/HF;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-boolean v0, p0, Lo/HF;->f:Z

    iget-object v1, p0, Lo/HF;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lo/HH;->b:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 49
    :goto_0
    sget v1, Lo/GS$Fragment;->k:I

    goto :goto_1

    .line 48
    :cond_1
    sget v1, Lo/GS$Fragment;->i:I

    goto :goto_1

    .line 47
    :cond_2
    sget v1, Lo/GS$Fragment;->j:I

    .line 46
    :goto_1
    invoke-virtual {p1, v0, v1}, Lo/Hz;->d(ZI)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/HF;->w()Lo/Hz;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/HF;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/HF;->f:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/HF;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected w()Lo/Hz;
    .locals 1

    .line 41
    new-instance v0, Lo/Hz;

    invoke-direct {v0}, Lo/Hz;-><init>()V

    return-object v0
.end method
