.class public Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;
.super Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

.field public static final EXTRA_MODE:Ljava/lang/String; = "extra_mode"

.field public static final KEY_SUPPRESS_NAVIGATE_ON_RESTORE:Ljava/lang/String; = "suppress"

.field public static final TAG:Ljava/lang/String; = "nf_signup_native"

.field public static final VIEW_FLIPPER_FRAGMENT_CONTAINER_INDEX:I = 0x1

.field public static final VIEW_FLIPPER_SPINNER_INDEX:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final fragmentManager:Lo/SerializablePermission;

.field private lastNavigationSessionId:Ljava/lang/Long;

.field private lifecycleRegistry:Lo/ClassCastException;

.field private loggingIn:Z

.field private nmTTIComplete:Z

.field private nmTTRComplete:Z

.field public signupErrorReporter:Lo/SystemTextClassifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public signupFragmentLifecycleLogger:Lo/SelectionSessionLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public signupNetworkManager:Lo/TextClassifierImpl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private suppressNavigateToFlowMode:Ljava/lang/Boolean;

.field private final userAgentRepository:Lo/JM;

.field private final viewModel$delegate:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentManager:Lo/SerializablePermission;

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->suppressNavigateToFlowMode:Ljava/lang/Boolean;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$viewModel$2;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->viewModel$delegate:Lo/aka;

    .line 140
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->userAgentRepository:Lo/JM;

    return-void
.end method

