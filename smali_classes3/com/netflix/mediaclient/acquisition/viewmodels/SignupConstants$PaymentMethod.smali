.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentMethod"
.end annotation


# static fields
.field public static final APPLE_PAY:Ljava/lang/String; = "applePayOption"

.field public static final BR_DEBIT:Ljava/lang/String; = "brDebitOption"

.field public static final CO_DEBIT:Ljava/lang/String; = "coDebitOption"

.field public static final CREDIT_CARD:Ljava/lang/String; = "creditOption"

.field public static final DCB:Ljava/lang/String; = "dcbOption"

.field public static final DEBIT_CARD:Ljava/lang/String; = "debitOption"

.field public static final DE_DEBIT:Ljava/lang/String; = "deDebitOption"

.field public static final GIFT_OPTION:Ljava/lang/String; = "giftOption"

.field public static final IDEAL:Ljava/lang/String; = "idealOption"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;

.field public static final PAYPAL:Ljava/lang/String; = "paypalOption"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 730
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentMethod;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
