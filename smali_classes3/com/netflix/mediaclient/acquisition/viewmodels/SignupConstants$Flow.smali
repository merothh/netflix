.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flow"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;

.field public static final MOBILE_ONBOARDING:Ljava/lang/String; = "mobileOnboarding"

.field public static final MOBILE_SIGNUP:Ljava/lang/String; = "mobileSignup"

.field public static final SIGNUP_SIMPLICITY:Ljava/lang/String; = "signupSimplicity"

.field public static final SIMPLE_SILVER_SIGN_UP:Ljava/lang/String; = "simpleSilverSignUp"

.field public static final SIMPLIFIED_MOBILE_SIGNUP:Ljava/lang/String; = "simplifiedMobileSignUp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
