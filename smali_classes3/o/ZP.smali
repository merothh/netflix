.class public final Lo/ZP;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZP$StateListAnimator;,
        Lo/ZP$TaskDescription;,
        Lo/ZP$Application;,
        Lo/ZP$ActionBar;,
        Lo/ZP$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/ZP$Activity;

.field private static final j:I


# instance fields
.field private a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final b:F

.field private d:Lo/Bz;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bx;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lo/ZP$ActionBar;

.field private i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/ZP$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZP$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZP;->c:Lo/ZP$Activity;

    const/16 v0, 0x12

    int-to-float v0, v0

    .line 318
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 319
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 318
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lo/ZP;->j:I

    return-void
.end method

.method public constructor <init>(Lo/ZP$ActionBar;)V
    .locals 1

    const-string v0, "uiViewCallback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/ZP;->g:Lo/ZP$ActionBar;

    const/high16 p1, 0x3f100000    # 0.5625f

    .line 58
    iput p1, p0, Lo/ZP;->b:F

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/ZP;->e:Ljava/util/List;

    .line 64
    new-instance p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v0, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object p1, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/ZP;->f:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 35
    sget v0, Lo/ZP;->j:I

    return v0
.end method

.method public static final synthetic a(Lo/ZP;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/ZP;->d(I)V

    return-void
.end method

.method public static final synthetic b(Lo/ZP;)F
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/ZP;->c()F

    move-result p0

    return p0
.end method

.method private final b(I)V
    .locals 5

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 214
    iget-object v1, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-static {v1, p1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v1, :cond_0

    .line 215
    iget-object v2, p0, Lo/ZP;->g:Lo/ZP$ActionBar;

    .line 219
    iget-object v3, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v3, v1, p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    .line 220
    iget-object v3, p0, Lo/ZP;->f:Ljava/util/Map;

    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Bx;

    .line 216
    new-instance v4, Lo/ZR$LoaderManager;

    invoke-direct {v4, v1, p1, v0, v3}, Lo/ZR$LoaderManager;-><init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;)V

    check-cast v4, Lo/ZR;

    .line 215
    invoke-interface {v2, v4}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    :cond_0
    return-void
.end method

.method private final b(Lcom/netflix/model/leafs/SearchCollectionEntity;Lo/BaseAdapter;)V
    .locals 2

    .line 190
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getPreQueryImgUrl()Ljava/lang/String;

    move-result-object p1

    .line 191
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 192
    invoke-virtual {p2, p1}, Lo/BaseAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 194
    :cond_2
    new-instance v0, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->h(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    :goto_2
    return-void
.end method

.method public static final synthetic b(Lo/ZP;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/ZP;->e(I)V

    return-void
.end method

.method private final c()F
    .locals 1

    .line 51
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3eaaaaab

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 310
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 52
    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_1
    const v0, 0x3e2aaaab

    :goto_0
    return v0
.end method

.method public static final synthetic c(Lo/ZP;)F
    .locals 0

    .line 35
    iget p0, p0, Lo/ZP;->b:F

    return p0
.end method

.method private final d(I)V
    .locals 5

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 201
    iget-object v1, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-static {v1, p1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v1, :cond_0

    .line 202
    iget-object v2, p0, Lo/ZP;->g:Lo/ZP$ActionBar;

    .line 203
    new-instance v3, Lo/ZR$ComponentCallbacks2;

    .line 206
    iget-object v4, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v4, v1, p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    .line 203
    invoke-direct {v3, v1, p1, v0}, Lo/ZR$ComponentCallbacks2;-><init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v3, Lo/ZR;

    .line 202
    invoke-interface {v2, v3}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    :cond_0
    return-void
.end method

.method private final e(I)V
    .locals 5

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 228
    iget-object v1, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-static {v1, p1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v1, :cond_0

    .line 229
    iget-object v2, p0, Lo/ZP;->g:Lo/ZP$ActionBar;

    .line 230
    new-instance v3, Lo/ZR$Application;

    .line 233
    iget-object v4, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v4, v1, p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    .line 230
    invoke-direct {v3, v1, p1, v0}, Lo/ZR$Application;-><init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v3, Lo/ZR;

    .line 229
    invoke-interface {v2, v3}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lo/ZP;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/ZP;->b(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 176
    iget-object v1, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-static {v1, p1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v1, :cond_0

    .line 177
    sget-object v2, Lo/ZP;->c:Lo/ZP$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 180
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 181
    iget-object v3, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v3, v1, p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 179
    invoke-static {v2, p1}, Lo/Zy;->a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Lo/Bz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;",
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;",
            "Lo/Bz;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lo/ZP;->e:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object p1, p0, Lo/ZP;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p2, :cond_1

    .line 77
    check-cast p2, Ljava/lang/Iterable;

    .line 311
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Bx;

    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lo/ZP;->f:Ljava/util/Map;

    invoke-interface {p2}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video.id"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_1
    iput-object p3, p0, Lo/ZP;->d:Lo/Bz;

    if-eqz p3, :cond_2

    .line 84
    iget-object p1, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    check-cast p3, Lo/Bv;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 87
    :cond_2
    iget-object p1, p0, Lo/ZP;->d:Lo/Bz;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lo/Bz;->getListType()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 88
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Prequery search ListSummary\'s listType shouldn\'t be null"

    .line 89
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 91
    :cond_4
    invoke-virtual {p0}, Lo/ZP;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 168
    iget-object v0, p0, Lo/ZP;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 169
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    const/4 v0, 0x0

    .line 171
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/ZP;->i:Ljava/lang/Long;

    return-void
.end method

.method public final d()V
    .locals 2

    .line 154
    iget-object v0, p0, Lo/ZP;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lo/ZP;->b()V

    .line 159
    :cond_0
    iget-object v0, p0, Lo/ZP;->d:Lo/Bz;

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 162
    iget-object v1, p0, Lo/ZP;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 160
    invoke-static {v0, v1}, Lo/Zy;->e(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/ZP;->i:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/ZP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 116
    iget-object v1, p0, Lo/ZP;->e:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getEntityType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "video"

    invoke-static {v1, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    instance-of v0, p1, Lo/ZP$Application;

    if-eqz v0, :cond_1

    .line 125
    check-cast p1, Lo/ZP$Application;

    invoke-virtual {p1}, Lo/ZP$Application;->e()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lo/ZP;->d:Lo/Bz;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lo/Bz;->getDisplayTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 127
    :cond_1
    instance-of v0, p1, Lo/ZP$StateListAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lo/ZP;->e:Ljava/util/List;

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 129
    check-cast p1, Lo/ZP$StateListAnimator;

    invoke-virtual {p1}, Lo/ZP$StateListAnimator;->b()Lo/BaseAdapter;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lo/ZP$StateListAnimator;->e()Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {p2}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 132
    invoke-direct {p0, p2, v0}, Lo/ZP;->b(Lcom/netflix/model/leafs/SearchCollectionEntity;Lo/BaseAdapter;)V

    .line 133
    invoke-virtual {p1}, Lo/ZP$StateListAnimator;->a()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v3, Lo/amj;->c:Lo/amj;

    .line 134
    invoke-virtual {p1}, Lo/ZP$StateListAnimator;->a()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "holder.playIcon.context"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lo/Zt$Fragment;->d:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "holder.playIcon.context.\u2026.accesibility_play_video)"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 135
    invoke-interface {p2}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 133
    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    :cond_2
    instance-of v0, p1, Lo/ZP$TaskDescription;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lo/ZP;->e:Ljava/util/List;

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 140
    check-cast p1, Lo/ZP$TaskDescription;

    invoke-virtual {p1}, Lo/ZP$TaskDescription;->e()Lo/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lo/DropDownListView;->d()Lo/BaseAdapter;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lo/ZP$TaskDescription;->a()Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {p2}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p1}, Lo/ZP$TaskDescription;->e()Lo/DropDownListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/DropDownListView;->setVisibility(I)V

    .line 143
    invoke-direct {p0, p2, v0}, Lo/ZP;->b(Lcom/netflix/model/leafs/SearchCollectionEntity;Lo/BaseAdapter;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 99
    sget v1, Lo/Zt$LoaderManager;->h:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lo/ZP$Application;

    if-eqz p1, :cond_0

    check-cast p1, Lo/ImageSwitcher;

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p2, p0, p1}, Lo/ZP$Application;-><init>(Lo/ZP;Landroid/widget/TextView;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p2

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    const-string v2, "view"

    if-ne p2, v1, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 103
    sget v1, Lo/Zt$LoaderManager;->l:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    new-instance p2, Lo/ZP$StateListAnimator;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lo/ZP$StateListAnimator;-><init>(Lo/ZP;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p2

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 107
    sget v1, Lo/Zt$LoaderManager;->j:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    new-instance p2, Lo/ZP$TaskDescription;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lo/ZP$TaskDescription;-><init>(Lo/ZP;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 150
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/ZP;->a(I)V

    return-void
.end method
