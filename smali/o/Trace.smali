.class public abstract Lo/Trace;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Trace$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Trace$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I

.field private f:F

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lo/Trace;->f:F

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cD:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 21
    iput p1, p0, Lo/Trace;->b:I

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Trace;->c(Lo/Trace$TaskDescription;)V

    return-void
.end method

.method public c(Lo/Trace$TaskDescription;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lo/Trace$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lo/Trace;->f:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    invoke-virtual {p1}, Lo/Trace$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lo/Trace;->b:I

    iget v2, p0, Lo/Trace;->c:I

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 57
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    invoke-virtual {p1}, Lo/Trace$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Trace;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p1}, Lo/Trace$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 43
    invoke-virtual {p1}, Lo/Trace$TaskDescription;->e()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setClickable(Z)V

    .line 44
    invoke-virtual {p1}, Lo/Trace$TaskDescription;->e()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/Trace;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(F)V
    .locals 0

    .line 26
    iput p1, p0, Lo/Trace;->f:F

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/Trace;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/Trace;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Trace;->c(Lo/Trace$TaskDescription;)V

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/Trace;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()F
    .locals 1

    .line 26
    iget v0, p0, Lo/Trace;->f:F

    return v0
.end method

.method public final l()Landroid/view/View$OnClickListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Trace;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 21
    iget v0, p0, Lo/Trace;->b:I

    return v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/Trace;->p()Lo/Trace$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 24
    iget v0, p0, Lo/Trace;->c:I

    return v0
.end method

.method protected p()Lo/Trace$TaskDescription;
    .locals 1

    .line 33
    new-instance v0, Lo/Trace$TaskDescription;

    invoke-direct {v0}, Lo/Trace$TaskDescription;-><init>()V

    return-object v0
.end method
