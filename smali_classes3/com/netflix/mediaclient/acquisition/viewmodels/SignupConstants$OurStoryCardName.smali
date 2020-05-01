.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OurStoryCardName"
.end annotation


# static fields
.field public static final ANIMATION:Ljava/lang/String; = "animation"

.field public static final DEVICES:Ljava/lang/String; = "devices"

.field public static final DOWNLOADS:Ljava/lang/String; = "downloadAndGo"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;

.field public static final NO_CONTRACTS:Ljava/lang/String; = "noContracts"

.field public static final SMS_PARTNER:Ljava/lang/String; = "sms_partner"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 669
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
