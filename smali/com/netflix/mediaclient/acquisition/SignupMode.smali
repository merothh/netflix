.class public final Lcom/netflix/mediaclient/acquisition/SignupMode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupMode;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/SignupMode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/SignupMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic isSimpleSilverSignUpFlow$default(Lcom/netflix/mediaclient/acquisition/SignupMode;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSimpleSilverSignUpFlow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isErrorMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "warnUser"

    .line 191
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "moneyballException"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isLoginMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enterMemberCredentials"

    .line 154
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "signupBlocked"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "signupUnavailable"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isMemberMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberHome"

    .line 158
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isMobileOnboardingFlow(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileOnboarding"

    .line 182
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isMobileSignUpFlow(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileSignup"

    .line 170
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isSignupSimplicityFlow(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupSimplicity"

    .line 178
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isSimpleSilverSignUpFlow(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "simpleSilverSignUp"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 166
    invoke-static {p1, v0, v1, v2, v3}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isSimplifiedMobileSignUpFlow(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simplifiedMobileSignUp"

    .line 174
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isSwitchFlowMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "switchFlow"

    .line 186
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isWelcomeMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "welcome"

    .line 162
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final mapToFragment(Lcom/netflix/android/moneyball/FlowMode;)Lo/Fade;
    .locals 4

    const-string v0, "flowMode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getNetflixClientPlatform()Ljava/lang/String;

    move-result-object p1

    const-string v2, "simpleSilverSignUp"

    .line 54
    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "androidNative"

    invoke-static {p1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-object v3

    .line 59
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSimplifiedMobileSignUpFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragmentForSimplifiedMobileSignUpMode(Ljava/lang/String;)Lo/Fade;

    move-result-object v3

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSimpleSilverSignUpFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragmentForSimpleSilverSignUpMode(Ljava/lang/String;)Lo/Fade;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isMobileSignUpFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragmentForMobileSignUpMode(Ljava/lang/String;)Lo/Fade;

    move-result-object v3

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isSignupSimplicityFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragmentForMobileSignUpMode(Ljava/lang/String;)Lo/Fade;

    move-result-object v3

    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/SignupMode;->isMobileOnboardingFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/SignupMode;->mapToFragmentForMobileOnboarding(Ljava/lang/String;)Lo/Fade;

    move-result-object v3

    :cond_5
    :goto_0
    return-object v3
.end method

.method public final mapToFragmentForMobileOnboarding(Ljava/lang/String;)Lo/Fade;
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "kidsprofiles"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "devicesurvey"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_2

    :sswitch_2
    const-string v0, "maturityPin"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_2

    :sswitch_3
    const-string v0, "confirmMembershipStartedForSimplicity"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_2

    :sswitch_4
    const-string v0, "onramp"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_2

    :sswitch_5
    const-string v0, "verifyAge"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_2

    :sswitch_6
    const-string v0, "addprofiles"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    :goto_0
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_2

    :cond_0
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79aa0c75 -> :sswitch_6
        -0x6515863a -> :sswitch_5
        -0x3c52ad8f -> :sswitch_4
        -0x1a201d61 -> :sswitch_3
        -0x19921bbc -> :sswitch_2
        -0xa7d2d0 -> :sswitch_1
        0x14be2957 -> :sswitch_0
    .end sparse-switch
.end method

.method public final mapToFragmentForMobileSignUpMode(Ljava/lang/String;)Lo/Fade;
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    const-string v0, "mopWebView"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_1
    const-string v0, "editdcbGlobalOptionMode"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :sswitch_2
    const-string v0, "selectOTPPhoneNumber"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_3
    const-string v0, "editPlanSelection"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_a

    :sswitch_4
    const-string v0, "paypalOptionMode"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :sswitch_5
    const-string v0, "welcome"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_6
    const-string v0, "editPaymentAndStartMembershipModeWithContext"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_7

    :sswitch_7
    const-string v0, "editPayment"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_9

    :sswitch_8
    const-string v0, "editpaypalOptionMode"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    :goto_0
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_9
    const-string v0, "verifyCardContext"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :sswitch_a
    const-string v0, "confirm"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_b
    const-string v0, "deDebitOptionMode"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :sswitch_c
    const-string v0, "replayRequestMode"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_d
    const-string v0, "editdebitOptionMode"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    :sswitch_e
    const-string v0, "verifyCardEditPaymentContext"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    :goto_1
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_f
    const-string v0, "editdeDebitOptionMode"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    :goto_2
    new-instance p1, Lo/LongSparseArray;

    invoke-direct {p1}, Lo/LongSparseArray;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_10
    const-string v0, "editdcbOptionMode"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :sswitch_11
    const-string v0, "payAndStartMembershipForced"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_9

    :sswitch_12
    const-string v0, "planSelection"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_a

    :sswitch_13
    const-string v0, "payAndStartMembershipForcedWithContext"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_7

    :sswitch_14
    const-string v0, "planSelectionWithContext"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_15
    const-string v0, "enterOTPCodeWithTou"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_6

    :sswitch_16
    const-string v0, "giftOptionMode"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_17
    const-string v0, "editPaymentAndStartMembershipMode"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_9

    :sswitch_18
    const-string v0, "dcbVerify"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_6

    :sswitch_19
    const-string v0, "creditOptionMode"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_5

    :sswitch_1a
    const-string v0, "dcbOptionMode"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    :goto_3
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_1b
    const-string v0, "debitOptionMode"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    :goto_4
    new-instance p1, Lo/DataUnit;

    invoke-direct {p1}, Lo/DataUnit;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_1c
    const-string v0, "registrationWithContext"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_1d
    const-string v0, "editcreditOptionMode"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    :goto_5
    new-instance p1, Lo/DebugUtils;

    invoke-direct {p1}, Lo/DebugUtils;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_1e
    const-string v0, "verifyCard"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_1f
    const-string v0, "enterOTPCodeMode"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    :goto_6
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_20
    const-string v0, "payAndStartMembershipGiftAsOnlyMop"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_9

    :sswitch_21
    const-string v0, "coDebitOptionMode"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_8

    :sswitch_22
    const-string v0, "changeCardProcessingType"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto/16 :goto_d

    :sswitch_23
    const-string v0, "registration"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_d

    :sswitch_24
    const-string v0, "confirmWithContext"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    :goto_7
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_d

    :sswitch_25
    const-string v0, "enterOTPPhoneMode"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_d

    :sswitch_26
    const-string v0, "editcoDebitOptionMode"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    :goto_8
    new-instance p1, Lo/LogPrinter;

    invoke-direct {p1}, Lo/LogPrinter;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_d

    :sswitch_27
    const-string v0, "payAndStartMembershipWithContext"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    :goto_9
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_d

    :sswitch_28
    const-string v0, "changePlan"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    :goto_a
    sget-object p1, Lo/fJ;->d:Lo/fJ$TaskDescription;

    invoke-virtual {p1}, Lo/fJ$TaskDescription;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lo/ScaleGestureDetector;

    invoke-direct {p1}, Lo/ScaleGestureDetector;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    goto :goto_b

    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;-><init>()V

    :goto_b
    check-cast p1, Lo/Fade;

    goto :goto_d

    :cond_1
    :goto_c
    const/4 p1, 0x0

    :goto_d
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7f144507 -> :sswitch_28
        -0x78116b80 -> :sswitch_27
        -0x6e65e512 -> :sswitch_26
        -0x6a1ecfc2 -> :sswitch_25
        -0x5c9c24d7 -> :sswitch_24
        -0x507c1747 -> :sswitch_23
        -0x4f59a013 -> :sswitch_22
        -0x4ef30c48 -> :sswitch_21
        -0x4d654369 -> :sswitch_20
        -0x45b5447d -> :sswitch_1f
        -0x3d9a6cd7 -> :sswitch_1e
        -0x2ad10e65 -> :sswitch_1d
        -0x17dfec70 -> :sswitch_1c
        -0x1375d23c -> :sswitch_1b
        -0x12e44425 -> :sswitch_1a
        -0x1107286f -> :sswitch_19
        -0x108825e4 -> :sswitch_18
        -0xde94400 -> :sswitch_17
        0x5107d08 -> :sswitch_16
        0x6584cd4 -> :sswitch_15
        0x87769a6 -> :sswitch_14
        0xa8262a7 -> :sswitch_13
        0xba58463 -> :sswitch_12
        0xd9c2202 -> :sswitch_11
        0x1098ee11 -> :sswitch_10
        0x12914e39 -> :sswitch_f
        0x1522807c -> :sswitch_e
        0x2583aa7a -> :sswitch_d
        0x2e50fa6b -> :sswitch_c
        0x32042703 -> :sswitch_b
        0x38b0e6c0 -> :sswitch_a
        0x3dbf0a46 -> :sswitch_9
        0x40ca7515 -> :sswitch_8
        0x41595c9c -> :sswitch_7
        0x43e03de9 -> :sswitch_6
        0x497f9b62 -> :sswitch_5
        0x5a945b0b -> :sswitch_4
        0x5ec1e679 -> :sswitch_3
        0x5f923648 -> :sswitch_2
        0x66b0f754 -> :sswitch_1
        0x6b9a352b -> :sswitch_0
    .end sparse-switch
.end method

.method public final mapToFragmentForSimpleSilverSignUpMode(Ljava/lang/String;)Lo/Fade;
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x497f9b62

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "welcome"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final mapToFragmentForSimplifiedMobileSignUpMode(Ljava/lang/String;)Lo/Fade;
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "partnerPaymentWithContext"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :sswitch_1
    const-string v0, "editPlanSelection"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :sswitch_2
    const-string v0, "welcome"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :sswitch_3
    const-string v0, "registrationWithContext"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :sswitch_4
    const-string v0, "registration"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :sswitch_5
    const-string v0, "partnerDcbPhoneEntry"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :sswitch_6
    const-string v0, "partnerDcbVerify"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;-><init>()V

    check-cast p1, Lo/Fade;

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5fbb01cc -> :sswitch_6
        -0x53fad021 -> :sswitch_5
        -0x507c1747 -> :sswitch_4
        -0x17dfec70 -> :sswitch_3
        0x497f9b62 -> :sswitch_2
        0x5ec1e679 -> :sswitch_1
        0x70bcdf0b -> :sswitch_0
    .end sparse-switch
.end method
