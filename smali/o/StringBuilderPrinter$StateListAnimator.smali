.class final Lo/StringBuilderPrinter$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StringBuilderPrinter;->d(Lo/StringBuilderPrinter$TaskDescription;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/StringBuilderPrinter;

.field final synthetic c:Lo/StringBuilderPrinter$TaskDescription;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lo/StringBuilderPrinter;ILo/StringBuilderPrinter$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/StringBuilderPrinter$StateListAnimator;->b:Lo/StringBuilderPrinter;

    iput p2, p0, Lo/StringBuilderPrinter$StateListAnimator;->d:I

    iput-object p3, p0, Lo/StringBuilderPrinter$StateListAnimator;->c:Lo/StringBuilderPrinter$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lo/StringBuilderPrinter$StateListAnimator;->b:Lo/StringBuilderPrinter;

    invoke-virtual {p1}, Lo/StringBuilderPrinter;->a()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lo/StringBuilderPrinter$StateListAnimator;->d:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SuperNotCalledException;

    iget-object v0, p0, Lo/StringBuilderPrinter$StateListAnimator;->b:Lo/StringBuilderPrinter;

    invoke-virtual {v0}, Lo/StringBuilderPrinter;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lo/StringBuilderPrinter$StateListAnimator;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SuperNotCalledException;

    invoke-virtual {v0}, Lo/SuperNotCalledException;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lo/SuperNotCalledException;->c(Z)V

    .line 30
    iget-object p1, p0, Lo/StringBuilderPrinter$StateListAnimator;->c:Lo/StringBuilderPrinter$TaskDescription;

    invoke-virtual {p1}, Lo/StringBuilderPrinter$TaskDescription;->c()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/StringBuilderPrinter$StateListAnimator;->b:Lo/StringBuilderPrinter;

    invoke-virtual {v0}, Lo/StringBuilderPrinter;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lo/StringBuilderPrinter$StateListAnimator;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SuperNotCalledException;

    invoke-virtual {v0}, Lo/SuperNotCalledException;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lo/StringBuilderPrinter$StateListAnimator;->b:Lo/StringBuilderPrinter;

    invoke-virtual {p1}, Lo/StringBuilderPrinter;->c()V

    return-void
.end method
