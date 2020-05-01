.class final Lo/SynchronousResultReceiver$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/SynchronousResultReceiver;


# direct methods
.method constructor <init>(Lo/SynchronousResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lo/SynchronousResultReceiver$ActionBar;->e:Lo/SynchronousResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 275
    iget-object p1, p0, Lo/SynchronousResultReceiver$ActionBar;->e:Lo/SynchronousResultReceiver;

    invoke-static {p1}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "insets"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 276
    iget-object p1, p0, Lo/SynchronousResultReceiver$ActionBar;->e:Lo/SynchronousResultReceiver;

    invoke-static {p1}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 277
    iget-object p1, p0, Lo/SynchronousResultReceiver$ActionBar;->e:Lo/SynchronousResultReceiver;

    invoke-static {p1}, Lo/SynchronousResultReceiver;->d(Lo/SynchronousResultReceiver;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 278
    check-cast p1, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    const/16 v3, 0x14

    int-to-float v3, v3

    .line 324
    sget-object v4, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 325
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "Lookup.get<Context>().resources"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 324
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 278
    invoke-static {p1, v2, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 280
    :cond_0
    iget-object p1, p0, Lo/SynchronousResultReceiver$ActionBar;->e:Lo/SynchronousResultReceiver;

    invoke-static {p1}, Lo/SynchronousResultReceiver;->g(Lo/SynchronousResultReceiver;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 331
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-object p2
.end method
