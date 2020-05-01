.class public final Lo/OK$Application;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/OK;

.field private final b:I

.field private final e:I


# direct methods
.method public constructor <init>(Lo/OK;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lo/OK$Application;->a:Lo/OK;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    iput p2, p0, Lo/OK$Application;->b:I

    iput p3, p0, Lo/OK$Application;->e:I

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

    .line 135
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p4

    if-eqz p4, :cond_2

    check-cast p4, Lo/ON;

    .line 136
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 138
    invoke-virtual {p4, p2}, Lo/ON;->c(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 140
    iget p3, p0, Lo/OK$Application;->b:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 141
    div-int/lit8 v0, p3, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 142
    div-int/lit8 v0, p3, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 143
    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 146
    invoke-virtual {p4, p2}, Lo/ON;->d(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 147
    iget p3, p0, Lo/OK$Application;->e:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 151
    :cond_0
    invoke-virtual {p4, p2}, Lo/ON;->d(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 152
    iget p2, p0, Lo/OK$Application;->e:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void

    .line 135
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
