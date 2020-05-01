.class Lo/Dialog$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/widget/NestedScrollView$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dialog;->b(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lo/Dialog;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/Dialog;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lo/Dialog$5;->b:Lo/Dialog;

    iput-object p2, p0, Lo/Dialog$5;->a:Landroid/view/View;

    iput-object p3, p0, Lo/Dialog$5;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 596
    iget-object p2, p0, Lo/Dialog$5;->a:Landroid/view/View;

    iget-object p3, p0, Lo/Dialog$5;->e:Landroid/view/View;

    invoke-static {p1, p2, p3}, Lo/Dialog;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
