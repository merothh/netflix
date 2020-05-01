.class public final Lo/Zh;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Zh$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter<",
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/Zh$StateListAnimator;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Zh$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Zh$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Zh;->e:Lo/Zh$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/PooledStringWriter;

    const/4 v2, 0x0

    .line 33
    invoke-static {v2}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 34
    invoke-virtual {v3, v0}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    const/high16 v4, 0x3e800000    # 0.25f

    .line 35
    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 36
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 39
    invoke-static {p1}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v4

    .line 41
    invoke-static {p1}, Lo/adq;->c(Landroid/content/Context;)I

    move-result v5

    .line 38
    invoke-static {v4, v5}, Lo/Lq;->a(II)I

    move-result v4

    .line 37
    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 45
    invoke-static {}, Lo/Lq;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lo/Zr$TaskDescription;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v0}, Lo/PooledStringWriter$TaskDescription;->i(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v0

    aput-object v0, v1, v2

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;-><init>(Landroid/content/Context;[Lo/PooledStringWriter;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/Zh;->c:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lo/Zh;->e()V

    return-void
.end method

.method private final a(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/Zj;
    .locals 4

    .line 114
    new-instance v0, Lo/Zj;

    .line 115
    iget-object v1, p0, Lo/Zh;->d:Landroid/view/LayoutInflater;

    .line 116
    sget v2, Lo/Zr$ActionBar;->d:I

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "mInflater.inflate(\n     \u2026      false\n            )"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {v0, p1, p2}, Lo/Zj;-><init>(Landroid/view/View;Lo/PooledStringWriter;)V

    return-object v0
.end method

.method private final e(Lo/Zj;ILo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Zj;",
            "I",
            "Lo/ParcelFormatException<",
            "*>;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p2}, Lo/Zh;->h(I)Lo/AC;

    move-result-object p2

    if-nez p2, :cond_0

    .line 167
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "List of Profile Picture was null in LolopiAdapter.bindListOfPicturesView"

    .line 168
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_0
    invoke-interface {p2}, Lo/AC;->getRowImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 174
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v4, 0x8

    if-nez v1, :cond_3

    .line 175
    invoke-virtual {p1}, Lo/Zj;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-virtual {p1}, Lo/Zj;->e()Lo/BaseAdapter;

    move-result-object v1

    .line 177
    new-instance v4, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 178
    invoke-virtual {v4, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 180
    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 182
    invoke-virtual {p1}, Lo/Zj;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-interface {p2}, Lo/AC;->getRowTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1}, Lo/Zj;->e()Lo/BaseAdapter;

    move-result-object p2

    invoke-virtual {p2, v3}, Lo/BaseAdapter;->setVisibility(I)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {p1}, Lo/Zj;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/BaseAdapter;->setVisibility(I)V

    .line 186
    invoke-virtual {p1}, Lo/Zj;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lo/AC;->getRowTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p1}, Lo/Zj;->d()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_2
    iget-object p2, p1, Lo/Zj;->b:Lo/ParcelableParcel;

    const-string v0, "holder.recyclerView"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p2, p3}, Lo/ParcelableParcel;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 191
    iget-object p2, p1, Lo/Zj;->b:Lo/ParcelableParcel;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Row "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Zj;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/ParcelableParcel;->setTrackingName(Ljava/lang/String;)V

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Zj;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Zj;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_4

    .line 194
    iget-object p1, p1, Lo/Zj;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_4
    return-void
.end method

.method private final h(I)Lo/AC;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lo/Zh;->d()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lo/Zh;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AC;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a()Lo/PooledStringWriter;
    .locals 2

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lo/Zh;->a(I)Lo/PooledStringWriter;

    move-result-object v0

    const-string v1, "getRowConfigByType(TYPE_LOMO_FREE)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lo/AD;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lo/Zh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lo/Zh;->c:Ljava/util/List;

    invoke-interface {p1}, Lo/AD;->getListOfListOfProfileIcons()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {p0}, Lo/Zh;->b()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 76
    iget-object v0, p0, Lo/Zh;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lo/PooledStringWriter;->n()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0, p1, p2}, Lo/Zh;->a(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/Zj;

    move-result-object p1

    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;

    return-object p1

    .line 107
    :cond_0
    sget-object p1, Lo/Zh;->e:Lo/Zh$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LolopiAdapter.onCreateViewHolder should not reach the else block. A view type not implemented?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public d(Landroid/content/Context;Lo/PooledStringWriter;I)Lo/ParcelFormatException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/PooledStringWriter;",
            "I)",
            "Lo/ParcelFormatException<",
            "*>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lo/Zm;

    .line 96
    invoke-direct {p0, p3}, Lo/Zh;->h(I)Lo/AC;

    move-result-object v1

    .line 92
    invoke-direct {v0, p1, p2, p3, v1}, Lo/Zm;-><init>(Landroid/content/Context;Lo/PooledStringWriter;ILo/AC;)V

    check-cast v0, Lo/ParcelFormatException;

    return-object v0
.end method

.method public e(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;ILo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;",
            "I",
            "Lo/ParcelFormatException<",
            "*>;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomoAdapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    instance-of v0, p1, Lo/Zj;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, p2}, Lo/Zh;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "LolopiAdapter.onBindViewHolder should not reach the else block. A view type not implemented?"

    .line 139
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    check-cast p1, Lo/Zj;

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Zh;->e(Lo/Zj;ILo/ParcelFormatException;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "LolopiAdapter.onBindViewHolder, holder was not LolopiRowViewHolder?"

    .line 144
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
