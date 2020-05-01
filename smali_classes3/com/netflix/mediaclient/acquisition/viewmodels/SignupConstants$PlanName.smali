.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlanName"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;

.field public static final PREMIUM:Ljava/lang/String; = "Premium"

.field public static final STANDARD:Ljava/lang/String; = "Standard"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 704
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
