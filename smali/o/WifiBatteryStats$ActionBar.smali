.class final Lo/WifiBatteryStats$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ZygoteProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WifiBatteryStats$ActionBar$ActionBar;,
        Lo/WifiBatteryStats$ActionBar$StateListAnimator;,
        Lo/WifiBatteryStats$ActionBar$Activity;,
        Lo/WifiBatteryStats$ActionBar$Application;
    }
.end annotation


# instance fields
.field final synthetic a:Lo/WifiBatteryStats;

.field private b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/HealthStatsWriter$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/netflix/binder/generated/BinderActivityModule;

.field private final d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/HealthStatsParceler$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/WifiBatteryStats;Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p3, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    .line 599
    iput-object p2, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    .line 600
    invoke-direct {p0, p2, p3}, Lo/WifiBatteryStats$ActionBar;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats;Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 587
    invoke-direct {p0, p1, p2, p3}, Lo/WifiBatteryStats$ActionBar;-><init>(Lo/WifiBatteryStats;Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;)V

    return-void
.end method

.method private A()Lo/PrecomputedText;
    .locals 2

    .line 683
    new-instance v0, Lo/PrecomputedText;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->f()Lo/TextClassificationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/PrecomputedText;-><init>(Lo/TextClassificationManager;)V

    return-object v0
.end method

.method private B()Lo/ScaleAnimation;
    .locals 2

    .line 679
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/TypefaceSpan;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method private C()Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
    .locals 2

    .line 676
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChangeBounds;->a(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;
    .locals 1

    .line 772
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->b()Lo/ActionMenuView;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Dz;->e(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lo/WebViewProvider;)V

    .line 773
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {p1, v0}, Lo/IH;->a(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;Lcom/google/common/base/Optional;)V

    return-object p1
.end method

.method private a()Lo/SpellCheckerSubtype;
    .locals 2

    .line 607
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Rfc822Tokenizer;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/SpellCheckerSubtype;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->n()Lo/TextClassifierImpl;

    move-result-object p0

    return-object p0
.end method

.method private b()Lo/ActionMenuView;
    .locals 2

    .line 604
    new-instance v0, Lo/ActionMenuView;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ActionMenuView;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private b(Lo/DW;)Lo/DW;
    .locals 1

    .line 758
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->b()Lo/ActionMenuView;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Dz;->e(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lo/WebViewProvider;)V

    return-object p1
.end method

.method static synthetic b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->f()Lo/TextClassificationManager;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;)V
    .locals 0

    .line 688
    new-instance p1, Lo/WifiBatteryStats$ActionBar$2;

    invoke-direct {p1, p0}, Lo/WifiBatteryStats$ActionBar$2;-><init>(Lo/WifiBatteryStats$ActionBar;)V

    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar;->e:Ljavax/inject/Provider;

    .line 693
    new-instance p1, Lo/WifiBatteryStats$ActionBar$5;

    invoke-direct {p1, p0}, Lo/WifiBatteryStats$ActionBar$5;-><init>(Lo/WifiBatteryStats$ActionBar;)V

    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar;->b:Ljavax/inject/Provider;

    return-void
.end method

.method static synthetic c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->m()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/HomeActivity;
    .locals 1

    .line 764
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Is;->a(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/google/common/base/Optional;)V

    .line 765
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-virtual {v0}, Lo/WifiBatteryStats;->j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Is;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
    .locals 1

    .line 779
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-virtual {v0}, Lo/WifiBatteryStats;->g()Lo/Jp;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Jr;->e(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Jp;)V

    .line 780
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-virtual {v0}, Lo/WifiBatteryStats;->j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Jr;->c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;
    .locals 1

    .line 787
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->a(Lo/WifiBatteryStats;)Lo/ViewSwitcher;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Zd;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/ViewSwitcher;)V

    .line 788
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-virtual {v0}, Lo/WifiBatteryStats;->j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Zd;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V

    return-object p1
.end method

.method static synthetic d(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/di/SignupModule;
    .locals 0

    .line 587
    iget-object p0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;
    .locals 1

    .line 750
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->h()Lo/SelectionSessionLogger;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectSignupFragmentLifecycleLogger(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/SelectionSessionLogger;)V

    .line 751
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->j()Lo/SystemTextClassifier;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectSignupErrorReporter(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/SystemTextClassifier;)V

    .line 752
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->n()Lo/TextClassifierImpl;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectSignupNetworkManager(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/TextClassifierImpl;)V

    return-object p1
.end method

.method static synthetic e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->j()Lo/SystemTextClassifier;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerInfo;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->i()Lo/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method private f()Lo/TextClassificationManager;
    .locals 4

    .line 610
    new-instance v0, Lo/TextClassificationManager;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v1}, Lo/WifiBatteryStats;->e(Lo/WifiBatteryStats;)Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    move-result-object v1

    invoke-static {v1}, Lo/ChangeClipBounds;->a(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;)Lcom/netflix/cl/Logger;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v2}, Lo/WifiBatteryStats;->e(Lo/WifiBatteryStats;)Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    move-result-object v2

    invoke-static {v2}, Lo/ChangeText;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;)Lcom/netflix/cl/ExtLogger;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->a()Lo/SpellCheckerSubtype;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/TextClassificationManager;-><init>(Lcom/netflix/cl/Logger;Lcom/netflix/cl/ExtLogger;Lo/SpellCheckerSubtype;)V

    return-object v0
.end method

.method static synthetic g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->l()Lo/GateKeeperResponse;

    move-result-object p0

    return-object p0
.end method

