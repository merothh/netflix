.class final Lo/SynchronousResultReceiver$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/SynchronousResultReceiver;


# direct methods
.method constructor <init>(Lo/SynchronousResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lo/SynchronousResultReceiver$FragmentManager;->c:Lo/SynchronousResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lo/SynchronousResultReceiver$FragmentManager;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->h(Lo/SynchronousResultReceiver;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lo/SynchronousResultReceiver$FragmentManager;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {v0}, Lo/SynchronousResultReceiver;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->ks:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Landroid/widget/ProgressBar;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lo/SynchronousResultReceiver;->d(Lo/SynchronousResultReceiver;Landroid/widget/ProgressBar;)V

    .line 85
    :cond_2
    iget-object v0, p0, Lo/SynchronousResultReceiver$FragmentManager;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->h(Lo/SynchronousResultReceiver;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method
