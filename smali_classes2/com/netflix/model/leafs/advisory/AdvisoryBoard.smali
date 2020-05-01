.class public final enum Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/model/leafs/advisory/AdvisoryBoard;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

.field public static final enum BBFC:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

.field public static final enum BRAZIL:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

.field public static final enum KMRB:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

.field public static final enum NICAM:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;


# instance fields
.field id:Ljava/lang/String;

.field namePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    const/4 v1, 0x2

    const-string v2, "^BRA[SZ]IL"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "BRAZIL"

    const-string v5, "14"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BRAZIL:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    .line 11
    new-instance v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    const-string v2, "BBFC"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "20"

    invoke-direct {v0, v2, v5, v4, v6}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BBFC:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    .line 13
    new-instance v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    const-string v2, "^KMRB"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, "KMRB"

    const-string v6, "79"

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->KMRB:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    .line 15
    new-instance v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    const-string v2, "^NICAM"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v4, 0x3

    const-string v6, "NICAM"

    const-string v7, "41"

    invoke-direct {v0, v6, v4, v2, v7}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->NICAM:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    .line 8
    sget-object v2, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BRAZIL:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    aput-object v2, v0, v3

    sget-object v2, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->BBFC:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    aput-object v2, v0, v5

    sget-object v2, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->KMRB:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->NICAM:Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->$VALUES:[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->namePattern:Ljava/util/regex/Pattern;

    .line 26
    iput-object p4, p0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->id:Ljava/lang/String;

    return-void
.end method

.method public static getAdvisoryBoard(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 5

    .line 31
    invoke-static {}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->values()[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    iget-object v4, v3, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->namePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdvisoryBoardById(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 5

    .line 42
    invoke-static {}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->values()[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    iget-object v4, v3, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->id:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 1

    .line 8
    const-class v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-object p0
.end method

.method public static values()[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 1

    .line 8
    sget-object v0, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->$VALUES:[Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    return-object v0
.end method
