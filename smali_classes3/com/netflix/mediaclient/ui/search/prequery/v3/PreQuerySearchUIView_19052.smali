.class public Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;
.super Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Application;
    }
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;

.field public static final d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Application;


# instance fields
.field public e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field private final f:Lo/ams;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lo/ZU;

.field private j:I

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/UpdateEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "tabLayout"

    const-string v4, "getTabLayout()Lcom/google/android/material/tabs/TabLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->c:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->o:Lo/UpdateEngine;

    .line 35
    sget p1, Lo/Zt$Application;->C:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->f:Lo/ams;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->m:Ljava/util/HashMap;

    .line 57
    new-instance p1, Lo/DoubleBinaryOperator;

    invoke-direct {p1}, Lo/DoubleBinaryOperator;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 30
    sget-object p2, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j:I

    return p0
.end method

.method private final a(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/tabs/TabLayout;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 71
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 326
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getDisplayString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Activity;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$Activity;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;Ljava/util/List;)V

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;Landroidx/recyclerview/widget/RecyclerView;IIILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, -0x1

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: smoothSnapToPosition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)Z
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->h:I

    return p0
.end method

.method private final d(Lcom/netflix/model/leafs/SearchSectionSummary;)I
    .locals 4

    .line 130
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCarousel"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoGallery"

    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ZU;->e()Z

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSuggestedNumOfVideos()I

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/16 p1, 0xc

    const/16 v1, 0xc

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    const/4 v1, 0x7

    goto :goto_0

    .line 138
    :cond_4
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoList"

    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_5

    .line 140
    invoke-virtual {v0}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, p1

    :cond_5
    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method private final d(Lo/ZU;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    if-nez v0, :cond_0

    const-string v1, "epoxyController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->setData(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->q()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method private final q()Lcom/google/android/material/tabs/TabLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final u()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->h()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 329
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v3, Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 184
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchSectionSummary;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final v()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->d(Lcom/netflix/model/leafs/SearchSectionSummary;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->h:I

    const/4 v1, 0x1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->d(Lcom/netflix/model/leafs/SearchSectionSummary;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j:I

    .line 124
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j:I

    :cond_2
    :goto_1
    return-void
.end method

.method private final x()V
    .locals 9

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_7

    .line 277
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, ""

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 335
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Lo/akz;->c()V

    :cond_2
    check-cast v2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 280
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 281
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->m:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/netflix/model/leafs/SearchSectionSummary;->getReferenceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    invoke-interface {v2}, Lcom/netflix/model/leafs/SearchSectionSummary;->getReferenceId()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-interface {v2}, Lcom/netflix/model/leafs/SearchSectionSummary;->getFeature()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v3

    .line 282
    :goto_2
    invoke-static {v4, v6}, Lo/Zy;->d(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 286
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->m:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v2}, Lcom/netflix/model/leafs/SearchSectionSummary;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    const-string v8, "section.referenceId"

    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v4, v5

    goto :goto_1

    .line 290
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchSectionSummary;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getFeature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    invoke-static {v0, v1}, Lo/Zy;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lo/ZU;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->u()V

    .line 155
    sget-object v0, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/eM$Application;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->q()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->a(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;)V

    .line 158
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->v()V

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->q()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 169
    :goto_0
    invoke-virtual {p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 170
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->d(Lo/ZU;)V

    .line 172
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->n()V

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->x()V

    goto :goto_2

    .line 150
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->b()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "$this$smoothSnapToPosition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$ActionBar;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p3, p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$ActionBar;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 111
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$ActionBar;->a(I)V

    .line 112
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 62
    sget v0, Lo/Zt$LoaderManager;->a:I

    return v0
.end method

.method public l()V
    .locals 7

    .line 189
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->l()V

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    move-object v1, p0

    check-cast v1, Lo/ZP$ActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->h()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->o:Lo/UpdateEngine;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "recyclerView.context"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;-><init>(Lo/ZP$ActionBar;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    if-nez v0, :cond_0

    const-string v1, "epoxyController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    instance-of v1, v1, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->j()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 195
    move-object v2, v0

    check-cast v2, Lo/OfPrimitive;

    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    .line 197
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 198
    invoke-virtual {v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 197
    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 203
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    .line 202
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 206
    invoke-virtual {v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getItemDecorationCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 207
    invoke-virtual {v1, v3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_1
    sget-object v2, Lo/eM;->e:Lo/eM$Application;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :cond_2
    invoke-virtual {v2, v6}, Lo/eM$Application;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    new-instance v2, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;

    invoke-direct {v2, v0, p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 231
    :cond_3
    new-instance v2, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$StateListAnimator;

    invoke-direct {v2, v0, p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    goto :goto_1

    .line 194
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.airbnb.epoxy.EpoxyRecyclerView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public m()I
    .locals 1

    .line 66
    sget v0, Lo/Zt$Application;->n:I

    return v0
.end method

.method public n()V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->r()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->i:Lo/ZU;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_5

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lo/akz;->c()V

    :cond_3
    check-cast v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 259
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    sget-object v4, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v4, v1}, Lo/Zy;->e(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "SearchLogUtils.startPres\u2026ppView.searchResults, it)"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    .line 264
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 265
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 263
    invoke-static {v1, v2}, Lo/Zy;->e(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SearchLogUtils.startPres\u2026                        )"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final p()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->m:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->m:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 339
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 315
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 321
    invoke-static {}, Lo/Zy;->e()V

    :cond_2
    return-void
.end method

.method public r()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 337
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 299
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method
