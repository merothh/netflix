.class public abstract Lo/Sv;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sv$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Sv$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lo/Sv;->g:Z

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .line 25
    iput p1, p0, Lo/Sv;->b:F

    return-void
.end method

.method protected b()I
    .locals 1

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->au:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lo/Sv;->g:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Sv;->e(Lo/Sv$TaskDescription;)V

    return-void
.end method

.method public final c_(F)V
    .locals 0

    .line 21
    iput p1, p0, Lo/Sv;->a:F

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Sv;->e(Lo/Sv$TaskDescription;)V

    return-void
.end method

.method public final e(F)V
    .locals 0

    .line 23
    iput p1, p0, Lo/Sv;->c:F

    return-void
.end method

.method public e(Lo/Sv$TaskDescription;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lo/Sv;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 31
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "DownloadContentModel: missing/invalid required params"

    .line 32
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lo/Sv$TaskDescription;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    iget v2, p0, Lo/Sv;->a:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    iget v6, p0, Lo/Sv;->b:F

    float-to-double v6, v6

    div-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 37
    invoke-virtual {p1}, Lo/Sv$TaskDescription;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    iget v2, p0, Lo/Sv;->c:F

    float-to-double v2, v2

    mul-double v2, v2, v4

    iget v4, p0, Lo/Sv;->b:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p1}, Lo/Sv$TaskDescription;->d()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 38
    invoke-virtual {p1}, Lo/Sv$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lo/Sv;->g:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    invoke-virtual {p1}, Lo/Sv$TaskDescription;->b()Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lo/Sv;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget v0, p0, Lo/Sv;->b:F

    iget v2, p0, Lo/Sv;->a:F

    sub-float/2addr v0, v2

    iget v2, p0, Lo/Sv;->c:F

    sub-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 42
    invoke-virtual {p1}, Lo/Sv$TaskDescription;->e()Lo/ImageSwitcher;

    move-result-object v1

    .line 43
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bM:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 44
    sget-object v6, Lo/amj;->c:Lo/amj;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v3

    array-length v0, v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v6, "%.1f"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v0, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v5, v3

    .line 42
    invoke-static {v2, v5}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lo/Sv$TaskDescription;->c()Lo/ImageSwitcher;

    move-result-object p1

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->bL:I

    new-array v1, v4, [Ljava/lang/Object;

    .line 48
    sget-object v2, Lo/amj;->c:Lo/amj;

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lo/Sv;->c:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v3

    .line 46
    invoke-static {v0, v1}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h()F
    .locals 1

    .line 21
    iget v0, p0, Lo/Sv;->a:F

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/Sv;->g:Z

    return v0
.end method

.method public final m()F
    .locals 1

    .line 23
    iget v0, p0, Lo/Sv;->c:F

    return v0
.end method

.method public final o()F
    .locals 1

    .line 25
    iget v0, p0, Lo/Sv;->b:F

    return v0
.end method
