.class public final Lcom/netflix/mediaclient/acquisition2/di/SignupModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lo/SpellCheckerSubtype;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    check-cast p1, Lo/SpellCheckerSubtype;

    return-object p1
.end method

.method public final b(Landroid/app/Activity;)Lo/SpellCheckerInfo;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    check-cast p1, Lo/SpellCheckerInfo;

    return-object p1
.end method

.method public final c(Landroid/app/Activity;)Lo/InputMethodSession;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    check-cast p1, Lo/SpellCheckerInfo;

    invoke-interface {p1}, Lo/SpellCheckerInfo;->getFormCache()Lo/InputMethodSession;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lo/TextClassification;Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassification;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/TextClassificationSessionFactory;",
            ">;"
        }
    .end annotation

    const-string v0, "requestResponseLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lo/TextClassificationSessionFactory;

    .line 61
    check-cast p1, Lo/TextClassificationSessionFactory;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    check-cast p2, Lo/TextClassificationSessionFactory;

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lo/akz;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/app/Activity;)Lo/GateKeeperResponse;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lo/GateKeeperResponse;

    invoke-direct {v0, p1}, Lo/GateKeeperResponse;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final e()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljavax/inject/Named;
        value = "lookupContext"
    .end annotation

    .line 48
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 110
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final e(Landroid/app/Activity;)Lcom/netflix/android/moneyball/FlowMode;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    check-cast p1, Lo/SpellCheckerInfo;

    invoke-interface {p1}, Lo/SpellCheckerInfo;->getMoneyballData()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final e(Lo/SelectionEvent;Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SelectionEvent;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;"
        }
    .end annotation

    const-string v0, "paymentNavigationLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;

    .line 72
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    check-cast p2, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lo/akz;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    return-object p1
.end method

.method public final g(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;

    return-object p1
.end method

.method public final h(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;

    return-object p1
.end method

.method public final i(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;

    return-object p1
.end method

.method public final j(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    return-object p1
.end method

.method public final k(Landroid/app/Activity;)Lo/SystemTextClassifier$StateListAnimator;
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lo/InputMethodSubtypeArray;

    .line 101
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->O()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lo/adu;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 102
    :goto_1
    check-cast p1, Lo/SharedElementCallback;

    .line 99
    invoke-direct {v0, v2, v1, p1}, Lo/InputMethodSubtypeArray;-><init>(ZZLo/SharedElementCallback;)V

    check-cast v0, Lo/SystemTextClassifier$StateListAnimator;

    return-object v0
.end method

.method public final l(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final m(Landroid/app/Activity;)Lo/TextLinksParams;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lo/TextLinksParams;

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p1}, Lo/TextLinksParams;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-object v0
.end method

.method public final n(Landroid/app/Activity;)Lo/ScaleAnimation;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    check-cast p1, Lo/ScaleAnimation;

    return-object p1
.end method

.method public final o(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;

    return-object p1
.end method
