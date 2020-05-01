.class public Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
.super Lo/GG;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;


# instance fields
.field private h:Ljava/lang/Long;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/aka;

.field private final l:Lo/aka;

.field private final m:Lo/aka;

.field private final n:Lo/HX;

.field private o:Ljava/lang/Long;

.field private final p:Lo/GL;

.field private final q:I

.field private final r:Landroid/content/BroadcastReceiver;

.field private s:Ljava/util/HashMap;

.field public sharing:Lo/WebViewProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final t:Lo/Id;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "extrasRecyclerView"

    const-string v5, "getExtrasRecyclerView()Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasRecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "swipeRefreshLayout"

    const-string v4, "getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->b:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lo/GG;-><init>()V

    .line 105
    sget v0, Lo/GS$Dialog;->f:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->i:Lo/ams;

    .line 107
    sget v0, Lo/GS$Dialog;->B:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->j:Lo/ams;

    .line 113
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasHighlighter$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v1, Lo/alB;

    invoke-static {v0, v1}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->m:Lo/aka;

    .line 118
    invoke-static {}, Lo/ady;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lo/HX;

    invoke-direct {v0}, Lo/HX;-><init>()V

    .line 118
    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->n:Lo/HX;

    .line 121
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasFeedViewModel$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasFeedViewModel$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v2, Lo/alB;

    invoke-static {v0, v2}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->k:Lo/aka;

    .line 126
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasNotificationsViewModel$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasNotificationsViewModel$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v2, Lo/alB;

    invoke-static {v0, v2}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->l:Lo/aka;

    .line 131
    invoke-static {}, Lo/adk;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 132
    :cond_1
    new-instance v0, Lo/GL;

    invoke-direct {v0}, Lo/GL;-><init>()V

    .line 131
    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->p:Lo/GL;

    .line 143
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$StateListAnimator;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->r:Landroid/content/BroadcastReceiver;

    .line 153
    sget-object v0, Lo/GO;->b:Lo/GO$ActionBar;

    invoke-virtual {v0}, Lo/GO$ActionBar;->c()Lo/m;

    move-result-object v0

    invoke-interface {v0}, Lo/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 155
    :cond_2
    new-instance v1, Lo/Id;

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasSnapHelper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasSnapHelper$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v0, Lo/alA;

    invoke-direct {v1, v0}, Lo/Id;-><init>(Lo/alA;)V

    .line 153
    :goto_2
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->t:Lo/Id;

    .line 161
    sget v0, Lo/GS$FragmentManager;->a:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->q:I

    return-void
.end method

.method private final A()Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->v()Lo/GL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final C()Lo/Ic;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->m:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ic;

    return-object v0
.end method

.method private final D()Lo/TypeVariable;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TypeVariable;

    return-object v0
.end method

.method private final F()Landroid/content/Intent;
    .locals 3

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.netflix.com/browse"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.netflix.mediaclient"

    .line 753
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private final I()Ljava/lang/String;
    .locals 1

    const-string v0, "listName=specials&source=bixbyhome&input=cta"

    return-object v0
.end method

.method private final a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;IIJ)Lo/afI;
    .locals 11

    .line 796
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->s()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 798
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "suppVideoId"

    .line 799
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 802
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid suppVideoId, expected number, got \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' (postId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-interface {v2, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v10, v1

    .line 809
    invoke-interface {p3}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListId()Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-virtual {p2}, Lo/GK;->z()Lo/Bv;

    move-result-object v4

    .line 811
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v0

    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "topNodeVideo.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 812
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    move/from16 v2, p5

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->e(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v6

    .line 808
    new-instance v0, Lo/afI;

    move-object v2, v0

    move v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lo/afI;-><init>(Ljava/lang/String;Lo/Bv;ILjava/lang/String;IJLorg/json/JSONObject;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;IIJ)Lo/afI;
    .locals 0

    .line 89
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;IIJ)Lo/afI;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->o:Ljava/lang/Long;

    return-void
.end method

