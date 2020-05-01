.class public abstract Lo/CS;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CS$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/CS$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 17
    sget v0, Lo/NdefMessage$ActionBar;->b:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 13
    check-cast p1, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/CS;->e(Lo/CS$StateListAnimator;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/CS$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/CS;->e(Lo/CS$StateListAnimator;)V

    return-void
.end method

.method public e(Lo/CS$StateListAnimator;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lo/CS;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lo/CS$StateListAnimator;->c()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/CS;->a:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lo/CS$StateListAnimator;->c()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lo/CS$StateListAnimator;->c()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/CS;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected l()Lo/CS$StateListAnimator;
    .locals 1

    .line 19
    new-instance v0, Lo/CS$StateListAnimator;

    invoke-direct {v0}, Lo/CS$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lo/CS;->l()Lo/CS$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
