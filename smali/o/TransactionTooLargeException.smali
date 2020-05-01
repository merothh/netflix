.class public abstract Lo/TransactionTooLargeException;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/FU;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->h:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/TransactionTooLargeException;->c:I

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/TransactionTooLargeException;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 12
    check-cast p1, Lo/FU;

    invoke-virtual {p0, p1}, Lo/TransactionTooLargeException;->e(Lo/FU;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lo/FU;

    invoke-virtual {p0, p1}, Lo/TransactionTooLargeException;->e(Lo/FU;)V

    return-void
.end method

.method public e(Lo/FU;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lo/FU;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lo/TransactionTooLargeException;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    invoke-virtual {p1}, Lo/FU;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 27
    invoke-virtual {p1}, Lo/FU;->g()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/TransactionTooLargeException;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h()I
    .locals 1

    .line 15
    iget v0, p0, Lo/TransactionTooLargeException;->c:I

    return v0
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/TransactionTooLargeException;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected m()Lo/FU;
    .locals 1

    .line 22
    new-instance v0, Lo/TransactionTooLargeException$StateListAnimator;

    invoke-direct {v0}, Lo/TransactionTooLargeException$StateListAnimator;-><init>()V

    check-cast v0, Lo/FU;

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/TransactionTooLargeException;->m()Lo/FU;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