.method private final d(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 0

    if-eqz p1, :cond_0

    .line 744
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->F()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    .line 766
    invoke-static {p2}, Lo/az;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-static {p1, p2}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    const-string p2, "DeepLinkHandlerFactory.handle(activity, intent)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 769
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.netflix.com/title/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringBuilder(\"https://w\u2026itle/\")?.append(parentId)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "?"

    .line 759
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->I()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.netflix.mediaclient"

    .line 761
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)Ljava/lang/Long;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->o:Ljava/lang/Long;

    return-object p0
.end method

.method private final e(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AG;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 780
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 781
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AG;

    invoke-virtual {p1}, Lo/AG;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final e(Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 7

    .line 874
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    .line 557
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskStackBuilder;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskStackBuilder;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "eventBusFactory.getSafeM\u2026ilter { isFragmentValid }"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final B()Lo/WebViewProvider;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->sharing:Lo/WebViewProvider;

    if-nez v0, :cond_0

    const-string v1, "sharing"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected a(Lo/If;Lo/UnicodeScript;)Lo/Ic;
    .locals 7

    const-string v0, "extrasRecyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance p2, Lo/Ic;

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, p0

    check-cast v3, Lo/UnicodeScript;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lo/Ic;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/UnicodeScript;ZILo/amc;)V

    return-object p2
.end method

.method public final a(Lo/GX;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-interface {p1}, Lo/GX;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {p1}, Lo/GX;->k()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-interface {p1}, Lo/GX;->k()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v2

    invoke-virtual {v2}, Lo/GK;->x()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 432
    new-instance v1, Lo/GY$ActionBar$ActionBar;

    .line 433
    invoke-interface {p1}, Lo/GX;->k()I

    move-result v2

    .line 434
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result v0

    .line 432
    invoke-direct {v1, v2, v0}, Lo/GY$ActionBar$ActionBar;-><init>(II)V

    check-cast v1, Lo/VintfObject;

    .line 833
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    .line 834
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 835
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 438
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-interface {p1}, Lo/GX;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/GK;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GK;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    .line 439
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-interface {p1}, Lo/GX;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GK;->e(Ljava/lang/Integer;)V

    .line 441
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-interface {p1}, Lo/GX;->m()Lo/GW;

    move-result-object p1

    invoke-virtual {p1}, Lo/GW;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/GK;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {v0}, Lo/GK;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    .line 509
    :goto_0
    new-instance v1, Lo/GY$ActionBar$StateListAnimator;

    invoke-direct {v1, v0, p1}, Lo/GY$ActionBar$StateListAnimator;-><init>(II)V

    check-cast v1, Lo/VintfObject;

    .line 848
    sget-object p1, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p1, p0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    .line 849
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 850
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_1
    return-void
.end method

.method protected c()Lo/GK;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->k:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GK;

    return-object v0
.end method

.method protected final d()Lo/If;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/If;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->g:I

    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 872
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 1

    const-string v0, "extrasEpoxyController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    check-cast v0, Lo/BadPaddingException;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->addModelBuildListener(Lo/BadPaddingException;)V

    return-void
.end method

.method protected g()Lo/GN;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->l:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GN;

    return-object v0
.end method

.method public i()Z
    .locals 3

    .line 464
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {v0}, Lo/GK;->d()Ljava/lang/Integer;

    move-result-object v0

    .line 465
    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-virtual {v1}, Lo/GK;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 469
    new-instance v1, Lo/GY$ActionBar$Activity;

    .line 470
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 469
    invoke-direct {v1, v2, v0}, Lo/GY$ActionBar$Activity;-><init>(ZI)V

    check-cast v1, Lo/VintfObject;

    .line 842
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    .line 843
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 844
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 5

    .line 518
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    invoke-virtual {v0}, Lo/If;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 519
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 521
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    const/16 v4, 0x32

    if-le v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 525
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    check-cast v0, Lo/MessagePdu;

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    .line 532
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 533
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->x()Lo/Id;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/Id;->c()V

    .line 534
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/If;->scrollToPosition(I)V

    goto :goto_2

    .line 539
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->x()Lo/Id;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lo/Id;->c()V

    .line 541
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/If;->smoothScrollToPosition(I)V

    :goto_2
    return v2

    .line 518
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-super {p0, p1}, Lo/GG;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->v()Lo/GL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v3

    .line 457
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->C()Lo/Ic;

    move-result-object v4

    .line 458
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v5

    move-object v2, p0

    move-object v6, p1

    .line 454
    invoke-virtual/range {v1 .. v6}, Lo/GL;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/If;Lo/Ic;Lo/GK;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->y()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 449
    invoke-super {p0}, Lo/GG;->onDestroyView()V

    .line 450
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->z()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {v0}, Lo/GK;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 406
    new-instance v1, Lo/GY$ActionBar$StateListAnimator;

    const/16 v2, 0x28

    invoke-direct {v1, v0, v2}, Lo/GY$ActionBar$StateListAnimator;-><init>(II)V

    check-cast v1, Lo/VintfObject;

    .line 829
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    .line 830
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 831
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/GK;->d(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->o:Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 414
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 415
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->o:Ljava/lang/Long;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h:Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 418
    :cond_2
    invoke-super {p0}, Lo/GG;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 388
    invoke-super {p0}, Lo/GG;->onResume()V

    .line 389
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/GK;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    .line 390
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    invoke-virtual {v0}, Lo/GK;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 392
    new-instance v1, Lo/GY$ActionBar$StateListAnimator;

    const/16 v2, 0x29

    invoke-direct {v1, v0, v2}, Lo/GY$ActionBar$StateListAnimator;-><init>(II)V

    check-cast v1, Lo/VintfObject;

    .line 825
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    .line 826
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 827
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 400
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->newsFeed:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h:Ljava/lang/Long;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 383
    invoke-super {p0}, Lo/GG;->onStart()V

    .line 384
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->v()Lo/GL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/GL;->a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/GK;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->v()Lo/GL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/GL;->c()V

    .line 423
    :cond_0
    invoke-super {p0}, Lo/GG;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1, p2}, Lo/GG;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object p1

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    invoke-virtual {v0}, Lo/If;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 177
    invoke-direct {p2, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p1, p2}, Lo/If;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 183
    sget-object p1, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object p2, p0

    check-cast p2, Lo/UnicodeScript;

    invoke-virtual {p1, p2}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    .line 185
    new-instance p2, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v3

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v4

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->g()Lo/GN;

    move-result-object v5

    .line 189
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->C()Lo/Ic;

    move-result-object v6

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v8, v0

    check-cast v8, Lo/GH;

    move-object v2, p2

    move-object v7, p1

    .line 185
    invoke-direct/range {v2 .. v8}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;-><init>(ZLo/GK;Lo/GN;Lo/Ic;Lo/UpdateEngine;Lo/GH;)V

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->D()Lo/TypeVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lo/TypeVariable;->setEnabled(Z)V

    .line 196
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Application;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v1, Lo/TypeVariable$ActionBar;

    invoke-virtual {v0, v1}, Lo/TypeVariable;->setOnRefreshListener(Lo/TypeVariable$ActionBar;)V

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-virtual {v1}, Lo/GK;->q()Lio/reactivex/Observable;

    move-result-object v1

    .line 820
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p0, v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v2

    const-string v3, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 821
    check-cast v2, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v2}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableConverter;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/uber/autodispose/ObservableSubscribeProxy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 203
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$1$2;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$1$2;-><init>(Lo/TypeVariable;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 206
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$PendingIntent;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v0, Lo/BadPaddingException;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->addModelBuildListener(Lo/BadPaddingException;)V

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->x()Lo/Id;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lo/Id;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    :cond_1
    new-instance v0, Lo/DoubleBinaryOperator;

    invoke-direct {v0}, Lo/DoubleBinaryOperator;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lo/OfPrimitive;

    invoke-virtual {v0, v1}, Lo/If;->setController(Lo/OfPrimitive;)V

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {v0, v1}, Lo/If;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->e(Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    .line 218
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestModelBuild()V

    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->r:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->n:Lo/HX;

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;

    invoke-direct {v2, v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;-><init>(Lo/HX;Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 822
    :cond_2
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 265
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v5

    const-string v0, "eventBusFactory.getSafeM\u2026dSchedulers.mainThread())"

    invoke-static {v5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 266
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    move-object v8, v0

    check-cast v8, Lo/alA;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 823
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$LoaderManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$LoaderManager;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    const-string v0, "eventBusFactory.getSafeM\u2026  .distinctUntilChanged()"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 284
    new-instance v4, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    check-cast v4, Lo/alA;

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 307
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 824
    const-class v1, Lo/GY;

    invoke-virtual {p1, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    .line 310
    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Fragment;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Fragment;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 315
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$10;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$10;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 342
    :cond_3
    sget-object p1, Lo/ab;->d:Lo/ab$StateListAnimator;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    invoke-virtual {v0}, Lo/If;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "extrasRecyclerView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/ab$StateListAnimator;->c(Landroid/content/Context;)Lo/ab;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "extras_scroll"

    invoke-interface {p1, v0, v1}, Lo/ab;->d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    return-void

    .line 191
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.extras.ExtrasFeedActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected v()Lo/GL;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->p:Lo/GL;

    return-object v0
.end method

.method protected x()Lo/Id;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->t:Lo/Id;

    return-object v0
.end method

.method protected y()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->q:I

    return v0
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->s:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
