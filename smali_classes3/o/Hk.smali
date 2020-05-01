.class public abstract Lo/Hk;
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
.field private g:Z

.field private final j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/GR;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lo/Hk;->g:Z

    .line 18
    new-instance v0, Lo/Hk$Application;

    invoke-direct {v0, p0}, Lo/Hk$Application;-><init>(Lo/Hk;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/Hk;->j:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 31
    sget v0, Lo/GS$FragmentManager;->f:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/Hk;->d(Lo/Hz;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/Hk;->d(Lo/Hz;)V

    return-void
.end method

.method public d(Lo/Hz;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p1

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, v0}, Lo/GR;->c(Lo/TimeUnit;)V

    .line 37
    invoke-virtual {p1}, Lo/Hz;->d()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/Hk;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-boolean v0, p0, Lo/Hk;->g:Z

    sget v1, Lo/GS$Fragment;->o:I

    invoke-virtual {p1, v0, v1}, Lo/Hz;->d(ZI)V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lo/Hk;->g:Z

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lo/Hk;->p()Lo/Hz;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected p()Lo/Hz;
    .locals 1

    .line 33
    new-instance v0, Lo/Hz;

    invoke-direct {v0}, Lo/Hz;-><init>()V

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/Hk;->g:Z

    return v0
.end method
