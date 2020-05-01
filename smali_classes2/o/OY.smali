.class public final Lo/OY;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OY$Application;
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final d:Lo/OY$Application;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private h:Lo/Pa;

.field private final i:Lo/ams;

.field private final j:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/OY;

    const/4 v1, 0x7

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "container"

    const-string v5, "getContainer()Landroidx/constraintlayout/widget/ConstraintLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "readIndicator"

    const-string v5, "getReadIndicator()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "notificationImage"

    const-string v5, "getNotificationImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "multiTitleNotificationImage"

    const-string v5, "getMultiTitleNotificationImage()Lcom/netflix/mediaclient/android/widget/ImageStackView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "topText"

    const-string v5, "getTopText()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "middleText"

    const-string v5, "getMiddleText()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "bottomText"

    const-string v4, "getBottomText()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lo/OY;->a:[Lo/amT;

    new-instance v0, Lo/OY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OY$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/OY;->d:Lo/OY$Application;

    return-void
.end method

.method public constructor <init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UnicodeScript;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Pe;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPub"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 27
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->lu:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->b:Lo/ams;

    .line 29
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->ly:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->e:Lo/ams;

    .line 31
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->lr:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->c:Lo/ams;

    .line 33
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->kR:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->i:Lo/ams;

    .line 35
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->lw:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->g:Lo/ams;

    .line 37
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->lt:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->f:Lo/ams;

    .line 39
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->ls:I

    invoke-static {p0, p3}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/OY;->j:Lo/ams;

    .line 44
    invoke-direct {p0}, Lo/OY;->a()Lo/MenuInflater;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 106
    invoke-static {p3}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p3

    sget-object v0, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p3

    const-string v0, "RxView.clicks(this).map(AnyToUnit)"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p1, v0}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object p1

    const-string v0, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 108
    check-cast p1, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {p1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableConverter;

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 48
    new-instance p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;-><init>(Lo/OY;Lio/reactivex/subjects/PublishSubject;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 63
    sget-object p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$2;->a:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a()Lo/MenuInflater;
    .locals 3

    iget-object v0, p0, Lo/OY;->b:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    return-object v0
.end method

.method private final b()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/OY;->g:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final c()Lo/DropDownListView;
    .locals 3

    iget-object v0, p0, Lo/OY;->i:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DropDownListView;

    return-object v0
.end method

.method public static final synthetic c(Lo/OY;)Lo/Pa;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/OY;->h:Lo/Pa;

    return-object p0
.end method

.method private final d()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/OY;->e:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final e()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/OY;->c:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method

.method private final g()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/OY;->j:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final j()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/OY;->f:Lo/ams;

    sget-object v1, Lo/OY;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public final b(Lo/Pa;)V
    .locals 4

    const-string v0, "notification"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lo/OY;->h:Lo/Pa;

    .line 73
    invoke-virtual {p1}, Lo/Pa;->read()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lo/OY;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0}, Lo/OY;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_0
    invoke-virtual {p1}, Lo/Pa;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0}, Lo/OY;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 81
    invoke-direct {p0}, Lo/OY;->c()Lo/DropDownListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/DropDownListView;->setVisibility(I)V

    .line 83
    invoke-direct {p0}, Lo/OY;->c()Lo/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lo/DropDownListView;->d()Lo/BaseAdapter;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_1
    invoke-direct {p0}, Lo/OY;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 86
    invoke-direct {p0}, Lo/OY;->c()Lo/DropDownListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/DropDownListView;->setVisibility(I)V

    .line 88
    invoke-direct {p0}, Lo/OY;->e()Lo/BaseAdapter;

    move-result-object v0

    .line 91
    :goto_1
    invoke-virtual {p1}, Lo/Pa;->imageUrl()Ljava/lang/String;

    move-result-object v1

    .line 92
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 95
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lo/Pa;->header()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lo/OY;->b()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p1}, Lo/Pa;->header()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0}, Lo/OY;->j()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p1}, Lo/Pa;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-direct {p0}, Lo/OY;->g()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/OY;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lo/Pa;->timestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "image url is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
