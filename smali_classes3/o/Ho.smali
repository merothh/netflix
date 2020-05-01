.class public abstract Lo/Ho;
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
.field private f:Ljava/lang/CharSequence;

.field private final h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 19
    new-instance v0, Lo/Ho$Activity;

    invoke-direct {v0, p0}, Lo/Ho$Activity;-><init>(Lo/Ho;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/Ho;->h:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/Ho;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 29
    sget v0, Lo/GS$FragmentManager;->h:I

    return v0
.end method

.method public b(Lo/Hz;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p1

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, v0}, Lo/GR;->c(Lo/TimeUnit;)V

    .line 35
    invoke-virtual {p1}, Lo/Hz;->d()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/Ho;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p1}, Lo/Hz;->d()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/Ho;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/Ho;->b(Lo/Hz;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/Ho;->b(Lo/Hz;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/Ho;->p()Lo/Hz;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected p()Lo/Hz;
    .locals 1

    .line 31
    new-instance v0, Lo/Hz;

    invoke-direct {v0}, Lo/Hz;-><init>()V

    return-object v0
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/Ho;->f:Ljava/lang/CharSequence;

    return-object v0
.end method
