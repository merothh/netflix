.class public final enum Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

.field public static final enum b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

.field public static final enum d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

.field public static final e:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;


# instance fields
.field private final c:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    new-instance v9, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    .line 15
    sget v4, Lo/Ng$Activity;->e:I

    .line 16
    sget v5, Lo/Ng$TaskDescription;->c:I

    .line 17
    sget v6, Lo/Ng$TaskDescription;->a:I

    .line 18
    sget v7, Lo/Ng$TaskDescription;->g:I

    .line 19
    sget v8, Lo/Ng$TaskDescription;->i:I

    const-string v2, "MEMBER_NONE_FRIEND_MONTH"

    const/4 v3, 0x0

    move-object v1, v9

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v9, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    .line 22
    sget v13, Lo/Ng$Activity;->d:I

    .line 23
    sget v14, Lo/Ng$TaskDescription;->j:I

    .line 24
    sget v15, Lo/Ng$TaskDescription;->e:I

    .line 25
    sget v16, Lo/Ng$TaskDescription;->h:I

    .line 26
    sget v17, Lo/Ng$TaskDescription;->f:I

    const-string v11, "MEMBER_NONE_FRIEND_NONE"

    const/4 v12, 0x1

    move-object v10, v1

    .line 21
    invoke-direct/range {v10 .. v17}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->a:[Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    new-instance v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->e:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets$StateListAnimator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->c:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->g:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->f:I

    iput p6, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->j:I

    iput p7, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->a:[Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->h:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->g:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->j:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralPromotionAssets;->f:I

    return v0
.end method
