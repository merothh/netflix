.class public final synthetic Lo/Cx;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic c:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->values()[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/Cx;->c:[I

    sget-object v0, Lo/Cx;->c:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->KMRB:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/Cx;->c:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->NICAM:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/Cx;->c:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BRAZIL:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/Cx;->c:[I

    sget-object v1, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BBFC:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
