.class public final Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior$TaskDescription;
    }
.end annotation

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
.field public static final d:Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior$TaskDescription;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/Messenger;

.field private final c:[I

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->d:Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior$TaskDescription;

    return-void
.end method

.method private final a(IF)I
    .locals 3

    .line 134
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 135
    iget v1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->f:I

    sub-int v2, v1, v0

    int-to-float v2, v2

    mul-float v2, v2, p2

    int-to-float p2, v0

    add-float/2addr v2, p2

    float-to-int p2, v2

    invoke-static {p2, v0, v1}, Lo/amG;->c(III)I

    move-result p2

    .line 137
    invoke-static {p1, p2}, Lo/WindowId;->b(II)I

    move-result p1

    return p1
.end method

.method private final c(F)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->c:[I

    iget v1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->e:I

    invoke-direct {p0, v1, p1}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 129
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->c:[I

    iget v1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->h:I

    invoke-direct {p0, v1, p1}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->a(IF)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 130
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->b:Lo/Messenger;

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->c:[I

    invoke-virtual {p1, v0}, Lo/Messenger;->setColors([I)V

    return-void
.end method

.method private final e(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 4

    .line 117
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "recyclerView.getChildAt(0)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    neg-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 124
    :goto_2
    invoke-static {p1, v1}, Lo/amG;->c(FF)F

    move-result p1

    iget v0, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->g:F

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;)V

    .line 80
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const-string v0, "recyclerView"

    .line 81
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->e(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->c(F)V

    :cond_0
    return-void
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

    const-string p4, "coordinatorLayout"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->a:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    .line 107
    sget-object p1, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->d:Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 109
    :cond_1
    instance-of p1, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    :cond_2
    invoke-static {p3, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p3}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->e(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/TransparentToOpaqueScrollBehavior;->c(F)V

    :cond_3
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

    const-string p6, "coordinatorLayout"

    invoke-static {p1, p6}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "directTargetChild"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p4, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
