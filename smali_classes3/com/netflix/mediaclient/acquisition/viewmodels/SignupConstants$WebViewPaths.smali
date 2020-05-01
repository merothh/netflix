.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewPaths"
.end annotation


# static fields
.field public static final EMVCO_DATA_COLLECTION_FALLBACK_PATH:Ljava/lang/String; = "mobilesignup/emvcodevicefallbackdata"

.field public static final EMVCO_DATA_COLLECTION_IFRAME_PATH:Ljava/lang/String; = "emvco3ds/dataCollection/iframe"

.field public static final EMVCO_STEP_UP_AUTHENTICATION_IFRAM_PATH:Ljava/lang/String; = "emvco3ds/stepUpAuthentication/iframe"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;

.field public static final PAYPAL_CALLBACK_PATH:Ljava/lang/String; = "mobilesignup/paypalcallback"

.field public static final VERIFY_CARD_IFRAME_PATH:Ljava/lang/String; = "verifyCardIframe"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 747
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
