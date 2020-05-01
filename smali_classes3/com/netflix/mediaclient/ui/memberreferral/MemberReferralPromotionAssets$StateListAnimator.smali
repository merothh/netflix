.class public final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;)Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;
    .locals 1

    const-string v0, "memberIncentive"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "friendIncentive"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p1, Lo/MY;->c:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 36
    sget-object p1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 35
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    :goto_0
    return-object p1
.end method
