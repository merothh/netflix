.class public Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lo/Ly$Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;,
        Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;,
        Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;,
        Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lo/Ly$Activity<",
        "Lo/Ax;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/view/TextureView;

.field private C:Z

.field private D:Lo/Db;

.field private E:I

.field private final H:Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

.field private b:Landroid/widget/TextView;

.field private c:Lo/BaseAdapter;

.field private d:Lo/BaseAdapter;

.field private e:Landroid/view/View;

.field protected f:Lo/RemoteViewsListAdapter;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/Button;

.field protected j:Landroid/widget/TextView;

.field protected k:Lo/UpdateEngine;

.field protected l:Lo/Oc;

.field protected m:Lo/ListView;

.field protected n:Landroid/widget/Button;

.field protected o:Landroid/widget/Button;

.field protected p:Ljava/lang/String;

.field protected q:Lo/ResourceCursorAdapter;

.field protected r:Ljava/lang/String;

.field protected s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field protected t:Landroid/widget/FrameLayout;

.field protected u:Landroid/view/View$OnClickListener;

.field protected v:Ljava/lang/String;

.field protected w:Lo/Ax;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 213
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lo/UnicodeScript;

    invoke-static {p1, v0}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    invoke-static {p1}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->k:Lo/UpdateEngine;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    .line 121
    sget-object p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->A:Ljava/lang/String;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->z:Z

    .line 134
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->H:Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    .line 623
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->u:Landroid/view/View$OnClickListener;

    .line 214
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lo/UnicodeScript;

    invoke-static {p1, p2}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    invoke-static {p1}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->k:Lo/UpdateEngine;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    .line 121
    sget-object p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->A:Ljava/lang/String;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->z:Z

    .line 134
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->H:Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    .line 623
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->u:Landroid/view/View$OnClickListener;

    .line 219
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lo/UnicodeScript;

    invoke-static {p1, p2}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    invoke-static {p1}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->k:Lo/UpdateEngine;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    .line 121
    sget-object p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->A:Ljava/lang/String;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->z:Z

    .line 134
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->H:Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    .line 623
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->u:Landroid/view/View$OnClickListener;

    .line 224
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h()V

    return-void
.end method

