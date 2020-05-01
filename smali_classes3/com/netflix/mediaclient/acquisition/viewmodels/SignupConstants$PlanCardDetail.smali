.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlanCardDetail"
.end annotation


# static fields
.field public static final DEVICE_LAPTOP:Ljava/lang/String; = "laptop"

.field public static final DEVICE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final DEVICE_OTHER:Ljava/lang/String; = "other"

.field public static final DEVICE_TV:Ljava/lang/String; = "tv"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;

.field public static final PLAN_COLOR_BLUE:Ljava/lang/String; = "blue"

.field public static final PLAN_COLOR_GREEN:Ljava/lang/String; = "green"

.field public static final PLAN_COLOR_HD:Ljava/lang/String; = "hd"

.field public static final PLAN_COLOR_LIGHT_BLUE:Ljava/lang/String; = "lightBlue"

.field public static final PLAN_COLOR_MAGENTA:Ljava/lang/String; = "magenta"

.field public static final PLAN_COLOR_RED:Ljava/lang/String; = "red"

.field public static final PLAN_COLOR_SD:Ljava/lang/String; = "sd"

.field public static final PLAN_COLOR_UHD:Ljava/lang/String; = "uhd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 709
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$PlanCardDetail;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
