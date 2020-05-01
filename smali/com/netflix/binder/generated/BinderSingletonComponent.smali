.class public abstract Lcom/netflix/binder/generated/BinderSingletonComponent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/imageloader/api/BlurProcessor$ActionBar;
.implements Lo/FormatException$StateListAnimator;
.implements Lo/ErrorCodes$Application;
.implements Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$StateListAnimator;
.implements Lo/Rv$StateListAnimator;
.implements Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Activity;
.implements Lo/ab$TaskDescription;
.implements Lo/G$ActionBar;
.implements Lo/MW$TaskDescription;
.implements Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Activity;
.implements Lo/Nc$StateListAnimator;
.implements Lo/we$StateListAnimator;
.implements Lo/bH$Application;
.implements Lo/Ze$TaskDescription;
.implements Lo/AbsSeekBar$TaskDescription;
.implements Lo/bw$Activity;
.implements Lo/ValueFinder$StateListAnimator;
.implements Lo/VintfRuntimeInfo;


# annotations
.annotation runtime Lcom/netflix/binder/UsedByReflection;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/netflix/binder/generated/BinderSingletonComponent;
    .locals 2

    .line 84
    invoke-static {}, Lo/WifiBatteryStats;->d()Lo/WifiBatteryStats$TaskDescription;

    move-result-object v0

    new-instance v1, Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-direct {v1, p0}, Lcom/netflix/binder/generated/BinderApplicationModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lo/WifiBatteryStats$TaskDescription;->b(Lcom/netflix/binder/generated/BinderApplicationModule;)Lo/WifiBatteryStats$TaskDescription;

    move-result-object p0

    invoke-virtual {p0}, Lo/WifiBatteryStats$TaskDescription;->a()Lcom/netflix/binder/generated/BinderSingletonComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/netflix/binder/generated/BinderSingletonComponent;->b()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ZygoteProcess$ActionBar;

    new-instance v1, Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-direct {v1, p1}, Lcom/netflix/binder/generated/BinderActivityModule;-><init>(Landroid/app/Activity;)V

    .line 90
    invoke-interface {v0, v1}, Lo/ZygoteProcess$ActionBar;->c(Lcom/netflix/binder/generated/BinderActivityModule;)Lo/ZygoteProcess$ActionBar;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Lo/ZygoteProcess$ActionBar;->e()Lo/ZygoteProcess;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 107
    check-cast v0, Lo/UserManagerInternal;

    .line 108
    invoke-interface {v0}, Lo/UserManagerInternal;->internal_only_getBinderComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ZygoteProcess;

    check-cast v0, Lo/ZygoteProcess;

    .line 109
    invoke-interface {v0}, Lo/ZygoteProcess;->e()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HealthStatsWriter$TaskDescription;

    new-instance v1, Lcom/netflix/binder/generated/BinderViewModule;

    invoke-direct {v1, p1}, Lcom/netflix/binder/generated/BinderViewModule;-><init>(Landroid/view/View;)V

    .line 110
    invoke-interface {v0, v1}, Lo/HealthStatsWriter$TaskDescription;->d(Lcom/netflix/binder/generated/BinderViewModule;)Lo/HealthStatsWriter$TaskDescription;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Lo/HealthStatsWriter$TaskDescription;->b()Lo/HealthStatsWriter;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 97
    check-cast v0, Lo/UserManagerInternal;

    .line 98
    invoke-interface {v0}, Lo/UserManagerInternal;->internal_only_getBinderComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ZygoteProcess;

    check-cast v0, Lo/ZygoteProcess;

    .line 99
    invoke-interface {v0}, Lo/ZygoteProcess;->c()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HealthStatsParceler$TaskDescription;

    new-instance v1, Lcom/netflix/binder/generated/BinderFragmentModule;

    invoke-direct {v1, p1}, Lcom/netflix/binder/generated/BinderFragmentModule;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 100
    invoke-interface {v0, v1}, Lo/HealthStatsParceler$TaskDescription;->c(Lcom/netflix/binder/generated/BinderFragmentModule;)Lo/HealthStatsParceler$TaskDescription;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Lo/HealthStatsParceler$TaskDescription;->c()Lo/HealthStatsParceler;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lo/ZygoteProcess$ActionBar;",
            ">;"
        }
    .end annotation
.end method
