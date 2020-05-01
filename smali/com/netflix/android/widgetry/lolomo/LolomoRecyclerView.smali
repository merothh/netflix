.class public Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;
.super Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Z

.field private c:Z

.field private d:F

.field private final e:Landroid/graphics/PointF;

.field private g:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 46
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->d:F

    .line 48
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->e:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->c:Z

    .line 51
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b:Z

    .line 69
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->a:I

    .line 73
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->j:Lo/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 186
    iput-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->j:Lo/ParcelFileDescriptor;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->g:Lo/CompatibilityInfo;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 190
    iput-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->g:Lo/CompatibilityInfo;

    :cond_1
    return-void
.end method

.method public c()Lo/ParcelFileDescriptor;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->j:Lo/ParcelFileDescriptor;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "LolomoRecyclerView"

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 150
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 151
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->c:Z

    .line 152
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b:Z

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->c:Z

    if-nez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 156
    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 157
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->c:Z

    .line 158
    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->a:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b:Z

    .line 166
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fling(II)Z
    .locals 1

    int-to-float p2, p2

    .line 228
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->d:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 229
    invoke-super {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 206
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 245
    instance-of v0, p1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 246
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 249
    :cond_0
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 250
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    iget-object p1, p1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->e:Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->e(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 234
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    invoke-super {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 235
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    check-cast v1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-virtual {v1, p0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->d(Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->e:Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 238
    iput-object v1, v0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->e:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V

    return-void
.end method

.method public setBackgroundItemDecoration(Lo/ParcelFileDescriptor;Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ParcelFileDescriptor;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->b()V

    .line 172
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 173
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->j:Lo/ParcelFileDescriptor;

    .line 174
    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->g:Lo/CompatibilityInfo;

    .line 175
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->invalidate()V

    return-void
.end method

.method public setFlingSpeedScale(F)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->d:F

    return-void
.end method

.method public setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method
