.class public abstract Lo/PrintWriter;
.super Lo/DataInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PrintWriter$Application;
    }
.end annotation


# static fields
.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Lo/RandomAccessFile$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RandomAccessFile$StateListAnimator<",
            "Lo/LineNumberInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Lo/RandomAccessFile$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RandomAccessFile$Application<",
            "Lo/TransformationMethod<",
            "Lo/LineNumberInputStream;",
            ">;",
            "Lo/LineNumberInputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lo/PrintWriter$Application;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lo/PrintWriter;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Lo/PrintWriter$2;

    invoke-direct {v0}, Lo/PrintWriter$2;-><init>()V

    sput-object v0, Lo/PrintWriter;->NODE_ADAPTER:Lo/RandomAccessFile$StateListAnimator;

    .line 347
    new-instance v0, Lo/PrintWriter$1;

    invoke-direct {v0}, Lo/PrintWriter$1;-><init>()V

    sput-object v0, Lo/PrintWriter;->SPARSE_VALUES_ADAPTER:Lo/RandomAccessFile$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lo/DataInputStream;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/PrintWriter;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/PrintWriter;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    iput-object v0, p0, Lo/PrintWriter;->mTempGlobalRect:[I

    const/high16 v0, -0x80000000

    .line 119
    iput v0, p0, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    .line 123
    iput v0, p0, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    .line 127
    iput v0, p0, Lo/PrintWriter;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_1

    .line 140
    iput-object p1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lo/PrintWriter;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Lo/FilterWriter;->i(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {p1, v0}, Lo/FilterWriter;->c(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1

    .line 998
    iget v0, p0, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    .line 999
    iput v0, p0, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    .line 1000
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 1001
    invoke-virtual {p0, p1, v0}, Lo/PrintWriter;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 641
    invoke-direct {p0, p1, p2}, Lo/PrintWriter;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 639
    :cond_0
    invoke-direct {p0, p2}, Lo/PrintWriter;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 677
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 678
    invoke-virtual {p0, p1}, Lo/PrintWriter;->obtainAccessibilityNodeInfo(I)Lo/LineNumberInputStream;

    move-result-object v0

    .line 681
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lo/LineNumberInputStream;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v0}, Lo/LineNumberInputStream;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v0}, Lo/LineNumberInputStream;->m()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 684
    invoke-virtual {v0}, Lo/LineNumberInputStream;->n()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 685
    invoke-virtual {v0}, Lo/LineNumberInputStream;->o()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 686
    invoke-virtual {v0}, Lo/LineNumberInputStream;->g()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 689
    invoke-virtual {p0, p1, p2}, Lo/PrintWriter;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 692
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 698
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/LineNumberInputStream;->s()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-static {p2, v0, p1}, Lo/ObjectInputStream;->d(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 700
    iget-object p1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 653
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 654
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private createNodeForChild(I)Lo/LineNumberInputStream;
    .locals 7

    .line 791
    invoke-static {}, Lo/LineNumberInputStream;->d()Lo/LineNumberInputStream;

    move-result-object v0

    const/4 v1, 0x1

    .line 794
    invoke-virtual {v0, v1}, Lo/LineNumberInputStream;->f(Z)V

    .line 795
    invoke-virtual {v0, v1}, Lo/LineNumberInputStream;->b(Z)V

    const-string v2, "android.view.View"

    .line 796
    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->d(Ljava/lang/CharSequence;)V

    .line 797
    sget-object v2, Lo/PrintWriter;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->b(Landroid/graphics/Rect;)V

    .line 798
    sget-object v2, Lo/PrintWriter;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->c(Landroid/graphics/Rect;)V

    .line 799
    iget-object v2, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->a(Landroid/view/View;)V

    .line 802
    invoke-virtual {p0, p1, v0}, Lo/PrintWriter;->onPopulateNodeForVirtualView(ILo/LineNumberInputStream;)V

    .line 805
    invoke-virtual {v0}, Lo/LineNumberInputStream;->q()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lo/LineNumberInputStream;->r()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_1
    :goto_0
    iget-object v2, p0, Lo/PrintWriter;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->d(Landroid/graphics/Rect;)V

    .line 811
    iget-object v2, p0, Lo/PrintWriter;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Lo/PrintWriter;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 816
    invoke-virtual {v0}, Lo/LineNumberInputStream;->c()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_b

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    .line 827
    iget-object v2, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->a(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v2, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lo/LineNumberInputStream;->d(Landroid/view/View;I)V

    .line 831
    iget v2, p0, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_2

    .line 832
    invoke-virtual {v0, v1}, Lo/LineNumberInputStream;->j(Z)V

    .line 833
    invoke-virtual {v0, v3}, Lo/LineNumberInputStream;->a(I)V

    goto :goto_1

    .line 835
    :cond_2
    invoke-virtual {v0, v4}, Lo/LineNumberInputStream;->j(Z)V

    const/16 v2, 0x40

    .line 836
    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->a(I)V

    .line 840
    :goto_1
    iget v2, p0, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    const/4 v2, 0x2

    .line 842
    invoke-virtual {v0, v2}, Lo/LineNumberInputStream;->a(I)V

    goto :goto_3

    .line 843
    :cond_4
    invoke-virtual {v0}, Lo/LineNumberInputStream;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 844
    invoke-virtual {v0, v1}, Lo/LineNumberInputStream;->a(I)V

    .line 846
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Lo/LineNumberInputStream;->d(Z)V

    .line 848
    iget-object p1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    iget-object v2, p0, Lo/PrintWriter;->mTempGlobalRect:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 852
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lo/LineNumberInputStream;->a(Landroid/graphics/Rect;)V

    .line 853
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v2, Lo/PrintWriter;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 854
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lo/LineNumberInputStream;->d(Landroid/graphics/Rect;)V

    .line 857
    iget p1, v0, Lo/LineNumberInputStream;->b:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    .line 858
    invoke-static {}, Lo/LineNumberInputStream;->d()Lo/LineNumberInputStream;

    move-result-object p1

    .line 860
    iget v3, v0, Lo/LineNumberInputStream;->b:I

    :goto_4
    if-eq v3, v2, :cond_6

    .line 864
    iget-object v5, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Lo/LineNumberInputStream;->e(Landroid/view/View;I)V

    .line 865
    sget-object v5, Lo/PrintWriter;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Lo/LineNumberInputStream;->b(Landroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0, v3, p1}, Lo/PrintWriter;->onPopulateNodeForVirtualView(ILo/LineNumberInputStream;)V

    .line 868
    iget-object v3, p0, Lo/PrintWriter;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lo/LineNumberInputStream;->d(Landroid/graphics/Rect;)V

    .line 869
    iget-object v3, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lo/PrintWriter;->mTempParentRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lo/PrintWriter;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 862
    iget v3, p1, Lo/LineNumberInputStream;->b:I

    goto :goto_4

    .line 871
    :cond_6
    invoke-virtual {p1}, Lo/LineNumberInputStream;->p()V

    .line 874
    :cond_7
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/PrintWriter;->mTempGlobalRect:[I

    aget v2, v2, v4

    iget-object v3, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lo/PrintWriter;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v5, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    .line 875
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    .line 874
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    :cond_8
    iget-object p1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    iget-object v2, p0, Lo/PrintWriter;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 879
    iget-object p1, p0, Lo/PrintWriter;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/PrintWriter;->mTempGlobalRect:[I

    aget v2, v2, v4

    iget-object v3, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lo/PrintWriter;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v4, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    .line 880
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 879
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/PrintWriter;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 883
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lo/LineNumberInputStream;->c(Landroid/graphics/Rect;)V

    .line 885
    iget-object p1, p0, Lo/PrintWriter;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lo/PrintWriter;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 886
    invoke-virtual {v0, v1}, Lo/LineNumberInputStream;->e(Z)V

    :cond_9
    return-object v0

    .line 822
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 818
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 812
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createNodeForHost()Lo/LineNumberInputStream;
    .locals 6

    .line 734
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-static {v0}, Lo/LineNumberInputStream;->c(Landroid/view/View;)Lo/LineNumberInputStream;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Lo/FilterWriter;->a(Landroid/view/View;Lo/LineNumberInputStream;)V

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-virtual {p0, v1}, Lo/PrintWriter;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 741
    invoke-virtual {v0}, Lo/LineNumberInputStream;->b()I

    move-result v2

    if-lez v2, :cond_1

    .line 742
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 746
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 747
    iget-object v4, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lo/LineNumberInputStream;->c(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 932
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 937
    :cond_0
    iget-object p1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 942
    :cond_1
    iget-object p1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 943
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 944
    check-cast p1, Landroid/view/View;

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 948
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 918
    invoke-virtual {p0, p1, p2, p3}, Lo/PrintWriter;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 912
    :cond_0
    invoke-direct {p0, p1}, Lo/PrintWriter;->clearAccessibilityFocus(I)Z

    move-result p1

    return p1

    .line 910
    :cond_1
    invoke-direct {p0, p1}, Lo/PrintWriter;->requestAccessibilityFocus(I)Z

    move-result p1

    return p1

    .line 916
    :cond_2
    invoke-virtual {p0, p1}, Lo/PrintWriter;->clearKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    .line 914
    :cond_3
    invoke-virtual {p0, p1}, Lo/PrintWriter;->requestKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1

    .line 904
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lo/FilterWriter;->b(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2

    .line 968
    iget-object v0, p0, Lo/PrintWriter;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/PrintWriter;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    iget v0, p0, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 975
    invoke-direct {p0, v0}, Lo/PrintWriter;->clearAccessibilityFocus(I)Z

    .line 979
    :cond_1
    iput p1, p0, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    .line 982
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 983
    invoke-virtual {p0, p1, v0}, Lo/PrintWriter;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2

    .line 612
    iget v0, p0, Lo/PrintWriter;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 617
    :cond_0
    iput p1, p0, Lo/PrintWriter;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    .line 621
    invoke-virtual {p0, p1, v1}, Lo/PrintWriter;->sendEventForVirtualView(II)Z

    const/16 p1, 0x100

    .line 622
    invoke-virtual {p0, v0, p1}, Lo/PrintWriter;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    .line 1046
    iget v0, p0, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 1051
    iput v0, p0, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    .line 1053
    invoke-virtual {p0, p1, v1}, Lo/PrintWriter;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    .line 1054
    invoke-virtual {p0, p1, v0}, Lo/PrintWriter;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 182
    iget-object v0, p0, Lo/PrintWriter;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/PrintWriter;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    .line 193
    :cond_1
    iget p1, p0, Lo/PrintWriter;->mHoveredVirtualViewId:I

    if-eq p1, v4, :cond_2

    .line 194
    invoke-direct {p0, v4}, Lo/PrintWriter;->updateHoveredVirtualView(I)V

    return v3

    :cond_2
    return v1

    .line 189
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lo/PrintWriter;->getVirtualViewAt(FF)I

    move-result p1

    .line 190
    invoke-direct {p0, p1}, Lo/PrintWriter;->updateHoveredVirtualView(I)V

    if-eq p1, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lo/ObjectInputValidation;
    .locals 0

    .line 157
    iget-object p1, p0, Lo/PrintWriter;->mNodeProvider:Lo/PrintWriter$Application;

    if-nez p1, :cond_0

    .line 158
    new-instance p1, Lo/PrintWriter$Application;

    invoke-direct {p1, p0}, Lo/PrintWriter$Application;-><init>(Lo/PrintWriter;)V

    iput-object p1, p0, Lo/PrintWriter;->mNodeProvider:Lo/PrintWriter$Application;

    .line 160
    :cond_0
    iget-object p1, p0, Lo/PrintWriter;->mNodeProvider:Lo/PrintWriter$Application;

    return-object p1
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method obtainAccessibilityNodeInfo(I)Lo/LineNumberInputStream;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 720
    invoke-direct {p0}, Lo/PrintWriter;->createNodeForHost()Lo/LineNumberInputStream;

    move-result-object p1

    return-object p1

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Lo/PrintWriter;->createNodeForChild(I)Lo/LineNumberInputStream;

    move-result-object p1

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 660
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    invoke-virtual {p0, p2}, Lo/PrintWriter;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V
    .locals 0

    .line 755
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V

    .line 758
    invoke-virtual {p0, p2}, Lo/PrintWriter;->onPopulateNodeForHost(Lo/LineNumberInputStream;)V

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected onPopulateNodeForHost(Lo/LineNumberInputStream;)V
    .locals 0

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILo/LineNumberInputStream;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 899
    invoke-direct {p0, p1, p2, p3}, Lo/PrintWriter;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 897
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/PrintWriter;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 2

    .line 1016
    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1021
    :cond_0
    iget v0, p0, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 1027
    invoke-virtual {p0, v0}, Lo/PrintWriter;->clearKeyboardFocusForVirtualView(I)Z

    .line 1030
    :cond_2
    iput p1, p0, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    .line 1032
    invoke-virtual {p0, p1, v0}, Lo/PrintWriter;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    .line 1033
    invoke-virtual {p0, p1, v1}, Lo/PrintWriter;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    .line 505
    iget-object v1, p0, Lo/PrintWriter;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 514
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/PrintWriter;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 515
    iget-object p2, p0, Lo/PrintWriter;->mHost:Landroid/view/View;

    invoke-static {v1, p2, p1}, Lo/InterruptedIOException;->d(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
