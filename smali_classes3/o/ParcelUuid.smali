.class public Lo/ParcelUuid;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ParcelUuid$ActionBar;,
        Lo/ParcelUuid$Application;,
        Lo/ParcelUuid$StateListAnimator;,
        Lo/ParcelUuid$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter<",
        "Lo/ParcelUuid$TaskDescription;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lo/PooledStringWriter;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lo/PooledStringWriter;

    .line 38
    invoke-virtual {p2}, Lo/PooledStringWriter;->s()Lo/PooledStringWriter$TaskDescription;

    move-result-object p2

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p2, v1}, Lo/PooledStringWriter$TaskDescription;->g(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p2

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 40
    invoke-virtual {p2, v2}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p2

    aput-object p2, v0, v1

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;-><init>(Landroid/content/Context;[Lo/PooledStringWriter;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/ParcelUuid$TaskDescription;
    .locals 4

    .line 63
    new-instance v0, Lo/ParcelUuid$TaskDescription;

    iget-object v1, p0, Lo/ParcelUuid;->d:Landroid/view/LayoutInflater;

    sget v2, Lo/IHwInterface$LoaderManager;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v1, Lo/IHwInterface$FragmentManager;->f:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lo/ParcelUuid$TaskDescription;-><init>(Landroid/view/View;Lo/PooledStringWriter;ILo/ParcelUuid$5;)V

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public synthetic d(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lo/ParcelUuid;->c(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/ParcelUuid$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;Lo/PooledStringWriter;I)Lo/ParcelFormatException;
    .locals 2

    .line 58
    new-instance v0, Lo/ParcelUuid$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lo/ParcelUuid$StateListAnimator;-><init>(Landroid/content/Context;Lo/PooledStringWriter;ILo/ParcelUuid$5;)V

    return-object v0
.end method

.method public e(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic e(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;ILo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 0

    .line 30
    check-cast p1, Lo/ParcelUuid$TaskDescription;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/ParcelUuid;->e(Lo/ParcelUuid$TaskDescription;ILo/ParcelFormatException;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected e(Lo/ParcelUuid$TaskDescription;ILo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 0

    .line 68
    iget-object p2, p1, Lo/ParcelUuid$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p2, p3}, Lo/ParcelableParcel;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 69
    iget-object p2, p1, Lo/ParcelUuid$TaskDescription;->b:Lo/ParcelableParcel;

    invoke-virtual {p3, p2, p1}, Lo/ParcelFormatException;->b(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V

    if-eqz p4, :cond_0

    .line 71
    iget-object p1, p1, Lo/ParcelUuid$TaskDescription;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