.method public static final synthetic access$closeClInteractSessions(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClInteractSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public static final synthetic access$closeClRenderSessions(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public static final synthetic access$getCurrentFragment$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lo/Fade;
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getCurrentFragment()Lo/Fade;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLifecycleRegistry$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lo/ClassCastException;
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lifecycleRegistry:Lo/ClassCastException;

    if-nez p0, :cond_0

    const-string v0, "lifecycleRegistry"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMActivityDestroy$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getSuppressNavigateToFlowMode$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->suppressNavigateToFlowMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$getUserAgentRepository$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lo/JM;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->userAgentRepository:Lo/JM;

    return-object p0
.end method

.method public static final synthetic access$hideProgressSpinner(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->hideProgressSpinner()V

    return-void
.end method

.method public static final synthetic access$initThreatMetrixIfApplicable(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initThreatMetrixIfApplicable()V

    return-void
.end method

.method public static final synthetic access$navigateToFlowMode(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->navigateToFlowMode(Lcom/netflix/android/moneyball/FlowMode;)V

    return-void
.end method

.method public static final synthetic access$openUrl(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$persistAbAllocations(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->persistAbAllocations(Lcom/netflix/android/moneyball/FlowMode;)V

    return-void
.end method

.method public static final synthetic access$setLifecycleRegistry$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/ClassCastException;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lifecycleRegistry:Lo/ClassCastException;

    return-void
.end method

.method public static final synthetic access$setSuppressNavigateToFlowMode$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->suppressNavigateToFlowMode:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$signOut(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signOut()V

    return-void
.end method

.method public static final synthetic access$startNavigation(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startNavigation()V

    return-void
.end method

.method public static final synthetic access$updateCurrentAppLocale(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->updateCurrentAppLocale()V

    return-void
.end method

.method private final addPrivacyMenuOption(Landroid/view/Menu;)V
    .locals 4

    .line 769
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kw:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qb:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 771
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showMenuAlwaysForLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 774
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 777
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addPrivacyMenuOption$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addPrivacyMenuOption$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private final addSignInMenuOption(Landroid/view/Menu;)V
    .locals 1

    .line 735
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getSignInMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignInMenuOption$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignInMenuOption$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private final addSignOutMenuOption(Landroid/view/Menu;)V
    .locals 1

    .line 750
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getSignOutMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignOutMenuOption$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignOutMenuOption$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private final closeClInteractSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->nmTTIComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->nmTTIComplete:Z

    .line 221
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->x:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    return-void
.end method

.method private final closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->nmTTRComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->nmTTRComplete:Z

    .line 228
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->y:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 230
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/Logger;->flush()V

    :cond_0
    return-void
.end method

.method private final createPlanSelectionFragment()Lo/Fade;
    .locals 1

    .line 902
    sget-object v0, Lo/fJ;->d:Lo/fJ$TaskDescription;

    invoke-virtual {v0}, Lo/fJ$TaskDescription;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/ScaleGestureDetector;

    invoke-direct {v0}, Lo/ScaleGestureDetector;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;-><init>()V

    :goto_0
    check-cast v0, Lo/Fade;

    return-object v0
.end method

.method private final endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 3

    .line 975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 976
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p2

    .line 977
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "reason"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "nf_signup_native"

    invoke-static {v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    sget-object p2, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->Companion:Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger$Companion;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger$Companion;->getInstance()Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/HashMap;)V

    return-void
.end method

.method private final errorStringFromRequestStatus(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->da:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026eneric_retryable_failure)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final fragmentShouldAnimateForward(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 717
    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 722
    :cond_0
    const-class p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final getCurrentFragment()Lo/Fade;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentManager:Lo/SerializablePermission;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ry:I

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/Fade;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/Fade;

    return-object v0
.end method

.method private final getEditPaymentModeFragment()Lo/Fade;
    .locals 4

    .line 947
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 948
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getSelectedPaymentChoiceMode(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 950
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "editdebitOptionMode"

    .line 952
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lo/DataUnit;

    invoke-direct {v0}, Lo/DataUnit;-><init>()V

    move-object v1, v0

    check-cast v1, Lo/Fade;

    goto :goto_3

    :sswitch_1
    const-string v3, "editdeDebitOptionMode"

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lo/LongSparseArray;

    invoke-direct {v0}, Lo/LongSparseArray;-><init>()V

    move-object v1, v0

    check-cast v1, Lo/Fade;

    goto :goto_3

    :sswitch_2
    const-string v3, "editdcbOptionMode"

    .line 953
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;-><init>()V

    move-object v1, v0

    check-cast v1, Lo/Fade;

    goto :goto_3

    :sswitch_3
    const-string v3, "editcreditOptionMode"

    .line 951
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lo/DebugUtils;

    invoke-direct {v0}, Lo/DebugUtils;-><init>()V

    move-object v1, v0

    check-cast v1, Lo/Fade;

    goto :goto_3

    :sswitch_4
    const-string v3, "editcoDebitOptionMode"

    .line 954
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lo/LogPrinter;

    invoke-direct {v0}, Lo/LogPrinter;-><init>()V

    move-object v1, v0

    check-cast v1, Lo/Fade;

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 957
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->onSignUpUnknownMode(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e65e512 -> :sswitch_4
        -0x2ad10e65 -> :sswitch_3
        0x1098ee11 -> :sswitch_2
        0x12914e39 -> :sswitch_1
        0x2583aa7a -> :sswitch_0
    .end sparse-switch
.end method

.method private final getNextFragment(Lcom/netflix/android/moneyball/FlowMode;)Lo/Fade;
    .locals 1

    .line 614
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragment(Lcom/netflix/android/moneyball/FlowMode;)Lo/Fade;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {p1}, Lo/Fade;->l()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->updateNavigationLevel(Lcom/netflix/cl/model/AppView;)V

    return-object p1
.end method

.method private final getSelectedPaymentChoiceMode(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;
    .locals 8

    .line 964
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    const-string v6, "signupErrorReporter"

    if-nez v0, :cond_0

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v2, "paymentChoice"

    .line 1060
    invoke-interface {p1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v7

    :goto_0
    if-nez v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeFieldError"

    .line 1064
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    :goto_1
    move-object v1, v7

    goto :goto_2

    .line 1067
    :cond_2
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeDataManipulationError"

    .line 1068
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    .line 964
    :cond_3
    :goto_2
    check-cast v1, Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez v0, :cond_4

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    const-string v0, "paymentChoice"

    .line 1074
    invoke-interface {p1, v0}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_3
    move-object p1, v7

    goto :goto_4

    .line 1085
    :cond_5
    instance-of v0, p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v0, :cond_6

    goto :goto_3

    .line 1090
    :cond_6
    :goto_4
    check-cast p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_7
    move-object p1, v7

    :goto_5
    if-eqz p1, :cond_d

    .line 966
    check-cast p1, Ljava/lang/Iterable;

    .line 1091
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 967
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 968
    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez p1, :cond_9

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    const-string p1, "paymentChoiceMode"

    .line 1093
    invoke-interface {v0, p1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_a
    move-object p1, v7

    :goto_6
    if-nez p1, :cond_b

    goto :goto_7

    .line 1100
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    move-object v7, p1

    .line 1105
    :goto_7
    check-cast v7, Ljava/lang/String;

    :cond_d
    return-object v7
.end method

.method private final getSignInMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 4

    .line 744
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kv:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qd:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 745
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v0, "signInItem"

    .line 746
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getSignOutMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 4

    .line 763
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kx:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qh:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 764
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v0, "signOutItem"

    .line 765
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic handoffToWebview$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "signupSimplicity"

    .line 651
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->handoffToWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handoffToWebview"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final hideActionBar()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Z)V

    :cond_0
    return-void
.end method

.method private final hideProgressSpinner()V
    .locals 2

    .line 847
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ru:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ProgressBar;

    const-string v1, "signupActivitySpinnerContentFlipper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ProgressBar;->setDisplayedChild(I)V

    return-void
.end method

.method private final initProgressSpinner()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showProgressSpinner()V

    return-void
.end method

.method private final initSavedBundleProps(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "suppress"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->suppressNavigateToFlowMode:Ljava/lang/Boolean;

    return-void
.end method

.method private final initSignupHeaderObserver()V
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getSignInButtonType()Lo/Cloneable;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    new-instance v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initSignupHeaderObserver$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initSignupHeaderObserver$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v2, Lo/ClassFormatError;

    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method private final initThreatMetrixIfApplicable()V
    .locals 3

    .line 550
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 551
    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez v1, :cond_0

    const-string v1, "signupErrorReporter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v1, "TMSessionId"

    .line 1005
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 1012
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 1017
    :goto_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 554
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    nop

    :cond_4
    return-void
.end method

.method private final initViewModelObserver()V
    .locals 3

    .line 501
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentMoneyballData()Lo/Cloneable;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    new-instance v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initViewModelObserver$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v2, Lo/ClassFormatError;

    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method private final initWindow()V
    .locals 1

    .line 255
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/adk;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private final isModeNullOrWelcome()Z
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "welcome"

    .line 340
    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private final launchFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 688
    instance-of v0, p1, Lo/Fade;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lo/Fade;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 689
    :cond_1
    invoke-virtual {v0}, Lo/Fade;->i()Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->NORMAL_BACK:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 691
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentManager:Lo/SerializablePermission;

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    const-string v2, "fragmentManager.beginTransaction()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1001

    .line 692
    invoke-virtual {v0, v2}, Lo/UnsupportedEncodingException;->e(I)Lo/UnsupportedEncodingException;

    .line 694
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getCurrentFragment()Lo/Fade;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    const-string v3, "currentFragment?.javaClass?.simpleName ?: \"\""

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fragment.javaClass.simpleName"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentShouldAnimateForward(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 702
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->ru:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/ProgressBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$Application;->O:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lo/ProgressBar;->setBackgroundColor(I)V

    .line 703
    sget v2, Lcom/netflix/mediaclient/ui/R$ActionBar;->g:I

    sget v4, Lcom/netflix/mediaclient/ui/R$ActionBar;->j:I

    invoke-virtual {v0, v2, v4}, Lo/UnsupportedEncodingException;->a(II)Lo/UnsupportedEncodingException;

    .line 706
    :cond_4
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->ry:I

    invoke-virtual {v0, v2, p1, v3}, Lo/UnsupportedEncodingException;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    if-eqz v1, :cond_5

    .line 708
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/UnsupportedEncodingException;->c(Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 711
    :cond_5
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->d()I

    return-void
.end method

.method private final launchProfilesGate()V
    .locals 8

    .line 860
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->loggingIn:Z

    if-nez v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showProgressSpinner()V

    const/4 v0, 0x1

    .line 862
    iput-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->loggingIn:Z

    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->userAgentRepository:Lo/JM;

    invoke-virtual {v0}, Lo/JM;->c()Lio/reactivex/Observable;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "userAgentRepository.requ\u2026keUntil(mActivityDestroy)"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 865
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$launchProfilesGate$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private final launchSwitchFlowMode(Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 5

    .line 631
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    const-string v1, "signupErrorReporter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v0, "targetFlow"

    .line 1019
    invoke-interface {p1, v0}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    move-object v0, v2

    goto :goto_2

    .line 1026
    :cond_2
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    .line 631
    :cond_3
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 632
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez v3, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    const-string v3, "targetMode"

    .line 1033
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    if-nez v3, :cond_6

    :goto_4
    move-object v3, v2

    goto :goto_5

    .line 1040
    :cond_6
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_7

    goto :goto_4

    .line 632
    :cond_7
    :goto_5
    check-cast v3, Ljava/lang/String;

    .line 633
    iget-object v4, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez v4, :cond_8

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    const-string v1, "targetNetflixClientPlatform"

    .line 1047
    invoke-interface {p1, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v2

    :goto_6
    if-nez p1, :cond_a

    :goto_7
    move-object p1, v2

    goto :goto_8

    .line 1054
    :cond_a
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_7

    .line 633
    :cond_b
    :goto_8
    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 636
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Android Signup Native activity: Switch flow did not provide a targetFlow"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez v3, :cond_d

    .line 639
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Android Signup Native activity: Switch flow did not provide a targetMode"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v1, "androidWebView"

    .line 643
    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 644
    invoke-static {p0, v2, v3, p1, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->handoffToWebview$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_9

    .line 647
    :cond_e
    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchFlowAndMode(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method private final logAndLaunchFragment(Lo/Fade;)V
    .locals 1

    .line 682
    invoke-virtual {p1}, Lo/Fade;->l()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->updateNavigationLevel(Lcom/netflix/cl/model/AppView;)V

    .line 684
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final navigateToFlowMode(Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 2

    if-eqz p1, :cond_7

    .line 573
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->hideProgressSpinner()V

    .line 576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setTheme()V

    .line 580
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSwitchFlowMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->updateSignInButtonInHeader(Lcom/netflix/android/moneyball/FlowMode;)V

    .line 585
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getNextFragment(Lcom/netflix/android/moneyball/FlowMode;)Lo/Fade;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 588
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 589
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isErrorMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->onErrorMode()V

    goto :goto_0

    .line 590
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isLoginMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 591
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isMemberMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchProfilesGate()V

    goto :goto_0

    .line 592
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSwitchFlowMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchSwitchFlowMode(Lcom/netflix/android/moneyball/FlowMode;)V

    goto :goto_0

    .line 593
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSignupSimplicityFlow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->handoffToWebview$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 594
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->onSignUpUnknownMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private final onErrorMode()V
    .locals 4

    const-string v0, "nf_signup_native"

    const-string v1, "Show onErrorMode dialog"

    .line 600
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->da:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.st\u2026eneric_retryable_failure)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;Z)Z

    return-void
.end method

.method private final onSignUpUnknownMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show UnknownMode error dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nf_signup_native"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->da:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getString(R.st\u2026eneric_retryable_failure)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 608
    iget-object v5, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez v5, :cond_0

    const-string v0, "signupErrorReporter"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "SignupNativeUnknownMode"

    invoke-static/range {v5 .. v10}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    return-void
.end method

.method private final openUrl(Ljava/lang/String;)V
    .locals 2

    .line 790
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(Intent.ACTION_VIEW).setData(uri)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 792
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_signup_native"

    const-string v0, "Unable to open browser"

    .line 796
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->Z:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/adk;->c(II)V

    :goto_0
    return-void
.end method

.method private final persistAbAllocations(Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 7

    .line 527
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "fields"

    const-string v2, "abAllocations"

    .line 528
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 529
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 534
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "testId"

    .line 535
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Number;

    if-nez v6, :cond_1

    move-object v5, v2

    :cond_1
    check-cast v5, Ljava/lang/Number;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    const-string v6, "cellId"

    .line 536
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Number;

    if-nez v6, :cond_3

    move-object v4, v2

    :cond_3
    check-cast v4, Ljava/lang/Number;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    .line 537
    :goto_2
    new-instance v6, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;

    invoke-direct {v6, p1, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    check-cast v6, Lo/alN;

    invoke-static {v5, v4, v6}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_0

    .line 546
    :cond_5
    invoke-static {v0, v1}, Lo/cP;->b(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private final shouldShowOnlyOnWelcome()Z
    .locals 2

    .line 496
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "welcome"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static synthetic showErrorDialogForStatus$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lcom/netflix/mediaclient/android/app/Status;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 831
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showErrorDialogForStatus(Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showErrorDialogForStatus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final showInterruptDialog()V
    .locals 3

    .line 414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 415
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qf:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 416
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aw:I

    new-instance v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 417
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aj:I

    sget-object v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$2;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final showMenuAlwaysForLocale()Z
    .locals 3

    .line 802
    sget-object v0, Lo/ys;->a:Lo/ys;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "es"

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final showProgressSpinner()V
    .locals 3

    .line 838
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ru:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ProgressBar;

    const-string v1, "signupActivitySpinnerContentFlipper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ProgressBar;->setDisplayedChild(I)V

    .line 843
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ru:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ProgressBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->ao:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ProgressBar;->setBackgroundColor(I)V

    return-void
.end method

.method private final signOut()V
    .locals 1

    const/4 v0, 0x0

    .line 758
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->updateNavigationLevel(Lcom/netflix/cl/model/AppView;)V

    .line 759
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/JL;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final startNavigation()V
    .locals 2

    .line 325
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "inputMode"

    .line 329
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchMode(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "welcome"

    .line 331
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchMode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateCurrentAppLocale()V
    .locals 4

    .line 406
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->h(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 407
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 1003
    const-class v2, Lo/IE;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/IE;

    .line 407
    invoke-interface {v2, v0}, Lo/IE;->b(Ljava/util/Locale;)Z

    .line 408
    sget-object v2, Lo/ys;->a:Lo/ys;

    new-instance v3, Lo/afz;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lo/afz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lo/ys;->b(Landroid/content/Context;Lo/afz;)V

    return-void
.end method

.method private final updateNavigationLevel(Lcom/netflix/cl/model/AppView;)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lastNavigationSessionId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 622
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lastNavigationSessionId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 626
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/NavigationLevel;

    invoke-direct {v2, p1, v0}, Lcom/netflix/cl/model/event/session/NavigationLevel;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 625
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lastNavigationSessionId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lo/Serializable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addDebugMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public final addSignInSignOutMenu(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getSignInButtonType()Lo/Cloneable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addSignOutMenuOption(Landroid/view/Menu;)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addSignInMenuOption(Landroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final checkEmptyFlowMode()V
    .locals 2

    .line 482
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getCurrentFragment()Lo/Fade;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getMoneyballData()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->finish()V

    .line 484
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 385
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v0, Lo/zT;

    return-object v0
.end method

.method public final fetchFlowAndMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    const-string v1, "serviceManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->n()Lo/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchFlowAndMode$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchFlowAndMode$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v1, Lo/cb;

    invoke-interface {v0, p1, p2, v1}, Lo/cc;->b(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V

    :cond_0
    return-void
.end method

.method public final fetchMode(Ljava/lang/String;)V
    .locals 4

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupNetworkManager:Lo/TextClassifierImpl;

    if-nez v0, :cond_0

    const-string v1, "signupNetworkManager"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lo/TextClassificationSessionFactory;

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$fetchMode$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;)V

    check-cast v3, Lo/TextClassificationSessionFactory;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lo/TextClassifierImpl;->d(Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 820
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->finish()V

    .line 821
    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->g:I

    sget v1, Lcom/netflix/mediaclient/ui/R$ActionBar;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getFormCache()Lo/InputMethodManagerInternal;
    .locals 1

    .line 990
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getFormCache()Lo/InputMethodManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFormCache()Lo/InputMethodSession;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getFormCache()Lo/InputMethodManagerInternal;

    move-result-object v0

    check-cast v0, Lo/InputMethodSession;

    return-object v0
.end method

.method public getHelpMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kn:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getHelpMenuText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 729
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v0, "helpMenuItem"

    .line 730
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getHelpMenuText()Ljava/lang/String;
    .locals 2

    .line 307
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->qc:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.signup_toolbar_help)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getLifecycle()Lo/ClassCastException;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public getLifecycle()Lo/ClassCastException;
    .locals 2

    .line 266
    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lifecycleRegistry:Lo/ClassCastException;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lo/ClassCastException;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-direct {v0, v1}, Lo/ClassCastException;-><init>(Lo/UnicodeScript;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lifecycleRegistry:Lo/ClassCastException;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->lifecycleRegistry:Lo/ClassCastException;

    if-nez v0, :cond_1

    const-string v1, "lifecycleRegistry"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getLoggingIn()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->loggingIn:Z

    return v0
.end method

.method public getMoneyballData()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentMoneyballData()Lo/Cloneable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    return-object v0
.end method

.method public final getSignupErrorReporter()Lo/SystemTextClassifier;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    if-nez v0, :cond_0

    const-string v1, "signupErrorReporter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSignupFragmentLifecycleLogger()Lo/SelectionSessionLogger;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupFragmentLifecycleLogger:Lo/SelectionSessionLogger;

    if-nez v0, :cond_0

    const-string v1, "signupFragmentLifecycleLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSignupNetworkManager()Lo/TextClassifierImpl;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupNetworkManager:Lo/TextClassifierImpl;

    if-nez v0, :cond_0

    const-string v1, "signupNetworkManager"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 310
    sget-object v0, Lcom/netflix/cl/model/AppView;->signupPrompt:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->viewModel$delegate:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 4

    .line 427
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 428
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const-string v3, "welcome"

    .line 431
    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "mobileOnboarding"

    .line 436
    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchProfilesGate()V

    return v1

    .line 442
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getCurrentFragment()Lo/Fade;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {v0}, Lo/Fade;->i()Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    goto :goto_1

    .line 446
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showInterruptDialog()V

    goto :goto_1

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentManager:Lo/SerializablePermission;

    invoke-virtual {v0}, Lo/SerializablePermission;->c()V

    :goto_1
    return v1

    :cond_6
    :goto_2
    return v2
.end method

.method public final handoffToWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->Companion:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;->getShaktiInboundUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/abu;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 656
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nextUrl"

    .line 657
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SignupActivity.createSho\u2026a(\"nextUrl\", fallbackUrl)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "welcome"

    .line 660
    invoke-static {p2, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string v0, "useDarkBackground"

    .line 661
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    .line 665
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->finish()V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final launchWelcome()V
    .locals 1

    const-string v0, "welcome"

    .line 422
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchMode(Ljava/lang/String;)V

    return-void
.end method

.method public navigateToPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetNetflixClientPlatform"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidNative"

    .line 669
    invoke-static {p3, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 670
    sget-object p3, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-virtual {p3, p2}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragmentForMobileSignUpMode(Ljava/lang/String;)Lo/Fade;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 672
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    return-void

    .line 677
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->handoffToWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentMoneyballData()Lo/Cloneable;

    move-result-object v0

    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->d()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 236
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 238
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fC:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setContentView(I)V

    .line 197
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initWindow()V

    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initViewModelObserver()V

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initSignupHeaderObserver()V

    .line 200
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initProgressSpinner()V

    .line 201
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initSavedBundleProps(Landroid/os/Bundle;)V

    .line 202
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 1001
    const-class p1, Lo/IE;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/IE;

    .line 202
    invoke-interface {p1}, Lo/IE;->d()V

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->checkEmptyFlowMode()V

    .line 204
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentManager:Lo/SerializablePermission;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupFragmentLifecycleLogger:Lo/SelectionSessionLogger;

    if-nez v0, :cond_0

    const-string v1, "signupFragmentLifecycleLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lo/SerializablePermission$Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/SerializablePermission;->a(Lo/SerializablePermission$Activity;Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->shouldShowOnlyOnWelcome()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addPrivacyMenuOption(Landroid/view/Menu;)V

    .line 277
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showMenuAlwaysForLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 283
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addSignInSignOutMenu(Landroid/view/Menu;)V

    .line 286
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addDebugMenu(Landroid/view/Menu;)V

    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setTheme()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 209
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->onDestroy()V

    .line 211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClInteractSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 213
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fragmentManager:Lo/SerializablePermission;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupFragmentLifecycleLogger:Lo/SelectionSessionLogger;

    if-nez v1, :cond_1

    const-string v2, "signupFragmentLifecycleLogger"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Lo/SerializablePermission$Activity;

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->e(Lo/SerializablePermission$Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 807
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "confirmpageinfosignout"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 809
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lo/JL;->e(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onNmhpCanInteract()V
    .locals 1

    .line 882
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClInteractSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public onNmhpCtaClick()V
    .locals 1

    .line 894
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public onNmhpRenderFail()V
    .locals 1

    .line 890
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public onNmhpRenderSuccess()V
    .locals 1

    .line 886
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public onPlanContextConfirm()V
    .locals 1

    .line 898
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->createPlanSelectionFragment()Lo/Fade;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    return-void
.end method

.method public onRegistrationContextConfirm()V
    .locals 1

    .line 906
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;-><init>()V

    check-cast v0, Lo/Fade;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    return-void
.end method

.method public onReturningMemberContextConfirm(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c9c24d7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0xa8262a7

    if-eq v0, v1, :cond_1

    const v1, 0x43e03de9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "editPaymentAndStartMembershipModeWithContext"

    .line 917
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getEditPaymentModeFragment()Lo/Fade;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v0, "payAndStartMembershipForcedWithContext"

    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;-><init>()V

    move-object v2, p1

    check-cast v2, Lo/Fade;

    goto :goto_2

    :cond_2
    const-string v0, "confirmWithContext"

    .line 915
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;-><init>()V

    move-object v2, p1

    check-cast v2, Lo/Fade;

    goto :goto_2

    .line 919
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 920
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->onSignUpUnknownMode(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_5

    .line 926
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    :cond_5
    return-void
.end method

.method public onSMSPaymentContextConfirm()V
    .locals 1

    .line 910
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;-><init>()V

    check-cast v0, Lo/Fade;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "suppress"

    const/4 v1, 0x1

    .line 568
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSkipAlternatePaymentMethod()V
    .locals 1

    .line 985
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;-><init>()V

    check-cast v0, Lo/Fade;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    return-void
.end method

.method public onUrlClicked(Ljava/lang/String;)V
    .locals 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "loginfromregistration"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onVerifyContextConfirm()V
    .locals 1

    .line 943
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;-><init>()V

    check-cast v0, Lo/Fade;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->logAndLaunchFragment(Lo/Fade;)V

    return-void
.end method

.method public onrampFinished()V
    .locals 0

    .line 939
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->launchProfilesGate()V

    return-void
.end method

.method public onrampNavigated()V
    .locals 0

    .line 931
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->hideActionBar()V

    return-void
.end method

.method public onrampSignOut()V
    .locals 0

    .line 935
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signOut()V

    return-void
.end method

.method public setAllTextColor(Landroid/view/View;I)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 373
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/Flushable;->c(Landroid/view/ViewGroup;)Lo/anb;

    move-result-object p1

    invoke-interface {p1}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setAllTextColor(Landroid/view/View;I)V

    goto :goto_0

    .line 377
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 378
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 379
    :cond_1
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    const/16 p2, 0x14

    .line 380
    invoke-virtual {p1, v1, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setLoggingIn(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->loggingIn:Z

    return-void
.end method

.method public final setSignupErrorReporter(Lo/SystemTextClassifier;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    return-void
.end method

.method public final setSignupFragmentLifecycleLogger(Lo/SelectionSessionLogger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupFragmentLifecycleLogger:Lo/SelectionSessionLogger;

    return-void
.end method

.method public final setSignupNetworkManager(Lo/TextClassifierImpl;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupNetworkManager:Lo/TextClassifierImpl;

    return-void
.end method

.method public setTheme()V
    .locals 4

    .line 344
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->isModeNullOrWelcome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Lkotlin/Pair;

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->aj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Lkotlin/Pair;

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->aj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v0}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/Magnifier;->setBackgroundResource(I)V

    .line 353
    invoke-static {}, Lo/adq;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {v1}, Lo/Magnifier;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 355
    new-instance v3, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;

    invoke-direct {v3, v1, p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;-><init>(Lo/Magnifier;Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lkotlin/Pair;)V

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 354
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 362
    :cond_1
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setAllTextColor(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final showErrorDialogForStatus(Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->errorStringFromRequestStatus(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object p1

    .line 833
    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->Companion:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;Z)Z

    return-void
.end method

.method public showHelpInMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 814
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/Binder_SignupNativeActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 815
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClInteractSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 816
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->closeClRenderSessions(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public wrapContextLocale(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/abD$StateListAnimator;->h(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 856
    invoke-static {p1, v0}, Lo/afw;->c(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    move-result-object p1

    const-string v0, "LocalizationUtils.wrap(context, locale)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
