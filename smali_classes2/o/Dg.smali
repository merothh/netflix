.class public Lo/Dg;
.super Lo/MultiAutoCompleteTextView;
.source ""


# direct methods
.method public constructor <init>(Lo/MultiAutoCompleteTextView$Application;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p1, v0}, Lo/MultiAutoCompleteTextView;-><init>(Lo/MultiAutoCompleteTextView$Application;Lcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method public static e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 24
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 25
    instance-of v2, v1, Lo/ResourceCursorTreeAdapter;

    if-eqz v2, :cond_1

    .line 26
    check-cast v1, Lo/ResourceCursorTreeAdapter;

    invoke-virtual {v1}, Lo/ResourceCursorTreeAdapter;->h()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
