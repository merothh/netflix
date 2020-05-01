.class public final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;,
        Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Activity;,
        Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/Disposable;

.field private b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lo/Nb;

.field private final g:Lo/MZ;

.field private final h:Lo/Nc;

.field private final i:Lo/MS;

.field private final j:Landroidx/lifecycle/Lifecycle;

.field private final k:Lo/SpinnerAdapter;

.field private final l:Lo/AnalogClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lo/AnalogClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lo/Ne;

.field private final o:Ljava/lang/String;

.field private final q:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lo/Nb;Lo/MZ;Lo/MS;Landroidx/lifecycle/Lifecycle;Lo/Nc;Lo/AnalogClock;Lo/AnalogClock;Lo/Ne;Lo/SpinnerAdapter;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Nb;",
            "Lo/MZ;",
            "Lo/MS;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lo/Nc;",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/Ne;",
            "Lo/SpinnerAdapter;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/user/UserAgent;",
            ")V"
        }
    .end annotation

    const-string v0, "memberReferralMoreView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converterFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberReferralShareValidator"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moreOptionsShareTarget"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyShareTarget"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberReferralSharer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorLogger"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "termsOfUseUrl"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentInterface"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->g:Lo/MZ;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->i:Lo/MS;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->j:Landroidx/lifecycle/Lifecycle;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->h:Lo/Nc;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->l:Lo/AnalogClock;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->m:Lo/AnalogClock;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->n:Lo/Ne;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->k:Lo/SpinnerAdapter;

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->o:Ljava/lang/String;

    iput-object p11, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->q:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {p1}, Lo/Nb;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c:Landroid/content/Context;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 57
    invoke-static {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;ZILjava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a()V

    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->d()V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)Lo/Nb;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    return-object p0
.end method

.method private final a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {v0}, Lo/Nb;->e()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Fragment;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Fragment;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$FragmentManager;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/Nb;->setRetryButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Ljava/util/List;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->e()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b(Z)V

    return-void
.end method

.method private final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->g:Lo/MZ;

    invoke-virtual {p1}, Lo/MZ;->b()V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->g:Lo/MZ;

    new-instance v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V

    check-cast v0, Lio/reactivex/Observer;

    invoke-virtual {p1, v0}, Lo/MZ;->d(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {v0}, Lo/Nb;->p()V

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->h:Lo/Nc;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->q:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userAgentInterface.geoCountry"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Nc;->e(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->i:Lo/MS;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->j:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1, v2}, Lo/MS;->a(Landroidx/lifecycle/Lifecycle;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 73
    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final d()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->q:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 158
    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Application;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V

    check-cast v1, Lo/ym;

    const-wide/32 v2, 0x36ee80

    .line 156
    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->c(JLo/ym;)V

    return-void
.end method

.method private final d(Ljava/util/List;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AnalogClock;

    const/4 v8, 0x1

    .line 84
    invoke-static {p1, v8}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/AnalogClock;

    const/4 v10, 0x2

    .line 85
    invoke-static {p1, v10}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AnalogClock;

    .line 86
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    .line 90
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->l:Lo/AnalogClock;

    .line 91
    new-instance v3, Lo/MX;

    invoke-direct {v3, p2, p0}, Lo/MX;-><init>(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V

    move-object v7, v3

    check-cast v7, Lo/Nb$Application;

    move-object v3, v1

    move-object v4, v9

    move-object v5, p1

    .line 86
    invoke-virtual/range {v2 .. v7}, Lo/Nb;->setShareOptions(Lo/AnalogClock;Lo/AnalogClock;Lo/AnalogClock;Lo/AnalogClock;Lo/Nb$Application;)V

    .line 93
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {p2}, Lo/Nb;->f()Lo/Nd;

    move-result-object p2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c:Landroid/content/Context;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->lk:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Lo/Nd;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    new-array p2, p2, [Lo/AnalogClock;

    aput-object v1, p2, v0

    aput-object v9, p2, v8

    aput-object p1, p2, v10

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->l:Lo/AnalogClock;

    const/4 v0, 0x3

    aput-object p1, p2, v0

    invoke-static {p2}, Lo/akz;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->d(Ljava/util/List;)V

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)Lo/AnalogClock;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->m:Lo/AnalogClock;

    return-object p0
.end method

.method private final e()V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->k:Lo/SpinnerAdapter;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Device browser unavailable"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->Z:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/adk;->c(II)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    return-void
.end method

.method public final a(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shareTarget"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->n:Lo/Ne;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    invoke-virtual {v0, p1, p2, v1}, Lo/Ne;->d(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->o:Ljava/lang/String;

    :goto_0
    const-string v1, "autoLoginToken?.let {\n  \u2026       } ?: termsOfUseUrl"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    return-object v0
.end method

.method public final c(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;)V
    .locals 5

    const-string v0, "detail"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;->url()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 110
    sget-object v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->e:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;->memberIncentive()Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;->friendIncentive()Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;)Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    .line 112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->a()I

    move-result v2

    .line 113
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->c()I

    move-result v3

    .line 114
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->e()I

    move-result v4

    .line 111
    invoke-virtual {v1, v2, v3, v4}, Lo/Nb;->setupHeader(III)V

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {v1}, Lo/Nb;->c()Landroid/widget/TextView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->b()I

    move-result v1

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "link"

    .line 119
    invoke-virtual {v1, v2, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 123
    sget-object v2, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Activity;

    invoke-virtual {v2, v3, v4}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Activity;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Activity;->o()Lo/WebViewProviderInfo;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->d()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "context.getString(assets.messageTitle)"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "shareMessage"

    .line 127
    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {v2, v0, p1, v1}, Lo/WebViewProviderInfo;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {v0}, Lo/Nb;->c()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    invoke-virtual {v0}, Lo/Nb;->d()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$LoaderManager;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->f:Lo/Nb;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/Nb;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->b()V

    :cond_0
    return-void
.end method
