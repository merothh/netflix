.class public final synthetic Lo/MY;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic c:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/MY;->c:[I

    sget-object v0, Lo/MY;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->FREE_TRIAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/MY;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->NO_INCENTIVE:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
