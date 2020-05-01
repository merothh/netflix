.class final Lo/MW$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MW;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WebViewProviderInfo;

.field final synthetic b:Landroidx/lifecycle/Lifecycle;

.field final synthetic c:Lo/Nb;

.field final synthetic d:Lo/MW;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/MW;Lo/Nb;Landroidx/lifecycle/Lifecycle;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/WebViewProviderInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/MW$Activity;->d:Lo/MW;

    iput-object p2, p0, Lo/MW$Activity;->c:Lo/Nb;

    iput-object p3, p0, Lo/MW$Activity;->b:Landroidx/lifecycle/Lifecycle;

    iput-object p4, p0, Lo/MW$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lo/MW$Activity;->a:Lo/WebViewProviderInfo;

    iput-object p6, p0, Lo/MW$Activity;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 14

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 57
    new-instance p1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    .line 58
    iget-object v2, p0, Lo/MW$Activity;->c:Lo/Nb;

    .line 59
    iget-object v0, p0, Lo/MW$Activity;->d:Lo/MW;

    invoke-static {v0}, Lo/MW;->a(Lo/MW;)Lo/MZ;

    move-result-object v3

    .line 60
    iget-object v0, p0, Lo/MW$Activity;->d:Lo/MW;

    invoke-static {v0}, Lo/MW;->b(Lo/MW;)Lo/MS;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lo/MW$Activity;->b:Landroidx/lifecycle/Lifecycle;

    .line 62
    new-instance v6, Lo/Nc;

    iget-object v0, p0, Lo/MW$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v6, v0}, Lo/Nc;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lo/MW$Activity;->a:Lo/WebViewProviderInfo;

    .line 64
    iget-object v1, p0, Lo/MW$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v7, Lo/Ng$TaskDescription;->d:I

    invoke-virtual {v1, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "netflixActivity.getStrin\u2026ral_more_tab_more_button)"

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 65
    iget-object v7, p0, Lo/MW$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v8, Lo/Ng$Activity;->b:I

    invoke-virtual {v7, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 63
    invoke-interface {v0, v1, v7}, Lo/WebViewProviderInfo;->b(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lo/AnalogClock;

    move-result-object v7

    .line 67
    iget-object v0, p0, Lo/MW$Activity;->a:Lo/WebViewProviderInfo;

    invoke-interface {v0}, Lo/WebViewProviderInfo;->a()Lo/AnalogClock;

    move-result-object v8

    .line 68
    new-instance v9, Lo/Ne;

    .line 69
    iget-object v0, p0, Lo/MW$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 70
    iget-object v1, p0, Lo/MW$Activity;->d:Lo/MW;

    invoke-static {v1}, Lo/MW;->b(Lo/MW;)Lo/MS;

    move-result-object v1

    iget-object v10, p0, Lo/MW$Activity;->b:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1, v10}, Lo/MS;->a(Landroidx/lifecycle/Lifecycle;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    .line 71
    new-instance v10, Lo/MV;

    iget-object v11, p0, Lo/MW$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v11}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v13, "netflixActivity.packageManager"

    invoke-static {v11, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lo/MV;-><init>(Landroid/content/pm/PackageManager;)V

    check-cast v10, Lo/Ne$Application;

    .line 68
    invoke-direct {v9, v0, v1, v10}, Lo/Ne;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/uber/autodispose/AutoDisposeConverter;Lo/Ne$Application;)V

    .line 73
    iget-object v0, p0, Lo/MW$Activity;->d:Lo/MW;

    invoke-static {v0}, Lo/MW;->e(Lo/MW;)Lo/SpinnerAdapter;

    move-result-object v10

    .line 74
    iget-object v11, p0, Lo/MW$Activity;->j:Ljava/lang/String;

    move-object v1, p1

    .line 57
    invoke-direct/range {v1 .. v12}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;-><init>(Lo/Nb;Lo/MZ;Lo/MS;Landroidx/lifecycle/Lifecycle;Lo/Nc;Lo/AnalogClock;Lo/AnalogClock;Lo/Ne;Lo/SpinnerAdapter;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 77
    new-instance v0, Lo/MT;

    iget-object v1, p0, Lo/MW$Activity;->d:Lo/MW;

    invoke-static {v1}, Lo/MW;->c(Lo/MW;)Lcom/netflix/cl/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/MT;-><init>(Lcom/netflix/cl/Logger;)V

    check-cast v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;)V

    .line 78
    iget-object v0, p0, Lo/MW$Activity;->b:Landroidx/lifecycle/Lifecycle;

    check-cast p1, Lo/ClassCircularityError;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    :cond_0
    return-void
.end method
