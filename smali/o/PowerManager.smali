.class public final Lo/PowerManager;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lo/PowerManager;->b:Z

    return-void
.end method

.method private final b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)I
    .locals 6

    .line 67
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "child"

    .line 70
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "child.layoutParams"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p3, "footerView.layoutParams"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private final c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)I
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lo/PowerManager;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)I

    move-result p1

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private final e(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1388

    .line 45
    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    new-instance p2, Lo/PowerManager$ActionBar;

    invoke-direct {p2, p1}, Lo/PowerManager$ActionBar;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p3, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x1

    if-lez p3, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, v0

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lo/PowerManager;->b:Z

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 3

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lo/PowerManager;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-direct {p0, p3, p2, v0}, Lo/PowerManager;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->a()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 36
    invoke-direct {p0, p3, p1, p2}, Lo/PowerManager;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/Rect;Landroid/view/View;)V

    goto :goto_1

    .line 38
    :cond_2
    invoke-direct {p0, p3, p2, v0}, Lo/PowerManager;->c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_1
    return-void
.end method
