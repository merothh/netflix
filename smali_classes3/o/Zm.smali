.class public final Lo/Zm;
.super Lo/ParcelFormatException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ParcelFormatException<",
        "Lo/Zn;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lo/AC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/PooledStringWriter;ILo/AC;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lo/ParcelFormatException;-><init>(Landroid/content/Context;Lo/PooledStringWriter;I)V

    iput-object p4, p0, Lo/Zm;->d:Lo/AC;

    return-void
.end method

.method public static final synthetic a(Lo/Zm;Lo/AO;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/Zm;->d(Lo/AO;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lo/AO;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 130
    sget-object v0, Lo/YS;->a:Lo/YS;

    .line 131
    invoke-interface {p1}, Lo/AO;->getUuid()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Lo/YS;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    return-object p1
.end method

.method private final d(I)Lo/AO;
    .locals 2

    .line 122
    invoke-virtual {p0}, Lo/Zm;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lo/Zm;->d:Lo/AC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/AC;->getProfileIcons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/AO;

    :cond_0
    return-object v1
.end method

.method private final d(Lo/Zn;Lo/AO;)V
    .locals 1

    .line 76
    iget-object p1, p1, Lo/Zn;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lo/Zm$StateListAnimator;

    invoke-direct {v0, p0, p2}, Lo/Zm$StateListAnimator;-><init>(Lo/Zm;Lo/AO;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lo/Zm;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lo/Zm;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lo/Zn;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lo/Zn;

    .line 44
    iget-object v0, p0, Lo/Zm;->e:Landroid/view/LayoutInflater;

    sget v1, Lo/Zr$ActionBar;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "mInflater.inflate(R.layo\u2026_icons_pi, parent, false)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v1, p0

    check-cast v1, Lo/PatternMatcher;

    .line 46
    sget v2, Lo/Zr$Application;->e:I

    .line 42
    invoke-direct {p2, p1, v0, v1, v2}, Lo/Zn;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    return-object p2
.end method

.method public bridge synthetic b(Lo/ParcelFormatException$Activity;I)V
    .locals 0

    .line 34
    check-cast p1, Lo/Zn;

    invoke-virtual {p0, p1, p2}, Lo/Zm;->b(Lo/Zn;I)V

    return-void
.end method

.method public b(Lo/Zn;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p2}, Lo/Zm;->d(I)Lo/AO;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 52
    invoke-interface {p2}, Lo/AO;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 53
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_4

    .line 55
    iget-object v1, p1, Lo/Zn;->d:Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast v1, Lo/BaseAdapter;

    .line 56
    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 57
    iget-object v0, p1, Lo/Zn;->d:Landroid/view/View;

    check-cast v0, Lo/BaseAdapter;

    invoke-interface {p2}, Lo/AO;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v0, Lo/YS;->a:Lo/YS;

    .line 61
    invoke-direct {p0, p2}, Lo/Zm;->d(Lo/AO;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    .line 59
    invoke-virtual {v0, p2, v1}, Lo/YS;->c(Lo/AO;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lo/Zm;->d(Lo/Zn;Lo/AO;)V

    goto :goto_3

    .line 55
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.AdvancedImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Profile Picture was null in LopiAdapter.onBindCoverViewHolder"

    .line 68
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lo/Zm;->d:Lo/AC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/AC;->getProfileIcons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lo/Zm;->a(Landroid/view/ViewGroup;I)Lo/Zn;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
