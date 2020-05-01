.class public final Lo/FO$PendingIntent;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FO;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/FO;


# direct methods
.method constructor <init>(Lo/FO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lo/FO$PendingIntent;->d:Lo/FO;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_2

    .line 141
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 142
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/MultiAutoCompleteTextView;

    invoke-virtual {v0, p2, p1}, Lo/MultiAutoCompleteTextView;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    const/16 v0, 0xff

    if-eqz p1, :cond_0

    int-to-float v1, v0

    const-string v2, "firstView"

    .line 148
    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    neg-float p2, p2

    iget-object v2, p0, Lo/FO$PendingIntent;->d:Lo/FO;

    invoke-static {v2}, Lo/FO;->b(Lo/FO;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    mul-float v1, v1, p2

    float-to-int p2, v1

    .line 146
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 154
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.RecyclerViewHeaderAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 157
    :goto_0
    iget-object p2, p0, Lo/FO$PendingIntent;->d:Lo/FO;

    .line 158
    new-instance v0, Lo/FP$ActionBar;

    invoke-direct {v0, p3, p1}, Lo/FP$ActionBar;-><init>(IZ)V

    .line 157
    invoke-virtual {p2, v0}, Lo/FO;->e(Ljava/lang/Object;)V

    return-void
.end method
