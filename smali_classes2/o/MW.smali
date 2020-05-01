.class public final Lo/MW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MW$TaskDescription;,
        Lo/MW$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/MW$StateListAnimator;


# instance fields
.field private final a:Lcom/netflix/cl/Logger;

.field private final b:Lo/MU;

.field private final d:Lo/MS;

.field private final e:Lo/MZ;

.field private final g:Lo/SpinnerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/MW$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MW$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/MW;->c:Lo/MW$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/MZ;Lo/MU;Lcom/netflix/cl/Logger;Lo/MS;Lo/SpinnerAdapter;)V
    .locals 1

    const-string v0, "referralRepo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converterFactory"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorLogger"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MW;->e:Lo/MZ;

    iput-object p2, p0, Lo/MW;->b:Lo/MU;

    iput-object p3, p0, Lo/MW;->a:Lcom/netflix/cl/Logger;

    iput-object p4, p0, Lo/MW;->d:Lo/MS;

    iput-object p5, p0, Lo/MW;->g:Lo/SpinnerAdapter;

    return-void
.end method

.method public static final synthetic a(Lo/MW;)Lo/MZ;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MW;->e:Lo/MZ;

    return-object p0
.end method

.method public static final synthetic b(Lo/MW;)Lo/MS;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MW;->d:Lo/MS;

    return-object p0
.end method

.method public static final synthetic c(Lo/MW;)Lcom/netflix/cl/Logger;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MW;->a:Lcom/netflix/cl/Logger;

    return-object p0
.end method

.method public static final synthetic e(Lo/MW;)Lo/SpinnerAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MW;->g:Lo/SpinnerAdapter;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/MW;->b:Lo/MU;

    invoke-virtual {v0}, Lo/MU;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lo/MW;->e:Lo/MZ;

    invoke-virtual {v0}, Lo/MZ;->b()V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;)V
    .locals 8

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentLayout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lo/MW;->b:Lo/MU;

    invoke-virtual {v0}, Lo/MU;->d()Ljava/lang/String;

    move-result-object v7

    .line 47
    iget-object v0, p0, Lo/MW;->b:Lo/MU;

    invoke-virtual {v0}, Lo/MU;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    .line 48
    sget v0, Lo/Ng$ActionBar;->b:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const-string v1, "referralViewStub"

    .line 49
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/Ng$Application;->e:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 50
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lo/Nb;

    .line 51
    invoke-virtual {v3}, Lo/Nb;->o()V

    .line 53
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lo/MW$TaskDescription;

    invoke-virtual {v0, v1, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MW$TaskDescription;

    invoke-interface {v0}, Lo/MW$TaskDescription;->o()Lo/WebViewProviderInfo;

    move-result-object v6

    .line 55
    new-instance v0, Lo/MW$Activity;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lo/MW$Activity;-><init>(Lo/MW;Lo/Nb;Landroidx/lifecycle/Lifecycle;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/WebViewProviderInfo;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 82
    sget p1, Lo/Ng$ActionBar;->e:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "divider"

    .line 83
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.memberreferral.MemberReferralMoreView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lo/MW;->b:Lo/MU;

    invoke-virtual {p1}, Lo/MU;->e()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lo/MW;->e:Lo/MZ;

    invoke-virtual {p1}, Lo/MZ;->e()V

    return-void
.end method
