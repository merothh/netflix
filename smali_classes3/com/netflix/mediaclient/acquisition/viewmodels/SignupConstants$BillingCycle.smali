.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingCycle"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;

.field public static final MONTHLY:Ljava/lang/String; = "Monthly"

.field public static final WEEKLY:Ljava/lang/String; = "Weekly"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 699
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$BillingCycle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
