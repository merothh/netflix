.class Lo/Dialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

.field final synthetic b:Landroid/view/View;

.field final synthetic d:Lo/Dialog;


# direct methods
.method constructor <init>(Lo/Dialog;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lo/Dialog$1;->d:Lo/Dialog;

    iput-object p2, p0, Lo/Dialog$1;->a:Landroid/view/View;

    iput-object p3, p0, Lo/Dialog$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 615
    iget-object p2, p0, Lo/Dialog$1;->a:Landroid/view/View;

    iget-object p3, p0, Lo/Dialog$1;->b:Landroid/view/View;

    invoke-static {p1, p2, p3}, Lo/Dialog;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
