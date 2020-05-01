.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfferType"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;

.field public static final LOW_COST_FIRST_MONTH:Ljava/lang/String; = "LCFM"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 759
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OfferType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
