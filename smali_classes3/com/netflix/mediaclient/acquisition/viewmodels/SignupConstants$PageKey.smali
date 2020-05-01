.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageKey"
.end annotation


# static fields
.field public static final ADD_PROFILES:Ljava/lang/String; = "addProfiles"

.field public static final CONFIRM:Ljava/lang/String; = "confirm"

.field public static final DCB_VERIFY:Ljava/lang/String; = "dcbVerify"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;

.field public static final PAYMENT_CREDIT:Ljava/lang/String; = "paymentCredit"

.field public static final PAYMENT_DCB:Ljava/lang/String; = "paymentDcb"

.field public static final PAYMENT_DEBIT:Ljava/lang/String; = "paymentDebit"

.field public static final PAYMENT_GIFT:Ljava/lang/String; = "paymentGift"

.field public static final REGISTRATION:Ljava/lang/String; = "registration"

.field public static final VERIFY_AGE:Ljava/lang/String; = "verifyAge"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PageKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
