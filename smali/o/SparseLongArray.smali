.class public final Lo/SparseLongArray;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    iput p1, p0, Lo/SparseLongArray;->a:I

    iput p2, p0, Lo/SparseLongArray;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 2

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 66
    iget p3, p0, Lo/SparseLongArray;->a:I

    rem-int p4, p2, p3

    .line 68
    iget v0, p0, Lo/SparseLongArray;->b:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, v0

    .line 69
    div-int/2addr p4, p3

    sub-int p4, v0, p4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p3, :cond_0

    .line 71
    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
