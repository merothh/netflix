.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegistrationImageType"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;

.field public static final PHONE_TABLET:Ljava/lang/String; = "phoneAndTablet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 695
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$RegistrationImageType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