.method private a(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 888
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getDateBadge()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 889
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 891
    :goto_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 892
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 894
    invoke-virtual {v3, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    sget-object v3, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 895
    invoke-virtual {v0, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 892
    invoke-virtual {p1, v0}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 897
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 898
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    invoke-virtual {p1, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 899
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 901
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    invoke-virtual {p1, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 903
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 905
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private a(Lo/Ax;)V
    .locals 6

    .line 550
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BillboardView"

    const-string v0, "Manager is null/notReady - can\'t reload data"

    .line 552
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 556
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 558
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v1

    .line 564
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    .line 570
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_3

    .line 571
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n:Landroid/widget/Button;

    invoke-virtual {p0, v3, v4, v1, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;ZZ)V

    .line 572
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    invoke-virtual {v3, v2}, Lo/ListView;->setVisibility(I)V

    goto :goto_2

    .line 574
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {v3}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {v4}, Lo/Ax;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 575
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->k()V

    .line 576
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 578
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_4

    const/4 v2, 0x0

    .line 579
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->i:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;ZZ)V

    goto :goto_3

    .line 581
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->i:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p()V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/view/View;)V

    return-void
.end method

.method private b(Lcom/netflix/model/leafs/originals/BillboardAsset;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 912
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->r:Ljava/lang/String;

    .line 914
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 915
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->ag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 916
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$Application;->aj:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 917
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$Application;->ag:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setFocusable(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 231
    new-instance v1, Lo/ResourceCursorAdapter;

    invoke-direct {v1, v0, p0}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->q:Lo/ResourceCursorAdapter;

    .line 232
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 234
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d()V

    .line 236
    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    .line 237
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->E:I

    .line 238
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a()V

    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->l()V

    .line 241
    invoke-static {v0}, Lo/Li;->c(Landroid/content/Context;)I

    return-void
.end method

.method private d(Lcom/netflix/model/leafs/originals/BillboardCTA;)V
    .locals 3

    .line 658
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j()V

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o:Landroid/widget/Button;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->aK:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 660
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lo/KY;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic d(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/view/View;)V
    .locals 9

    .line 799
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->galleryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p2

    .line 800
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->viewTitlesButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, p2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p2, Lcom/netflix/cl/model/event/session/command/ViewTitlesCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/ViewTitlesCommand;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 801
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->galleryId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 804
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    .line 805
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p1, v0}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 806
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;

    const-string p2, "BillboardView"

    invoke-direct {v8, p0, p2, p1, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface/range {v2 .. v8}, Lo/zG;->d(Ljava/lang/String;IIZZLo/zU;)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lo/Db;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    return-object p0
.end method

.method private e(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 5

    .line 857
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 858
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 859
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 861
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2, v3}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lo/Li;->c(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 863
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->e:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 864
    iget v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->E:I

    .line 866
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 869
    div-int/lit8 v4, v4, 0x3

    .line 871
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->d:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 869
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_0
    mul-int v1, v1, v3

    .line 875
    div-int p1, v1, v0

    if-le p1, v2, :cond_1

    mul-int v3, v3, v2

    .line 877
    div-int/2addr v3, p1

    move p1, v2

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 881
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 882
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 883
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 971
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->f:Lcom/netflix/mediaclient/api/res/AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-virtual {v0, p1, v1, v2}, Lo/Am;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/zU;)Z

    return-void
.end method

.method private e(Ljava/lang/String;Z)V
    .locals 8

    .line 922
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Db;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RemoteViewsListAdapter;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    if-nez v0, :cond_1

    .line 928
    new-instance v0, Lo/Lt;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->B:Landroid/view/TextureView;

    const/4 v4, 0x3

    const/4 v5, 0x0

    sget-object v6, Lcom/netflix/mediaclient/api/res/AssetType;->f:Lcom/netflix/mediaclient/api/res/AssetType;

    new-instance v7, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;

    invoke-direct {v7, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    move-object v1, v0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lo/Lt;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/api/res/AssetType;Lo/Db$TaskDescription;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    .line 958
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h()V

    goto :goto_0

    .line 963
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "BillboardView"

    const-string v1, "Showing motion BB"

    .line 993
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/RemoteViewsListAdapter;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->B:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private p()V
    .locals 2

    const-string v0, "BillboardView"

    const-string v1, "Hiding motion BB"

    .line 999
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RemoteViewsListAdapter;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->B:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->E:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->requestLayout()V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 256
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->n:I

    return v0
.end method

.method protected b(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;ZZ)V
    .locals 8

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 668
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 669
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "addToPlaylist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "details"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "mdp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_4
    const-string v2, "gallery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    const/16 v0, 0x8

    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_1

    .line 699
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 688
    :cond_1
    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 689
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p3, p4}, Lo/KY;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "0"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition()Ljava/lang/String;

    move-result-object p3

    .line 691
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p4

    .line 692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {v0}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {p1}, Lo/Ax;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p4

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_2

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;Z)V

    invoke-static {p4, v0, p1, v1}, Lo/KY;->a(Lo/Am;Lo/AR;Lcom/netflix/model/leafs/originals/BillboardCTA;Lo/zU;)V

    goto :goto_2

    .line 683
    :cond_4
    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 684
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p3, p4}, Lo/KY;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d(Landroid/widget/Button;Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    goto :goto_2

    .line 679
    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 680
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d(Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    goto :goto_2

    .line 675
    :cond_6
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {p1}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {p2}, Lo/Ax;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_2

    .line 671
    :cond_7
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 672
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j()V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xbb388ae -> :sswitch_4
        0x1a5b9 -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x5cd8f242 -> :sswitch_1
        0x700608ee -> :sswitch_0
    .end sparse-switch
.end method

.method protected b(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 3

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    .line 511
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardTheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "billboardTheme"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "billboardType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 7

    .line 823
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v3

    .line 824
    invoke-virtual {p3}, Landroid/widget/Button;->requestFocus()Z

    .line 825
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/Am;Ljava/lang/String;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 499
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->c:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    const-string v1, "token"

    if-ne p1, v0, :cond_0

    .line 500
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->v:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->x:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 88
    check-cast p1, Lo/Ax;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lo/Ax;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public c(Lo/Ax;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 7

    .line 362
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p3, p4}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p3, :cond_8

    if-eqz p1, :cond_8

    .line 363
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p4

    if-nez p4, :cond_0

    goto/16 :goto_3

    .line 370
    :cond_0
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p3

    .line 371
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    .line 376
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 377
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    const/4 v1, 0x0

    .line 378
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 379
    invoke-interface {p1}, Lo/Ax;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 382
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActionToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->v:Ljava/lang/String;

    .line 383
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getImpressionToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->x:Ljava/lang/String;

    .line 385
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 386
    sget-object v4, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    invoke-static {p4, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getHorizontalBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    .line 391
    invoke-interface {v3}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iput-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->r:Ljava/lang/String;

    .line 393
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSynopsis()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    .line 396
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 398
    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->z:Z

    if-eqz v5, :cond_3

    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/VideoAssets;->horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 399
    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/VideoAssets;->horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/model/leafs/originals/VideoAssets;->horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionShouldLoop()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Ljava/lang/String;Z)V

    .line 407
    :cond_3
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->q:Lo/ResourceCursorAdapter;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    invoke-virtual {v5, v6, p1, p2}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 408
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    invoke-virtual {p2, v1, v1, v1, v1}, Lo/RemoteViewsListAdapter;->setPadding(IIII)V

    .line 413
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lcom/netflix/model/leafs/originals/BillboardAsset;)V

    if-eqz v0, :cond_4

    .line 420
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 421
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 424
    invoke-virtual {v1, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p2, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 426
    invoke-virtual {p2, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 422
    invoke-virtual {v0, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 427
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v2, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Lo/BaseAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 430
    :cond_4
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p4, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;Landroid/widget/TextView;)V

    .line 431
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a(Lo/Ax;)V

    .line 436
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Lo/Ax;)Ljava/lang/String;

    move-result-object p2

    .line 437
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 438
    invoke-static {}, Lo/ady;->f()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 441
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string v0, "image url is empty, BillboardView, lite"

    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string v0, "image url is empty, BillboardView"

    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 450
    invoke-virtual {v1, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 451
    invoke-virtual {p2, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 448
    invoke-virtual {v0, p2}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 454
    :goto_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    invoke-virtual {p2, v2}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 456
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->a:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 457
    invoke-virtual {p3}, Lo/Am;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logging billboard impression for video: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BillboardView"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p3}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->a:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    invoke-interface {p2, p1, p3, v0}, Lo/zG;->a(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 462
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e()V

    .line 463
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    return-void

    .line 367
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->g()V

    return-void
.end method

.method c(Lo/Bc;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .line 790
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 260
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->T:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    .line 261
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ag:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h:Landroid/widget/TextView;

    .line 262
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->af:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->g:Landroid/widget/TextView;

    .line 263
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ae:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    .line 264
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ar:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    .line 265
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ao:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    .line 266
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aq:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->t:Landroid/widget/FrameLayout;

    .line 267
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->am:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    .line 268
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kN:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->B:Landroid/view/TextureView;

    .line 269
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aj:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e:Landroid/view/View;

    .line 270
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->Y:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->i:Landroid/widget/Button;

    .line 271
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ac:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n:Landroid/widget/Button;

    .line 272
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->V:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    .line 273
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ad:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o:Landroid/widget/Button;

    return-void
.end method

.method d(Landroid/widget/Button;Lcom/netflix/model/leafs/originals/BillboardCTA;)V
    .locals 1

    .line 798
    new-instance v0, Lo/Lj;

    invoke-direct {v0, p0, p2}, Lo/Lj;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected d(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 2

    .line 517
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lo/RemoteViewsListAdapter;->setCutomCroppingEnabled(Z)V

    .line 529
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    invoke-virtual {p1, v1}, Lo/RemoteViewsListAdapter;->setCenterHorizontally(Z)V

    .line 531
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;Landroid/widget/TextView;)V
    .locals 0

    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 477
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cQ:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 479
    :goto_0
    invoke-virtual {p3, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method protected final d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 2

    .line 483
    instance-of v0, p1, Lo/agg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 484
    check-cast p1, Lo/agg;

    .line 486
    invoke-interface {p1}, Lo/agg;->aM()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lo/agg;->bq()Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/agg;->bq()Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public e(Lo/Ax;)Ljava/lang/String;
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->r:Ljava/lang/String;

    return-object p1
.end method

.method protected e()V
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0, v1}, Lo/RemoteViewsListAdapter;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->C:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->l:Lo/Oc;

    .line 589
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    .line 586
    :goto_0
    invoke-virtual {v0, p1, p2, v1, v3}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method protected e(Lo/BaseAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 0

    .line 467
    invoke-static {p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 468
    invoke-virtual {p1, p2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p1, p3}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method protected f(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 2

    .line 664
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected g()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    invoke-virtual {v0, v1}, Lo/ListView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ac:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ac:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lo/BaseAdapter;->i()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Lo/BaseAdapter;->i()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->i()V

    :cond_2
    return-void
.end method

.method protected j(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;
    .locals 6

    .line 535
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    .line 537
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 538
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    .line 540
    :cond_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->g:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->c(Ljava/util/List;Landroid/widget/TextView;)V

    .line 542
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 543
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 546
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p:Ljava/lang/String;

    return-object p1
.end method

.method protected k()V
    .locals 10

    .line 595
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 596
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$10;->c:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {v2}, Lo/Ax;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v0, "BillboardView"

    const-string v1, "unable to handle or update the my list button as the videotype is not handled."

    .line 611
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ListView;->setVisibility(I)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {v1}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->H:Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    invoke-interface {v0, v1, v2, v3}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    .line 599
    invoke-interface {v0}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iget-object v9, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->H:Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;

    .line 598
    invoke-interface/range {v4 .. v9}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected l()V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lo/Oc;

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m:Lo/ListView;

    .line 248
    invoke-static {v2}, Lo/Oh;->b(Landroid/widget/CompoundButton;)Lo/Od;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->k:Lo/UpdateEngine;

    .line 249
    invoke-virtual {v3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v3

    sget-object v4, Lcom/netflix/cl/model/AppView;->billboard:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->l:Lo/Oc;

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c:Lo/BaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f:Lo/RemoteViewsListAdapter;

    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->d:Lo/BaseAdapter;

    if-eqz v0, :cond_3

    .line 1046
    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected n()Landroid/view/View$OnClickListener;
    .locals 2

    .line 640
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 641
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/Am;)V

    return-object v1
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "BillboardView.getPlayContext has null trackingInfo"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 306
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x12c

    const-string v2, "BillboardView"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/Li;->c(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "BillboardView"

    if-eqz p1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    if-eqz v1, :cond_0

    const-string v1, "Playback ready, updating myList state"

    .line 1011
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->k()V

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->z:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 1021
    invoke-virtual {v1}, Lo/Db;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Received focus but media playback complete - skipping resume"

    .line 1022
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->p()V

    goto :goto_0

    .line 1025
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    invoke-virtual {p1}, Lo/Db;->b()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Playback not ready yet, but showing motion BB"

    .line 1027
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->h()V

    goto :goto_0

    :cond_3
    const-string p1, "Losing window focus - pausing playback"

    .line 1032
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->D:Lo/Db;

    invoke-virtual {p1}, Lo/Db;->e()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "null mediaPlayerWrapper - bailing"

    .line 1016
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
