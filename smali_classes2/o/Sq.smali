.class public abstract Lo/Sq;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sq$TaskDescription;,
        Lo/Sq$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Sq$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:Ljava/lang/CharSequence;

.field private f:Lo/Sq$Activity;

.field private g:Z

.field private h:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lo/Sq;->j:Z

    .line 31
    iput-boolean v0, p0, Lo/Sq;->h:Z

    return-void
.end method

.method private final a(Lo/Sq$TaskDescription;)V
    .locals 6

    .line 71
    iget v0, p0, Lo/Sq;->b:F

    const/4 v1, 0x0

    int-to-float v2, v1

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/GridView;->setEnabled(Z)V

    .line 73
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/GridView;->setAlpha(F)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/GridView;->setEnabled(Z)V

    .line 76
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/GridView;->setAlpha(F)V

    .line 79
    :goto_0
    iget v0, p0, Lo/Sq;->b:F

    const/high16 v2, 0x41180000    # 9.5f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lo/Sq;->h:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->c()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/GridView;->setEnabled(Z)V

    .line 84
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->c()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo/GridView;->setAlpha(F)V

    goto :goto_2

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->c()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/GridView;->setEnabled(Z)V

    .line 81
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->c()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/GridView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method private final b(FLo/Sq$TaskDescription;)V
    .locals 5

    .line 63
    iget v0, p0, Lo/Sq;->b:F

    .line 64
    iput p1, p0, Lo/Sq;->b:F

    .line 65
    invoke-virtual {p2}, Lo/Sq$TaskDescription;->e()Lo/ImageSwitcher;

    move-result-object v1

    sget-object v2, Lo/amj;->c:Lo/amj;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lo/Sq;->f:Lo/Sq$Activity;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lo/Sq$Activity;->a(FF)V

    .line 67
    :cond_0
    invoke-direct {p0, p2}, Lo/Sq;->a(Lo/Sq$TaskDescription;)V

    return-void
.end method

.method public static final synthetic e(Lo/Sq;FLo/Sq$TaskDescription;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lo/Sq;->b(FLo/Sq$TaskDescription;)V

    return-void
.end method


# virtual methods
.method public final a_(F)V
    .locals 0

    .line 25
    iput p1, p0, Lo/Sq;->b:F

    return-void
.end method

.method public final a_(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lo/Sq;->g:Z

    return-void
.end method

.method protected b()I
    .locals 1

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->as:I

    return v0
.end method

.method public final b_(Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/Sq;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final b_(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lo/Sq;->h:Z

    return-void
.end method

.method public final c(Lo/Sq$Activity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/Sq;->f:Lo/Sq$Activity;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Sq;->d(Lo/Sq$TaskDescription;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Sq;->d(Lo/Sq$TaskDescription;)V

    return-void
.end method

.method public d(Lo/Sq$TaskDescription;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->a()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/Sq;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->h()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lo/Sq;->g:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lo/Sq;->a:Ljava/lang/String;

    .line 39
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_6

    .line 42
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->d()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->d()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/Sq;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->i()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lo/Sq;->j:Z

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->e()Lo/ImageSwitcher;

    move-result-object v0

    sget-object v1, Lo/amj;->c:Lo/amj;

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lo/Sq;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0, p1}, Lo/Sq;->a(Lo/Sq$TaskDescription;)V

    .line 49
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->c()Lo/GridView;

    move-result-object v0

    new-instance v1, Lo/Sq$Application;

    invoke-direct {v1, p0, p1}, Lo/Sq$Application;-><init>(Lo/Sq;Lo/Sq$TaskDescription;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->b()Lo/GridView;

    move-result-object v0

    new-instance v1, Lo/Sq$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/Sq$StateListAnimator;-><init>(Lo/Sq;Lo/Sq$TaskDescription;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-boolean v0, p0, Lo/Sq;->j:Z

    if-nez v0, :cond_5

    .line 57
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->c()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/GridView;->setEnabled(Z)V

    .line 58
    invoke-virtual {p1}, Lo/Sq$TaskDescription;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/GridView;->setEnabled(Z)V

    :cond_5
    return-void

    .line 40
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "image url is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/Sq;->a:Ljava/lang/String;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/Sq;->j:Z

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/Sq;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()F
    .locals 1

    .line 25
    iget v0, p0, Lo/Sq;->b:F

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/Sq;->g:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/Sq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/Sq;->j:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lo/Sq;->h:Z

    return v0
.end method

.method public final q()Lo/Sq$Activity;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/Sq;->f:Lo/Sq$Activity;

    return-object v0
.end method
