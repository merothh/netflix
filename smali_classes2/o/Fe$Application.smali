.class final Lo/Fe$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fe;->e(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Fe;

.field final synthetic c:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lo/Fe;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lo/Fe$Application;->a:Lo/Fe;

    iput-object p2, p0, Lo/Fe$Application;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 153
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 154
    iget-object v1, p0, Lo/Fe$Application;->a:Lo/Fe;

    invoke-static {v1}, Lo/Fe;->c(Lo/Fe;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lo/Fe$Application;->c:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "tabButton.getParent()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lo/Fe$Application;->c:Landroid/widget/Button;

    check-cast v4, Landroid/view/View;

    invoke-static {v1, v2, v3, v4, v0}, Lo/Fe;->b(Lo/Fe;Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V

    .line 155
    iget-object v1, p0, Lo/Fe$Application;->a:Lo/Fe;

    invoke-static {v1}, Lo/Fe;->c(Lo/Fe;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
