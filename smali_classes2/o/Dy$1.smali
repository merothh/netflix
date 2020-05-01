.class Lo/Dy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dy;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Dy;


# direct methods
.method constructor <init>(Lo/Dy;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lo/Dy$1;->b:Lo/Dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 105
    iget-object p1, p0, Lo/Dy$1;->b:Lo/Dy;

    invoke-static {p1}, Lo/Dy;->b(Lo/Dy;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 106
    iget-object p1, p0, Lo/Dy$1;->b:Lo/Dy;

    invoke-static {p1}, Lo/Dy;->b(Lo/Dy;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lo/Dy$1;->b:Lo/Dy;

    invoke-static {p2}, Lo/Dy;->e(Lo/Dy;)Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    mul-int/lit8 p3, p3, 0x3

    invoke-static {p2, p3}, Lo/Dy;->a(Lo/Dy;I)I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 111
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 112
    iget-object p1, p0, Lo/Dy$1;->b:Lo/Dy;

    invoke-static {p1}, Lo/Dy;->b(Lo/Dy;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lo/Dy$1$1;

    invoke-direct {p2, p0}, Lo/Dy$1$1;-><init>(Lo/Dy$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
