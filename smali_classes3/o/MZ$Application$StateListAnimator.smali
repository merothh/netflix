.class public final Lo/MZ$Application$StateListAnimator;
.super Lo/MZ$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MZ$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;)V
    .locals 1

    const-string v0, "memberReferralDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lo/MZ$Application;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/MZ$Application$StateListAnimator;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/MZ$Application$StateListAnimator;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/MZ$Application$StateListAnimator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/MZ$Application$StateListAnimator;

    iget-object v0, p0, Lo/MZ$Application$StateListAnimator;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    iget-object p1, p1, Lo/MZ$Application$StateListAnimator;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lo/MZ$Application$StateListAnimator;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data(memberReferralDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MZ$Application$StateListAnimator;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
