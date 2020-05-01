.class public abstract Lo/LB;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LB$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/LB$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/LB;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->I:I

    return v0
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/LB;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/LB;->j:Z

    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/LB;->c:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/LB;->e(Lo/LB$TaskDescription;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/LB;->e(Lo/LB$TaskDescription;)V

    return-void
.end method

.method public e(Lo/LB$TaskDescription;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lo/LB;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Lo/LB$TaskDescription;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p1}, Lo/LB$TaskDescription;->c()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    invoke-virtual {p1}, Lo/LB$TaskDescription;->c()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/LB;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lo/LB;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Lo/LB$TaskDescription;->a()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/GridView;->setImageResource(I)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lo/LB$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/LB;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p1}, Lo/LB$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "holder.itemView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lo/LB;->j:Z

    if-eqz v1, :cond_2

    .line 51
    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->P:I

    goto :goto_0

    .line 53
    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    .line 49
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    invoke-virtual {p1}, Lo/LB$TaskDescription;->g()Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 72
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/LB;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/LB;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/LB;->j:Z

    return v0
.end method

.method protected m()Lo/LB$TaskDescription;
    .locals 1

    .line 36
    new-instance v0, Lo/LB$TaskDescription;

    invoke-direct {v0}, Lo/LB$TaskDescription;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/LB;->m()Lo/LB$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/LB;->b:Ljava/lang/Integer;

    return-object v0
.end method
