.class public abstract Lo/Ta;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ta$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Ta$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/Ta;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lo/Ta;->g:Z

    return-void
.end method

.method protected b()I
    .locals 1

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aB:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 19
    iput p1, p0, Lo/Ta;->b:I

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/Ta;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public c(Lo/Ta$ActionBar;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lo/Ta$ActionBar;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    iget v1, p0, Lo/Ta;->b:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lo/Ta$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 40
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->bU:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 42
    :cond_1
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->bX:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 39
    :goto_1
    invoke-virtual {v3, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1}, Lo/Ta$ActionBar;->c()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v3, p0, Lo/Ta;->c:Ljava/lang/CharSequence;

    const-string v4, "quantity"

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 48
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->bT:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    .line 49
    iget v5, p0, Lo/Ta;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 52
    :cond_3
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->bR:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    .line 53
    iget v5, p0, Lo/Ta;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_2
    check-cast v3, Ljava/lang/CharSequence;

    .line 45
    :goto_3
    invoke-virtual {v0, v3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lo/Ta$ActionBar;->b()Lo/HorizontalScrollView;

    move-result-object v0

    if-eqz v1, :cond_4

    .line 58
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->bY:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    .line 59
    iget v5, p0, Lo/Ta;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_4

    .line 62
    :cond_4
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->bV:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    .line 63
    iget v5, p0, Lo/Ta;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 57
    :goto_4
    invoke-virtual {v0, v3}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1}, Lo/Ta$ActionBar;->e()Lo/HorizontalScrollView;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 68
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->bP:I

    invoke-static {v5}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v5

    .line 69
    iget v6, p0, Lo/Ta;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_5
    move-object v4, v3

    .line 67
    :goto_5
    invoke-virtual {v0, v4}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-boolean v0, p0, Lo/Ta;->g:Z

    const/16 v4, 0x8

    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p1}, Lo/Ta$ActionBar;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    invoke-virtual {p1}, Lo/Ta$ActionBar;->b()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 79
    invoke-virtual {p1}, Lo/Ta$ActionBar;->e()Lo/HorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo/HorizontalScrollView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    .line 82
    invoke-virtual {p1}, Lo/Ta$ActionBar;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    invoke-virtual {p1}, Lo/Ta$ActionBar;->b()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lo/Ta$ActionBar;->b()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/Ta;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p1}, Lo/Ta$ActionBar;->e()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 86
    invoke-virtual {p1}, Lo/Ta$ActionBar;->e()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/Ta;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 89
    :cond_7
    invoke-virtual {p1}, Lo/Ta$ActionBar;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    invoke-virtual {p1}, Lo/Ta$ActionBar;->b()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 91
    invoke-virtual {p1}, Lo/Ta$ActionBar;->b()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/Ta;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p1}, Lo/Ta$ActionBar;->e()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 93
    invoke-virtual {p1}, Lo/Ta$ActionBar;->e()Lo/HorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1}, Lo/Ta;->c(Lo/Ta$ActionBar;)V

    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/Ta;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1}, Lo/Ta;->c(Lo/Ta$ActionBar;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 21
    iput p1, p0, Lo/Ta;->a:I

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/Ta;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final h()I
    .locals 1

    .line 19
    iget v0, p0, Lo/Ta;->b:I

    return v0
.end method

.method public final k()Ljava/lang/CharSequence;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/Ta;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/Ta;->g:Z

    return v0
.end method

.method public final m()I
    .locals 1

    .line 21
    iget v0, p0, Lo/Ta;->a:I

    return v0
.end method

.method public final o()Landroid/view/View$OnClickListener;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/Ta;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final q()Landroid/view/View$OnClickListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Ta;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final s()Landroid/view/View$OnClickListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Ta;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method
