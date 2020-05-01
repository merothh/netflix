.class public final Lo/OS$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final e:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private h:Lio/reactivex/disposables/Disposable;

.field private i:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/ams;

.field private final l:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/OS$ActionBar;

    const/4 v1, 0x7

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "backgroundView"

    const-string v5, "getBackgroundView()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "imageBoxArt"

    const-string v5, "getImageBoxArt()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "textDescription"

    const-string v5, "getTextDescription()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ctasContainer"

    const-string v5, "getCtasContainer()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ratingThumbsUp"

    const-string v5, "getRatingThumbsUp()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ratingThumbsDown"

    const-string v5, "getRatingThumbsDown()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "loadingSpinner"

    const-string v4, "getLoadingSpinner()Landroid/widget/ProgressBar;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 43
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qg:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->e:Lo/ams;

    .line 45
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qi:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->b:Lo/ams;

    .line 47
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qh:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->c:Lo/ams;

    .line 49
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qj:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->d:Lo/ams;

    .line 51
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->de:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->j:Lo/ams;

    .line 53
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->dc:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->g:Lo/ams;

    .line 55
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->jC:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->f:Lo/ams;

    .line 60
    new-instance p1, Lcom/netflix/mediaclient/ui/notifications/multititle/RatingInfoTitle$ViewHolder$blurGradientDrawable$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/notifications/multititle/RatingInfoTitle$ViewHolder$blurGradientDrawable$2;-><init>(Lo/OS$ActionBar;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/OS$ActionBar;->l:Lo/aka;

    return-void
.end method

.method public static final synthetic a(Lo/OS$ActionBar;)Lo/CompatibilityInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/OS$ActionBar;->i:Lo/CompatibilityInfo;

    return-object p0
.end method

.method private final a()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->b:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public static final synthetic a(Lo/OS$ActionBar;ZLcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lo/OS$ActionBar;->a(ZLcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V

    return-void
.end method

.method private final a(ZLcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V
    .locals 6

    .line 173
    invoke-direct {p0}, Lo/OS$ActionBar;->g()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    invoke-direct {p0, v1}, Lo/OS$ActionBar;->b(Z)V

    .line 177
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->actions()Ljava/util/List;

    move-result-object p2

    const-string v0, "module.actions()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;->actionType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "thumbsUp"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    .line 179
    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;->actionType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbsDown"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 177
    :goto_1
    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;

    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object p1

    check-cast p1, Lo/zR;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string p2, "CLv2Utils.toTrackingInfo\u2026inkAction.trackingInfo())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 187
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 188
    sget-object v3, Lcom/netflix/cl/model/AppView;->notificationLandingItem:Lcom/netflix/cl/model/AppView;

    .line 187
    invoke-direct {v1, v3, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 191
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    .line 186
    invoke-virtual {p2, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 195
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;->action()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 196
    iget-object p2, p0, Lo/OS$ActionBar;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lo/OM;

    invoke-static {p2, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/OM;

    .line 198
    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    invoke-static {p2, v0}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :cond_5
    return-void
.end method

.method private final b()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->c:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final b(Z)V
    .locals 1

    .line 206
    invoke-direct {p0}, Lo/OS$ActionBar;->i()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setEnabled(Z)V

    .line 207
    invoke-direct {p0}, Lo/OS$ActionBar;->j()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setEnabled(Z)V

    return-void
.end method

.method private final c()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->d:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static final synthetic d(Lo/OS$ActionBar;)Lo/GridView;
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/OS$ActionBar;->e()Lo/GridView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/OS$ActionBar;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/OS$ActionBar;->h()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->e:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public static final synthetic e(Lo/OS$ActionBar;Lo/CompatibilityInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/OS$ActionBar;->i:Lo/CompatibilityInfo;

    return-void
.end method

.method private final g()Landroid/widget/ProgressBar;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->f:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final h()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lo/OS$ActionBar;->l:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private final i()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->j:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final j()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/OS$ActionBar;->g:Lo/ams;

    sget-object v1, Lo/OS$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 2

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lo/OS$ActionBar;->b(Z)V

    .line 212
    invoke-direct {p0}, Lo/OS$ActionBar;->g()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lo/OS$ActionBar;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 214
    :cond_0
    iget-object v0, p0, Lo/OS$ActionBar;->i:Lo/CompatibilityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 215
    :cond_1
    invoke-direct {p0}, Lo/OS$ActionBar;->e()Lo/GridView;

    move-result-object v0

    invoke-direct {p0}, Lo/OS$ActionBar;->h()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/GridView;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final e(Lo/OS;)Lo/akj;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "title"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v2, v0, Lo/OS$ActionBar;->itemView:Landroid/view/View;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lo/OS;->e()Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    move-result-object v2

    .line 82
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->a()Lo/GridView;

    move-result-object v3

    new-instance v4, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->boxshotWebp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v4

    sget-object v5, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v4, v5}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lo/OS;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ratingInput"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "context"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v8, "layoutParams"

    if-eqz v3, :cond_4

    .line 85
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->c()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v3, v0, Lo/OS$ActionBar;->itemView:Landroid/view/View;

    const-string v5, "itemView"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 88
    invoke-static {v3}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    .line 89
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->a()Lo/GridView;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 220
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v10

    .line 222
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v11

    .line 223
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-static {v12, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v12

    .line 224
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-static {v13, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v13

    .line 225
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-static {v14, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v14

    .line 227
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v7, :cond_0

    const/4 v15, 0x0

    :cond_0
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_1

    .line 228
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 229
    iput v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 230
    iput v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 231
    iput v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 232
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 233
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 234
    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 91
    :cond_1
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->e()Lo/GridView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lo/GridView;->setVisibility(I)V

    .line 93
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopy()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->p:I

    invoke-virtual {v5, v3, v6}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->P:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 237
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    .line 239
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 240
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v7

    .line 241
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 242
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    .line 244
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v11, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v16, v10

    :goto_0
    move-object/from16 v10, v16

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_3

    .line 245
    iput v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 246
    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 247
    iput v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 248
    iput v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 249
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 250
    invoke-virtual {v10, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 251
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 97
    :cond_3
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->i()Lo/GridView;

    move-result-object v3

    new-instance v4, Lo/OS$ActionBar$Application;

    invoke-direct {v4, v2, v0, v1}, Lo/OS$ActionBar$Application;-><init>(Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Lo/OS$ActionBar;Lo/OS;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->j()Lo/GridView;

    move-result-object v3

    new-instance v4, Lo/OS$ActionBar$TaskDescription;

    invoke-direct {v4, v2, v0, v1}, Lo/OS$ActionBar$TaskDescription;-><init>(Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Lo/OS$ActionBar;Lo/OS;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v7, Lo/akj;->a:Lo/akj;

    goto/16 :goto_4

    .line 105
    :cond_4
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->c()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 109
    invoke-static {v3}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v6

    .line 110
    invoke-static {v3}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v7

    add-int/2addr v7, v6

    .line 111
    invoke-virtual/range {p1 .. p1}, Lo/OS;->b()Ljava/lang/String;

    move-result-object v9

    const-string v10, "thumbsDown"

    invoke-static {v9, v10}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    int-to-double v11, v6

    const-wide v13, 0x3fe6666666666666L    # 0.7

    mul-double v11, v11, v13

    goto :goto_1

    :cond_5
    const-wide/16 v11, 0x0

    .line 117
    :goto_1
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->a()Lo/GridView;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    double-to-int v9, v11

    add-int/2addr v7, v9

    .line 254
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 256
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v11

    .line 257
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-static {v12, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v12

    .line 258
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-static {v13, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v13

    .line 259
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-static {v14, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v14

    .line 261
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v5, :cond_6

    const/4 v15, 0x0

    :cond_6
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_7

    .line 262
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 263
    iput v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 264
    iput v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 265
    iput v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 266
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 267
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 268
    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 119
    :cond_7
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->e()Lo/GridView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lo/GridView;->setVisibility(I)V

    .line 120
    sget-object v5, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->e()Lo/GridView;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v5

    .line 121
    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->boxshotWebp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "module.boxshotWebp()"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v5

    const/4 v6, 0x1

    .line 122
    invoke-virtual {v5, v6}, Lcom/netflix/android/imageloader/api/GetImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v5

    .line 123
    invoke-virtual {v5}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v5

    .line 124
    sget-object v7, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v4

    invoke-interface {v4, v5}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v4

    .line 127
    new-instance v5, Lo/OS$ActionBar$Activity;

    invoke-direct {v5, v3, v0, v1}, Lo/OS$ActionBar$Activity;-><init>(Landroid/content/Context;Lo/OS$ActionBar;Lo/OS;)V

    check-cast v5, Lio/reactivex/functions/Consumer;

    .line 134
    sget-object v7, Lo/OS$ActionBar$StateListAnimator;->e:Lo/OS$ActionBar$StateListAnimator;

    check-cast v7, Lio/reactivex/functions/Consumer;

    .line 125
    invoke-virtual {v4, v5, v7}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    iput-object v4, v0, Lo/OS$ActionBar;->h:Lio/reactivex/disposables/Disposable;

    .line 139
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->w:I

    invoke-virtual {v4, v3, v5}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lo/OS;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 142
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopyConfirmationThumbsDown()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aZ:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 271
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v7

    .line 274
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 275
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v11

    .line 276
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-static {v12, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v13, :cond_8

    const/4 v12, 0x0

    :cond_8
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_9

    .line 279
    iput v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 280
    iput v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 281
    iput v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 282
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 283
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 284
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 144
    :cond_9
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2, v6}, Lo/ImageSwitcher;->setGravity(I)V

    goto/16 :goto_2

    .line 146
    :cond_a
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;->bodyCopyConfirmationThumbsUp()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 288
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 291
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v7

    .line 292
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 293
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v12, :cond_b

    const/4 v11, 0x0

    :cond_b
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_c

    .line 296
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 297
    iput v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 298
    iput v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 299
    iput v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 300
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 301
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 148
    :cond_c
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v2

    const v4, 0x800003

    invoke-virtual {v2, v4}, Lo/ImageSwitcher;->setGravity(I)V

    .line 151
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lo/OS;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 152
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bF:I

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .line 154
    :cond_d
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bN:I

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    move-object v5, v1

    if-eqz v5, :cond_e

    .line 158
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aI:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 160
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object v4, v1

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 167
    invoke-direct/range {p0 .. p0}, Lo/OS$ActionBar;->a()Lo/GridView;

    move-result-object v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const v3, 0x800055

    invoke-virtual {v2, v1, v3}, Lo/GridView;->d(Landroid/graphics/drawable/Drawable;I)V

    .line 168
    sget-object v7, Lo/akj;->a:Lo/akj;

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    return-object v7
.end method
