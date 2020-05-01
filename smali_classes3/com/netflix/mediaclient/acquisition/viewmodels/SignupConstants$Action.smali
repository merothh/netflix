.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# static fields
.field public static final BACK_ACTION:Ljava/lang/String; = "backAction"

.field public static final CANCEL_ACTION:Ljava/lang/String; = "cancelAction"

.field public static final CHANGE_PAYMENT_ACTION:Ljava/lang/String; = "changePaymentAction"

.field public static final CHANGE_PLAN_ACTION:Ljava/lang/String; = "changePlanAction"

.field public static final CODE_REDEEM_ACTION:Ljava/lang/String; = "codeRedeemAction"

.field public static final CONFIRM_ORDER_ACTION:Ljava/lang/String; = "confirmOrderAction"

.field public static final CONTINUE_ACTION:Ljava/lang/String; = "continueAction"

.field public static final DCB_START_ACTION:Ljava/lang/String; = "dcbStartAction"

.field public static final EDIT_PAYMENT_ACTION_ID:Ljava/lang/String; = "editPaymentAction"

.field public static final FALLBACK_ACTION:Ljava/lang/String; = "fallbackAction"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;

.field public static final MATURITY_PIN_ACTION:Ljava/lang/String; = "maturityPinAction"

.field public static final NEXT_ACTION:Ljava/lang/String; = "nextAction"

.field public static final PAYMENT_CANCEL_ACTION:Ljava/lang/String; = "paymentCancelAction"

.field public static final PAYPAL_INITIATE_ACTION:Ljava/lang/String; = "paypalInitiateAction"

.field public static final PAYPAL_SUCCESS_ACTION:Ljava/lang/String; = "paypalSuccessAction"

.field public static final PLAN_SELECTION:Ljava/lang/String; = "planSelectionAction"

.field public static final PREV_ACTION:Ljava/lang/String; = "prevAction"

.field public static final REGISTER_ONLY_ACTION:Ljava/lang/String; = "registerOnlyAction"

.field public static final RESEND_CODE_ACTION:Ljava/lang/String; = "resendCodeAction"

.field public static final RESTORE_ACTION:Ljava/lang/String; = "restoreAction"

.field public static final SKIP_ACTION:Ljava/lang/String; = "skipAction"

.field public static final START_ACTION:Ljava/lang/String; = "startAction"

.field public static final START_MEMBERSHIP:Ljava/lang/String; = "startMembershipAction"

.field public static final START_MEMBERSHIP_WITH_GIFT_ONLY:Ljava/lang/String; = "startMembershipWithGiftOnlyAction"

.field public static final VERIFY_ACTION:Ljava/lang/String; = "verifyAction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 565
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
