.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# static fields
.field public static final DATA_MANIPULATION_ERROR:Ljava/lang/String; = "SignupNativeDataManipulationError"

.field public static final DEBUG_FIELD_INFO:Ljava/lang/String; = "debugInfo"

.field public static final DEBUG_FIELD_INFO_FLOW:Ljava/lang/String; = "flow"

.field public static final DEBUG_FIELD_INFO_MODE:Ljava/lang/String; = "mode"

.field public static final DEBUG_FIELD_KEY:Ljava/lang/String; = "key"

.field public static final DEBUG_FIELD_MESSAGE:Ljava/lang/String; = "message"

.field public static final DEBUG_FIELD_STACK_TRACE:Ljava/lang/String; = "stackTrace"

.field public static final DEBUG_INFO_ACTION:Ljava/lang/String; = "action"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;

.field public static final LOGIN_FROM_REGISTRATION:Ljava/lang/String; = "loginfromregistration"

.field public static final MISSING_FIELD_ERROR:Ljava/lang/String; = "SignupNativeFieldError"

.field public static final MISSING_MOP_LOGO_URL:Ljava/lang/String; = "SignupNativeMissingMopLogoUrl"

.field public static final MULTI_FIELD_MERGE_ERROR:Ljava/lang/String; = "SignupNativeIncompleteActionError"

.field public static final STACK_TRACE_MAX_LINES:I = 0xf

.field public static final UNKNOWN_MODE:Ljava/lang/String; = "SignupNativeUnknownMode"

.field public static final UNRECOGNIZED_STRING_KEY_ERROR:Ljava/lang/String; = "SignupNativeMissingKeyError"

.field public static final WARN_USER_MODE:Ljava/lang/String; = "SignupNativeWarnUserMode"

.field public static final WEB_VIEW_ERROR:Ljava/lang/String; = "SignupWebViewError"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
