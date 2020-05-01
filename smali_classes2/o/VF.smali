.class public final synthetic Lo/VF;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->values()[Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/VF;->d:[I

    sget-object v0, Lo/VF;->d:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->SERIES:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/VF;->d:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->SHOW:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/VF;->d:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->SEASON:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
