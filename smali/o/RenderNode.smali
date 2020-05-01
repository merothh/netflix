.class public final Lo/RenderNode;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# instance fields
.field private final c:I

.field private final e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    iput p1, p0, Lo/RenderNode;->c:I

    iput p2, p0, Lo/RenderNode;->e:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 91
    iget p3, p0, Lo/RenderNode;->e:I

    if-ne p3, p2, :cond_0

    .line 92
    iget p2, p0, Lo/RenderNode;->c:I

    neg-int p3, p2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    .line 93
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