.method private g()Lo/SystemTextClassifier$StateListAnimator;
    .locals 2

    .line 619
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/SuggestionRangeSpan;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/SystemTextClassifier$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lo/WifiBatteryStats$ActionBar;)Ljava/util/ArrayList;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->k()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private h()Lo/SelectionSessionLogger;
    .locals 2

    .line 613
    new-instance v0, Lo/SelectionSessionLogger;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->f()Lo/TextClassificationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SelectionSessionLogger;-><init>(Lo/TextClassificationManager;)V

    return-object v0
.end method

.method static synthetic i(Lo/WifiBatteryStats$ActionBar;)Lo/InputMethodSession;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->p()Lo/InputMethodSession;

    move-result-object p0

    return-object p0
.end method

.method private i()Lo/SpellCheckerInfo;
    .locals 2

    .line 616
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/TextAppearanceSpan;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerSubtype;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->a()Lo/SpellCheckerSubtype;

    move-result-object p0

    return-object p0
.end method

.method private j()Lo/SystemTextClassifier;
    .locals 4

    .line 622
    new-instance v0, Lo/SystemTextClassifier;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->f()Lo/TextClassificationManager;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->i()Lo/SpellCheckerInfo;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->g()Lo/SystemTextClassifier$StateListAnimator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/SystemTextClassifier;-><init>(Lo/TextClassificationManager;Lo/SpellCheckerInfo;Lo/SystemTextClassifier$StateListAnimator;)V

    return-object v0
.end method

.method static synthetic k(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->s()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    move-result-object p0

    return-object p0
.end method

.method private k()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/TextClassificationSessionFactory;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->o()Lo/TextClassification;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v2}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/TtsSpan;->d(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lo/TextClassification;Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lo/WifiBatteryStats$ActionBar;)Ljava/util/ArrayList;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->x()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private l()Lo/GateKeeperResponse;
    .locals 2

    .line 635
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/StyleSpan;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/netflix/android/moneyball/FlowMode;
    .locals 2

    .line 638
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;->e(Landroid/app/Activity;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->t()Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;

    move-result-object p0

    return-object p0
.end method

.method private n()Lo/TextClassifierImpl;
    .locals 5

    .line 632
    new-instance v0, Lo/TextClassifierImpl;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->a()Lo/SpellCheckerSubtype;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->j()Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->k()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->i()Lo/SpellCheckerInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/TextClassifierImpl;-><init>(Lo/SpellCheckerSubtype;Lo/SystemTextClassifier;Ljava/util/ArrayList;Lo/SpellCheckerInfo;)V

    return-object v0
.end method

.method static synthetic n(Lo/WifiBatteryStats$ActionBar;)Lo/TextLinksParams;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->r()Lo/TextLinksParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->v()Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method private o()Lo/TextClassification;
    .locals 3

    .line 625
    new-instance v0, Lo/TextClassification;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v1}, Lo/WifiBatteryStats;->d(Lo/WifiBatteryStats;)Lo/EntityConfidence;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->f()Lo/TextClassificationManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/TextClassification;-><init>(Lo/EntityConfidence;Lo/TextClassificationManager;)V

    return-object v0
.end method

.method static synthetic p(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->u()Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;

    move-result-object p0

    return-object p0
.end method

.method private p()Lo/InputMethodSession;
    .locals 2

    .line 641
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/SuperscriptSpan;->d(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/InputMethodSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->C()Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;

    move-result-object p0

    return-object p0
.end method

.method private q()Lo/SelectionEvent;
    .locals 2

    .line 653
    new-instance v0, Lo/SelectionEvent;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->f()Lo/TextClassificationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SelectionEvent;-><init>(Lo/TextClassificationManager;)V

    return-object v0
.end method

.method static synthetic r(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->w()Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method private r()Lo/TextLinksParams;
    .locals 2

    .line 650
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Linkify;->c(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/TextLinksParams;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;
    .locals 2

    .line 647
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/UnderlineSpan;->d(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lo/WifiBatteryStats$ActionBar;)Lo/ScaleAnimation;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->B()Lo/ScaleAnimation;

    move-result-object p0

    return-object p0
.end method

.method private t()Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;
    .locals 2

    .line 644
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/WrapTogetherSpan;->a(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->y()Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method private u()Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;
    .locals 2

    .line 668
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/AutoTransition;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lo/WifiBatteryStats$ActionBar;)Lo/PrecomputedText;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->A()Lo/PrecomputedText;

    move-result-object p0

    return-object p0
.end method

.method private v()Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;
    .locals 2

    .line 660
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/UpdateLayout;->a(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;
    .locals 2

    .line 664
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Rfc822Token;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lo/WifiBatteryStats$ActionBar;)Lo/ActionMenuView;
    .locals 0

    .line 587
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->b()Lo/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method private x()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->q()Lo/SelectionEvent;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v2}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/TabStopSpan;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lo/SelectionEvent;Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;
    .locals 2

    .line 672
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar;->c:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v1}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ArcMotion;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar;->c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 734
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    return-void
.end method

.method public a(Lo/DW;)V
    .locals 0

    .line 718
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar;->b(Lo/DW;)Lo/DW;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar;->c(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/HomeActivity;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar;->a(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    return-void
.end method

.method public c()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lo/HealthStatsParceler$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->e:Ljavax/inject/Provider;

    return-object v0
.end method

.method public d()Lo/WebViewProvider;
    .locals 1

    .line 706
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar;->b()Lo/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/GH;)V
    .locals 0

    return-void
.end method

.method public e()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lo/HealthStatsWriter$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar;->b:Ljavax/inject/Provider;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar;->e(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    return-void
.end method
