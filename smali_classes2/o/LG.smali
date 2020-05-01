.class public abstract Lo/LG;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LG$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/LG$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View$OnClickListener;

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/LG;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->H:I

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/LG;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public b(Lo/LG$Application;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lo/LG$Application;->c()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/LG;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p1}, Lo/LG$Application;->b()Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lo/LG;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/LG$Application;

    invoke-virtual {p0, p1}, Lo/LG;->b(Lo/LG$Application;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/LG$Application;

    invoke-virtual {p0, p1}, Lo/LG;->b(Lo/LG$Application;)V

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/LG;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final l()Landroid/view/View$OnClickListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/LG;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected m()Lo/LG$Application;
    .locals 1

    .line 25
    new-instance v0, Lo/LG$Application;

    invoke-direct {v0}, Lo/LG$Application;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/LG;->m()Lo/LG$Application;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
