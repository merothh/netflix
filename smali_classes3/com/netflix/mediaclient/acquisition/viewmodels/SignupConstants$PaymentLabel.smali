.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentLabel"
.end annotation


# static fields
.field public static final CREDIT:Ljava/lang/String; = "creditCardDisplayStringId"

.field public static final CREDIT_OR_DEBIT:Ljava/lang/String; = "creditOrDebitCardDisplayStringId"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PaymentLabel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
