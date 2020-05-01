.class public abstract Lo/HI;
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
.field private final f:Landroid/view/View$OnClickListener;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/GR;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lo/HI;->j:Z

    .line 19
    new-instance v0, Lo/HI$ActionBar;

    invoke-direct {v0, p0}, Lo/HI$ActionBar;-><init>(Lo/HI;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/HI;->f:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 25
    sget v0, Lo/GS$FragmentManager;->p:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lo/HI;->j:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HI;->e(Lo/Hz;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HI;->e(Lo/Hz;)V

    return-void
.end method

.method public e(Lo/Hz;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p1

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, v0}, Lo/GR;->c(Lo/TimeUnit;)V

    .line 31
    invoke-virtual {p1}, Lo/Hz;->d()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/HI;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-boolean v0, p0, Lo/HI;->j:Z

    sget v1, Lo/GS$Fragment;->o:I

    invoke-virtual {p1, v0, v1}, Lo/Hz;->d(ZI)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/HI;->p()Lo/Hz;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected p()Lo/Hz;
    .locals 1

    .line 27
    new-instance v0, Lo/Hz;

    invoke-direct {v0}, Lo/Hz;-><init>()V

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/HI;->j:Z

    return v0
.end method
