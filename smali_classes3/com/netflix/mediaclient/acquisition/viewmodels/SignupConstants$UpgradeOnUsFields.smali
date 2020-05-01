.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpgradeOnUsFields"
.end annotation


# static fields
.field public static final HAS_FREE_TRIAL:Ljava/lang/String; = "hasFreeTrial"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;

.field public static final IS_FORMER_MEMBER:Ljava/lang/String; = "isFormerMember"

.field public static final UPGRADED_PLAN_NAME:Ljava/lang/String; = "upgradedPlanName"

.field public static final UPGRADED_PLAN_PRICE:Ljava/lang/String; = "upgradedPlanPrice"

.field public static final USER_SELECTED_PLAN_NAME:Ljava/lang/String; = "userSelectedPlanName"

.field public static final USER_SELECTED_PLAN_PRICE:Ljava/lang/String; = "userSelectedPlanPrice"

.field public static final ZERO_PRICE:Ljava/lang/String; = "zeroPrice"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 685
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$UpgradeOnUsFields;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
