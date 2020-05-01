.class public abstract Lo/EZ;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EZ$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/EZ$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View$OnClickListener;

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/EZ;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Lo/EZ$StateListAnimator;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lo/EZ$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/EZ;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lo/EZ$StateListAnimator;->e()Landroid/widget/ImageButton;

    move-result-object p1

    .line 36
    iget-boolean v0, p0, Lo/EZ;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lo/EZ;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected b()I
    .locals 1

    .line 28
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fN:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p1, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/EZ;->a(Lo/EZ$StateListAnimator;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/EZ;->a:Z

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/EZ;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/EZ;->a(Lo/EZ$StateListAnimator;)V

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/EZ;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/EZ;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected m()Lo/EZ$StateListAnimator;
    .locals 1

    .line 30
    new-instance v0, Lo/EZ$StateListAnimator;

    invoke-direct {v0}, Lo/EZ$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/EZ;->m()Lo/EZ$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/EZ;->a:Z

    return v0
.end method
