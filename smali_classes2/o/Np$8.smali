.class Lo/Np$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Np;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lo/Np$8;->c:Lo/Np;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 695
    iget-object p1, p0, Lo/Np$8;->c:Lo/Np;

    invoke-static {p1}, Lo/Np;->e(Lo/Np;)Lo/Np$ActionBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/Np$ActionBar;->b(I)Lo/Iq$Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 696
    iget-object p2, p1, Lo/Iq$Application;->a:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 697
    iget-object p1, p1, Lo/Iq$Application;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
