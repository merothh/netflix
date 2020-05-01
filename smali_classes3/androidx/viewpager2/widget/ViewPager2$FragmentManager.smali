.class Landroidx/viewpager2/widget/ViewPager2$FragmentManager;
.super Landroidx/viewpager2/widget/ViewPager2$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentManager"
.end annotation


# instance fields
.field private final a:Lo/GetField;

.field private final b:Lo/GetField;

.field private d:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

.field final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1328
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$Application;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$4;)V

    .line 1329
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$5;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$5;-><init>(Landroidx/viewpager2/widget/ViewPager2$FragmentManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->b:Lo/GetField;

    .line 1340
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$4;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$4;-><init>(Landroidx/viewpager2/widget/ViewPager2$FragmentManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->a:Lo/GetField;

    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1555
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1559
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1560
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->j()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1563
    :cond_1
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-lez v1, :cond_2

    const/16 v1, 0x2000

    .line 1564
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1566
    :cond_2
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_3

    const/16 v0, 0x1000

    .line 1567
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1569
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private d(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1539
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->d()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1541
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 1543
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 1546
    :goto_1
    invoke-static {p1}, Lo/LineNumberInputStream;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Lo/LineNumberInputStream;

    move-result-object p1

    .line 1548
    invoke-static {v0, v2, v1, v1}, Lo/LineNumberInputStream$TaskDescription;->b(IIZI)Lo/LineNumberInputStream$TaskDescription;

    move-result-object v0

    .line 1551
    invoke-virtual {p1, v0}, Lo/LineNumberInputStream;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1413
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->j()V

    return-void
.end method

.method a(I)V
    .locals 2

    .line 1468
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1459
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lo/X509EncodedKeySpec;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x2

    .line 1356
    invoke-static {p2, p1}, Lo/FilterWriter;->c(Landroid/view/View;I)V

    .line 1359
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$3;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$3;-><init>(Landroidx/viewpager2/widget/ViewPager2$FragmentManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->d:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    .line 1366
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p1}, Lo/FilterWriter;->i(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1368
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/FilterWriter;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(ILandroid/os/Bundle;)Z
    .locals 0

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1000

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c()V
    .locals 0

    .line 1408
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->j()V

    return-void
.end method

.method public c(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1431
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1433
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1402
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->d:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1380
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0

    .line 1381
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public d(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1445
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->b(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x2000

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 1449
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 1450
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->i()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 1451
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->i()I

    move-result p1

    add-int/2addr p1, v0

    .line 1452
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->a(I)V

    return v0

    .line 1446
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public e()V
    .locals 0

    .line 1388
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->j()V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;)V"
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->j()V

    if-eqz p1, :cond_0

    .line 1395
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->d:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 1426
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->j()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1418
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->j()V

    .line 1419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1420
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method j()V
    .locals 8

    .line 1478
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x1020048

    .line 1489
    invoke-static {v0, v1}, Lo/FilterWriter;->a(Landroid/view/View;I)V

    const v2, 0x1020049

    .line 1490
    invoke-static {v0, v2}, Lo/FilterWriter;->a(Landroid/view/View;I)V

    const v3, 0x1020046

    .line 1491
    invoke-static {v0, v3}, Lo/FilterWriter;->a(Landroid/view/View;I)V

    const v4, 0x1020047

    .line 1492
    invoke-static {v0, v4}, Lo/FilterWriter;->a(Landroid/view/View;I)V

    .line 1494
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1498
    :cond_0
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1503
    :cond_1
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v6}, Landroidx/viewpager2/widget/ViewPager2;->j()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 1507
    :cond_2
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v6}, Landroidx/viewpager2/widget/ViewPager2;->d()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    .line 1508
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    const v4, 0x1020048

    goto :goto_0

    :cond_3
    const v4, 0x1020049

    :goto_0
    if-eqz v3, :cond_4

    const v1, 0x1020049

    .line 1512
    :cond_4
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->d:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    .line 1513
    new-instance v2, Lo/LineNumberInputStream$ActionBar;

    invoke-direct {v2, v4, v7}, Lo/LineNumberInputStream$ActionBar;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->b:Lo/GetField;

    invoke-static {v0, v2, v7, v3}, Lo/FilterWriter;->d(Landroid/view/View;Lo/LineNumberInputStream$ActionBar;Ljava/lang/CharSequence;Lo/GetField;)V

    .line 1517
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-lez v2, :cond_8

    .line 1518
    new-instance v2, Lo/LineNumberInputStream$ActionBar;

    invoke-direct {v2, v1, v7}, Lo/LineNumberInputStream$ActionBar;-><init>(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->a:Lo/GetField;

    invoke-static {v0, v2, v7, v1}, Lo/FilterWriter;->d(Landroid/view/View;Lo/LineNumberInputStream$ActionBar;Ljava/lang/CharSequence;Lo/GetField;)V

    goto :goto_1

    .line 1523
    :cond_6
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 1524
    new-instance v1, Lo/LineNumberInputStream$ActionBar;

    invoke-direct {v1, v4, v7}, Lo/LineNumberInputStream$ActionBar;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->b:Lo/GetField;

    invoke-static {v0, v1, v7, v2}, Lo/FilterWriter;->d(Landroid/view/View;Lo/LineNumberInputStream$ActionBar;Ljava/lang/CharSequence;Lo/GetField;)V

    .line 1528
    :cond_7
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-lez v1, :cond_8

    .line 1529
    new-instance v1, Lo/LineNumberInputStream$ActionBar;

    invoke-direct {v1, v3, v7}, Lo/LineNumberInputStream$ActionBar;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->a:Lo/GetField;

    invoke-static {v0, v1, v7, v2}, Lo/FilterWriter;->d(Landroid/view/View;Lo/LineNumberInputStream$ActionBar;Ljava/lang/CharSequence;Lo/GetField;)V

    :cond_8
    :goto_1
    return-void
.end method
