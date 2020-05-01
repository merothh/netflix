.class public abstract Lo/SystemClock;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SystemClock$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SystemClock$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:F

.field public c:Ljava/lang/CharSequence;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Z

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lo/SystemClock;->b:F

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cF:I

    return v0
.end method

.method public c(Lo/SystemClock$TaskDescription;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/SystemClock;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lo/SystemClock;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 44
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/SystemClock;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->b()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/SystemClock;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->b()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/SystemClock;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->d()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/SystemClock;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const-string v4, "text"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-boolean v0, p0, Lo/SystemClock;->h:Z

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->e()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->c()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Lo/SystemClock$TaskDescription;->b(Landroid/widget/ProgressBar;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->e()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 54
    :cond_4
    invoke-virtual {p1}, Lo/SystemClock$TaskDescription;->e()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1}, Lo/SystemClock;->c(Lo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/SystemClock;->h:Z

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/SystemClock;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/SystemClock;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1}, Lo/SystemClock;->c(Lo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public final e(F)V
    .locals 0

    .line 27
    iput p1, p0, Lo/SystemClock;->b:F

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/SystemClock;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/SystemClock;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/SystemClock;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final l()Landroid/view/View$OnClickListener;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/SystemClock;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/SystemClock;->h:Z

    return v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/SystemClock;->p()Lo/SystemClock$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()F
    .locals 1

    .line 27
    iget v0, p0, Lo/SystemClock;->b:F

    return v0
.end method

.method protected p()Lo/SystemClock$TaskDescription;
    .locals 1

    .line 38
    new-instance v0, Lo/SystemClock$TaskDescription;

    invoke-direct {v0}, Lo/SystemClock$TaskDescription;-><init>()V

    return-object v0
.end method
