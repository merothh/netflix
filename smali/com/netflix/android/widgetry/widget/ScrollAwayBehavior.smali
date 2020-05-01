.class public Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "ScrollAwayBehavior"


# instance fields
.field private a:I

.field protected c:I

.field protected d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    const/16 v0, 0x30

    .line 26
    iput v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->c:I

    .line 35
    iput p1, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    const/16 p1, 0x30

    .line 26
    iput p1, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->c:I

    return-void
.end method

.method private d(Landroid/view/View;I)V
    .locals 2

    .line 77
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->c:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    if-lez p2, :cond_2

    .line 99
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 101
    :cond_1
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    sub-int/2addr p2, v0

    goto :goto_1

    .line 105
    :cond_2
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    add-int v1, v0, p2

    if-gez v1, :cond_8

    goto :goto_0

    :cond_4
    neg-int p2, p2

    if-gez p2, :cond_6

    .line 82
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_5

    return-void

    .line 84
    :cond_5
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_8

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    add-int/2addr p2, v0

    neg-int p2, p2

    goto :goto_1

    .line 88
    :cond_6
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    if-nez v0, :cond_7

    return-void

    :cond_7
    add-int v1, v0, p2

    if-lez v1, :cond_8

    :goto_0
    neg-int p2, v0

    .line 114
    :cond_8
    :goto_1
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    .line 115
    iget p2, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    return-void
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 49
    instance-of p1, p3, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDetachedFromLayoutParams()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;->onDetachedFromLayoutParams()V

    .line 122
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a()V

    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 54
    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->d:Landroid/view/View;

    .line 55
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 56
    iget p1, p0, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->a:I

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2, p5}, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;->d(Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
