.class public abstract Lo/LD;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LD$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/LD$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View$OnClickListener;

.field private c:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lo/LD;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/LD;->a:Z

    return-void
.end method

.method protected b()I
    .locals 1

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->I:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/LD;->j:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 15
    check-cast p1, Lo/LD$Application;

    invoke-virtual {p0, p1}, Lo/LD;->d(Lo/LD$Application;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/LD$Application;

    invoke-virtual {p0, p1}, Lo/LD;->d(Lo/LD$Application;)V

    return-void
.end method

.method public d(Lo/LD$Application;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lo/LD;->a:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Lo/LD;->c:I

    if-ne v0, v1, :cond_0

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pC:I

    goto :goto_0

    .line 41
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pA:I

    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lo/LD;->c:I

    if-ne v0, v2, :cond_2

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pE:I

    goto :goto_0

    .line 47
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pG:I

    .line 50
    :goto_0
    invoke-virtual {p1}, Lo/LD$Application;->e()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {p1}, Lo/LD$Application;->e()Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p1}, Lo/LD$Application;->e()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v3, p0, Lo/LD;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p1}, Lo/LD$Application;->e()Lo/ImageSwitcher;

    move-result-object v0

    iget-boolean v3, p0, Lo/LD;->j:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lo/ImageSwitcher;->setEnabled(Z)V

    .line 54
    iget-boolean v0, p0, Lo/LD;->a:Z

    if-eqz v0, :cond_4

    .line 55
    iget v0, p0, Lo/LD;->c:I

    if-ne v0, v1, :cond_3

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bL:I

    goto :goto_1

    .line 58
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bM:I

    goto :goto_1

    .line 61
    :cond_4
    iget v0, p0, Lo/LD;->c:I

    if-ne v0, v2, :cond_5

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bJ:I

    goto :goto_1

    .line 64
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bI:I

    .line 68
    :goto_1
    invoke-virtual {p1}, Lo/LD$Application;->c()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/GridView;->setImageResource(I)V

    .line 69
    invoke-virtual {p1}, Lo/LD$Application;->c()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/LD;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p1}, Lo/LD$Application;->c()Lo/GridView;

    move-result-object p1

    iget-boolean v0, p0, Lo/LD;->j:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lo/GridView;->setEnabled(Z)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 23
    iput p1, p0, Lo/LD;->c:I

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/LD;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/LD;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected k()Lo/LD$Application;
    .locals 1

    .line 33
    new-instance v0, Lo/LD$Application;

    invoke-direct {v0}, Lo/LD$Application;-><init>()V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/LD;->j:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/LD;->a:Z

    return v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/LD;->k()Lo/LD$Application;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 23
    iget v0, p0, Lo/LD;->c:I

    return v0
.end method
