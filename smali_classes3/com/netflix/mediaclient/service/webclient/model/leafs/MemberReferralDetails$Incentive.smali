.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Incentive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

.field public static final enum FREE_TRIAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

.field public static final enum NO_INCENTIVE:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    const/4 v2, 0x0

    const-string v3, "FREE_TRIAL"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->FREE_TRIAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    const/4 v2, 0x1

    const-string v3, "NO_INCENTIVE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->NO_INCENTIVE:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    return-object v0
.end method
