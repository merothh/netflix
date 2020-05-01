.class public abstract Lo/SQ;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SQ$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SQ$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field public b:Lo/adJ;

.field private c:J

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lo/SQ;->c:J

    return-void
.end method

.method protected b()I
    .locals 1

    .line 27
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aS:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lo/SQ;->j:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1}, Lo/SQ;->d(Lo/SQ$ActionBar;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1}, Lo/SQ;->d(Lo/SQ$ActionBar;)V

    return-void
.end method

.method public d(Lo/SQ$ActionBar;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lo/SQ$ActionBar;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    iget-wide v1, p0, Lo/SQ;->c:J

    invoke-static {v0, v1, v2}, Lo/aeE;->b(Landroid/content/Context;J)Lo/adC;

    move-result-object v1

    .line 32
    iget-wide v2, p0, Lo/SQ;->a:J

    invoke-static {v0, v2, v3}, Lo/aeE;->b(Landroid/content/Context;J)Lo/adC;

    move-result-object v0

    .line 34
    invoke-virtual {p0, p1}, Lo/SQ;->e(Lo/SQ$ActionBar;)V

    .line 38
    invoke-virtual {p1}, Lo/SQ$ActionBar;->d()Lo/ImageSwitcher;

    move-result-object v2

    .line 35
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gd:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    .line 36
    invoke-virtual {v1}, Lo/adC;->d()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v3

    .line 37
    invoke-virtual {v1}, Lo/adC;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "size"

    invoke-virtual {v3, v4, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Lo/SQ$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v1

    .line 39
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gg:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Lo/adC;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v2, v5}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lo/adC;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lo/SQ$ActionBar;->e()Landroid/widget/ProgressBar;

    move-result-object v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-wide v3, p0, Lo/SQ;->c:J

    long-to-double v7, v3

    mul-double v7, v7, v1

    iget-wide v1, p0, Lo/SQ;->a:J

    add-long/2addr v1, v3

    long-to-double v1, v1

    div-double/2addr v7, v1

    double-to-int v1, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    invoke-virtual {p1}, Lo/SQ$ActionBar;->g()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lo/SQ;->j:Z

    if-eqz v0, :cond_2

    const v0, 0x3e99999a    # 0.3f

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lo/SQ;->a:J

    return-void
.end method

.method public e(Lo/SQ$ActionBar;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lo/SQ$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object p1

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fY:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lo/SQ;->b:Lo/adJ;

    const-string v2, "watchableTime"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lo/adJ;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "hours"

    invoke-virtual {v0, v3, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lo/SQ;->b:Lo/adJ;

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lo/adJ;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minutes"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lo/SQ;->a:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lo/SQ;->c:J

    return-wide v0
.end method

.method public final l()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/SQ;->j:Z

    return v0
.end method

.method public final o()Lo/adJ;
    .locals 2

    .line 23
    iget-object v0, p0, Lo/SQ;->b:Lo/adJ;

    if-nez v0, :cond_0

    const-string v1, "watchableTime"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
