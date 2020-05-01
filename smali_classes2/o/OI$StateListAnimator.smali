.class public final Lo/OI$StateListAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private f:Ljava/lang/String;

.field private g:Lcom/netflix/cl/model/TrackingInfo;

.field private i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/OI$StateListAnimator;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "heroInfo"

    const-string v5, "getHeroInfo()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "heroImage"

    const-string v5, "getHeroImage()Lcom/netflix/mediaclient/android/widget/TopCropImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "heroSynopsis"

    const-string v5, "getHeroSynopsis()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "multiTitleHeroButtons"

    const-string v4, "getMultiTitleHeroButtons()Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleHeroButtonsViewGroup;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lo/OI$StateListAnimator;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 160
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hE:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OI$StateListAnimator;->a:Lo/ams;

    .line 161
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hy:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OI$StateListAnimator;->d:Lo/ams;

    .line 162
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hF:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OI$StateListAnimator;->c:Lo/ams;

    .line 164
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kT:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OI$StateListAnimator;->b:Lo/ams;

    .line 172
    invoke-direct {p0}, Lo/OI$StateListAnimator;->d()Lo/RemoteViewsListAdapter;

    move-result-object v0

    new-instance v1, Lo/OI$StateListAnimator$1;

    invoke-direct {v1, p0, p1}, Lo/OI$StateListAnimator$1;-><init>(Lo/OI$StateListAnimator;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/RemoteViewsListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/OI$StateListAnimator;->a:Lo/ams;

    sget-object v1, Lo/OI$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic a(Lo/OI$StateListAnimator;)Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lo/OI$StateListAnimator;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lo/OI$StateListAnimator;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 0

    .line 157
    iget-object p0, p0, Lo/OI$StateListAnimator;->g:Lcom/netflix/cl/model/TrackingInfo;

    return-object p0
.end method

.method private final c()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/OI$StateListAnimator;->c:Lo/ams;

    sget-object v1, Lo/OI$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final d()Lo/RemoteViewsListAdapter;
    .locals 3

    iget-object v0, p0, Lo/OI$StateListAnimator;->d:Lo/ams;

    sget-object v1, Lo/OI$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    return-object v0
.end method

.method private final d(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 3

    .line 184
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 185
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 186
    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationLandingItem:Lcom/netflix/cl/model/AppView;

    .line 185
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 188
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public static final synthetic d(Lo/OI$StateListAnimator;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lo/OI$StateListAnimator;->d(Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method private final e()Lo/OH;
    .locals 3

    iget-object v0, p0, Lo/OI$StateListAnimator;->b:Lo/ams;

    sget-object v1, Lo/OI$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OH;

    return-object v0
.end method


# virtual methods
.method public final d(Lo/OI;Ljava/lang/Integer;F)Lo/akj;
    .locals 6

    const-string v0, "heroTitle"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lo/OI$StateListAnimator;->itemView:Landroid/view/View;

    .line 193
    invoke-virtual {p1}, Lo/OI;->j()Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int p3, v1

    .line 198
    invoke-direct {p0}, Lo/OI$StateListAnimator;->d()Lo/RemoteViewsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    invoke-direct {p0}, Lo/OI$StateListAnimator;->d()Lo/RemoteViewsListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    :cond_0
    invoke-direct {p0}, Lo/OI$StateListAnimator;->d()Lo/RemoteViewsListAdapter;

    move-result-object p2

    .line 203
    new-instance p3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->heroImageWebp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p3, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    .line 202
    invoke-virtual {p2, p3}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 204
    invoke-direct {p0}, Lo/OI$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->bodyCopy()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p1}, Lo/OI;->c()Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual {p1}, Lo/OI;->i()Ljava/lang/Integer;

    move-result-object p3

    .line 209
    invoke-direct {p0}, Lo/OI$StateListAnimator;->e()Lo/OH;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lo/OH;->d(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    invoke-virtual {p1}, Lo/OI;->d()Lo/Bc;

    move-result-object p2

    const-string p3, "module.actions()"

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 214
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->actions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 254
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    .line 216
    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->actionType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "add"

    invoke-static {v4, v5, v1}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-direct {p0}, Lo/OI$StateListAnimator;->e()Lo/OH;

    move-result-object v4

    invoke-virtual {v4}, Lo/OH;->b()V

    .line 224
    :cond_1
    invoke-direct {p0}, Lo/OI$StateListAnimator;->e()Lo/OH;

    move-result-object v4

    const-string v5, "action"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3, p2}, Lo/OH;->a(Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;Lo/Bc;)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-direct {p0}, Lo/OI$StateListAnimator;->e()Lo/OH;

    move-result-object p2

    invoke-virtual {p1}, Lo/OI;->e()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/OH;->b(Z)V

    .line 230
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->actions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v2, "title"

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    .line 231
    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->actionType()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v4, v2, v1}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move-object p2, v3

    .line 230
    :goto_1
    check-cast p2, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    if-eqz p2, :cond_5

    goto :goto_3

    .line 233
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->actions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    .line 234
    invoke-virtual {p3}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->actionType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "watch"

    invoke-static {p3, v0, v1}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_7
    move-object p2, v3

    .line 233
    :goto_2
    check-cast p2, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    :goto_3
    iput-object p2, p0, Lo/OI$StateListAnimator;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    .line 237
    iget-object p1, p0, Lo/OI$StateListAnimator;->i:Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;

    if-eqz p1, :cond_9

    .line 239
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->actionType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2, v1}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 244
    invoke-direct {p0}, Lo/OI$StateListAnimator;->a()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object p2

    check-cast p2, Lo/zR;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p2

    iput-object p2, p0, Lo/OI$StateListAnimator;->g:Lcom/netflix/cl/model/TrackingInfo;

    .line 248
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->action()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/OI$StateListAnimator;->f:Ljava/lang/String;

    .line 249
    sget-object v3, Lo/akj;->a:Lo/akj;

    :cond_9
    return-object v3
.end method
