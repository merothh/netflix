.class public abstract Lo/SU;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SU$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SU$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field public b:Lo/adJ;

.field private c:J

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 27
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aU:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lo/SU;->i:Z

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lo/SU;->a:J

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/SU$Application;

    invoke-virtual {p0, p1}, Lo/SU;->e(Lo/SU$Application;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/SU$Application;

    invoke-virtual {p0, p1}, Lo/SU;->e(Lo/SU$Application;)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lo/SU;->c:J

    return-void
.end method

.method public e(Lo/SU$Application;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lo/SU$Application;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lo/SU$Application;->c()Lo/ImageSwitcher;

    move-result-object v1

    .line 32
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ga:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lo/SU;->b:Lo/adJ;

    const-string v4, "watchableTime"

    if-nez v3, :cond_0

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lo/adJ;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "hours"

    invoke-virtual {v2, v5, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lo/SU;->b:Lo/adJ;

    if-nez v3, :cond_1

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lo/adJ;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "minutes"

    invoke-virtual {v2, v4, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-wide v1, p0, Lo/SU;->a:J

    invoke-static {v0, v1, v2}, Lo/aeE;->b(Landroid/content/Context;J)Lo/adC;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lo/SU$Application;->b()Lo/ImageSwitcher;

    move-result-object v1

    .line 39
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gf:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Lo/adC;->d()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lo/adC;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "size"

    invoke-virtual {v2, v3, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lo/SU$Application;->a()Landroid/widget/ProgressBar;

    move-result-object v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-wide v5, p0, Lo/SU;->c:J

    long-to-double v7, v5

    mul-double v7, v7, v1

    iget-wide v1, p0, Lo/SU;->a:J

    add-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v7, v1

    double-to-int v1, v7

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    invoke-virtual {p1}, Lo/SU$Application;->g()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lo/SU;->i:Z

    if-eqz v0, :cond_3

    const v0, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final h()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lo/SU;->a:J

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/SU;->i:Z

    return v0
.end method

.method public final o()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lo/SU;->c:J

    return-wide v0
.end method
