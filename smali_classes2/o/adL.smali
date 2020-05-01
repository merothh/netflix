.class public Lo/adL;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# instance fields
.field protected c:I

.field protected e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    .line 15
    iput p1, p0, Lo/adL;->c:I

    .line 16
    iput p2, p0, Lo/adL;->e:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 0

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p4

    instance-of p4, p4, Lo/MultiAutoCompleteTextView;

    if-eqz p4, :cond_0

    .line 24
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p4

    check-cast p4, Lo/MultiAutoCompleteTextView;

    invoke-virtual {p4, p2, p3}, Lo/MultiAutoCompleteTextView;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 30
    :cond_0
    iget p2, p0, Lo/adL;->c:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 31
    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 32
    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 33
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
