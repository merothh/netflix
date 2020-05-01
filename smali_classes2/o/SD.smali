.class public abstract Lo/SD;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SD$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SD$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aO:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 18
    iput p1, p0, Lo/SD;->a:I

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/SD$ActionBar;

    invoke-virtual {p0, p1}, Lo/SD;->e(Lo/SD$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/SD$ActionBar;

    invoke-virtual {p0, p1}, Lo/SD;->e(Lo/SD$ActionBar;)V

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/SD;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public e(Lo/SD$ActionBar;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lo/SD$ActionBar;->d()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/SD;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget v0, p0, Lo/SD;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lo/SD$ActionBar;->d()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "holder.view.context"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aZ:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 28
    invoke-virtual {p1}, Lo/SD$ActionBar;->d()Lo/ImageSwitcher;

    move-result-object p1

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v2}, Lo/ImageSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/SD;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 18
    iget v0, p0, Lo/SD;->a:I

    return v0
.end method
