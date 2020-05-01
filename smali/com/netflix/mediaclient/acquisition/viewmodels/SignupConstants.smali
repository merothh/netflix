.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$DeepLink;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Error;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Flow;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Field;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Message;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Action;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Key;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$AndroidPlatform;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Language;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$WebViewPaths;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;,
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
