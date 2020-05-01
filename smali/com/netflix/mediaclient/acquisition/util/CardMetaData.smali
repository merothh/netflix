.class public final enum Lcom/netflix/mediaclient/acquisition/util/CardMetaData;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/acquisition/util/CardMetaData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum AMEX:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum DANKORT:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum DINERS_CLUB:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum DISCOVER:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum ELO:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum JCB:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum LASER:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum MAESTRO:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum MASTERCARD:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum NARANJA:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum UNIONPAY:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum VISA:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

.field public static final enum VISA_ELECTRON:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;


# instance fields
.field private final cvcLength:Ljava/lang/Number;

.field private final length:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final luhnNeeded:Z

.field private final pattern:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    new-instance v10, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v2, 0xf

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Number;

    const-string v3, "AMEX"

    const/4 v4, 0x0

    const-string v5, "amex"

    const-string v6, "^3[47]"

    const/4 v9, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v10, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->AMEX:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v4, 0x10

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Number;

    const-string v14, "DANKORT"

    const/4 v15, 0x1

    const-string v16, "dankort"

    const-string v17, "^5019"

    const/16 v20, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->DANKORT:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/4 v7, 0x1

    aput-object v3, v0, v7

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v8, 0xe

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Number;

    const-string v14, "DINERS_CLUB"

    const/4 v15, 0x2

    const-string v16, "dinersclub"

    const-string v17, "^(36|38|30[0-5])"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->DINERS_CLUB:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/4 v9, 0x2

    aput-object v3, v0, v9

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    .line 18
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Number;

    const-string v14, "DISCOVER"

    const/4 v15, 0x3

    const-string v16, "discover"

    const-string v17, "^(6011|65|64[4-9]|622)"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->DISCOVER:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    aput-object v3, v0, v5

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    .line 19
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v27, v6

    check-cast v27, Ljava/lang/Number;

    const-string v22, "JCB"

    const/16 v23, 0x4

    const-string v24, "jcb"

    const-string v25, "^35"

    const/16 v28, 0x1

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v28}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->JCB:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    aput-object v3, v0, v12

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    new-array v10, v12, [Ljava/lang/Integer;

    aput-object v4, v10, v2

    const/16 v13, 0x11

    .line 20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v10, v7

    const/16 v13, 0x12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v10, v9

    const/16 v13, 0x13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v10, v5

    invoke-static {v10}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Number;

    const-string v14, "LASER"

    const/4 v15, 0x5

    const-string v16, "laser"

    const-string v17, "^(6706|6771|6709)"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->LASER:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/4 v10, 0x5

    aput-object v3, v0, v10

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v15, 0x8

    new-array v13, v15, [Ljava/lang/Integer;

    const/16 v14, 0xc

    .line 21
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v2

    aput-object v1, v13, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v9

    aput-object v11, v13, v5

    aput-object v4, v13, v12

    aput-object v21, v13, v10

    const/4 v8, 0x6

    aput-object v22, v13, v8

    const/4 v10, 0x7

    aput-object v23, v13, v10

    invoke-static {v13}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Number;

    const-string v14, "MAESTRO"

    const/4 v10, 0x6

    const-string v16, "maestro"

    const-string v17, "^(5018|5020|5038|6304|6703|6759|676[1-3])"

    move-object v13, v3

    const/16 v11, 0x8

    move v15, v10

    invoke-direct/range {v13 .. v20}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->MAESTRO:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    aput-object v3, v0, v8

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    .line 22
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v30, v6

    check-cast v30, Ljava/lang/Number;

    const-string v25, "MASTERCARD"

    const/16 v26, 0x7

    const-string v27, "mastercard"

    const-string v28, "^(5[1-5]|2)"

    const/16 v31, 0x1

    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v31}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->MASTERCARD:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/4 v8, 0x7

    aput-object v3, v0, v8

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    new-array v8, v12, [Ljava/lang/Integer;

    aput-object v4, v8, v2

    aput-object v21, v8, v7

    aput-object v22, v8, v9

    aput-object v23, v8, v5

    .line 23
    invoke-static {v8}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Number;

    const-string v14, "UNIONPAY"

    const/16 v15, 0x8

    const-string v16, "unionpay"

    const-string v17, "^62"

    const/16 v20, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->UNIONPAY:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    aput-object v3, v0, v11

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    .line 24
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v30, v6

    check-cast v30, Ljava/lang/Number;

    const-string v25, "VISA"

    const/16 v26, 0x9

    const-string v27, "visaelectron"

    const-string v28, "^4(026|17500|405|508|844|91[37])"

    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v31}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->VISA:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v8, 0x9

    aput-object v3, v0, v8

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    .line 25
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Number;

    const-string v11, "VISA_ELECTRON"

    const/16 v12, 0xa

    const-string v13, "elo"

    const-string v14, "^4011|438935|45(1416|76|7393)|50(4175|6699|67|90[4-7])|63(6297|6368)"

    const/16 v17, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->VISA_ELECTRON:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v8, 0xa

    aput-object v3, v0, v8

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    new-array v8, v5, [Ljava/lang/Integer;

    aput-object v1, v8, v2

    aput-object v4, v8, v7

    aput-object v23, v8, v9

    .line 26
    invoke-static {v8}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Number;

    const-string v11, "ELO"

    const/16 v12, 0xb

    const-string v13, "visa"

    const-string v14, "^4"

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->ELO:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v8, 0xb

    aput-object v3, v0, v8

    new-instance v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v1, v5, v2

    aput-object v4, v5, v7

    aput-object v23, v5, v9

    .line 27
    invoke-static {v5}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Number;

    const-string v11, "NARANJA"

    const/16 v12, 0xc

    const-string v13, "naranja"

    const-string v14, "^589562"

    const/16 v17, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V

    sput-object v3, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->NARANJA:Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    const/16 v1, 0xc

    aput-object v3, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->$VALUES:[Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Number;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            "Z)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->pattern:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->length:Ljava/util/List;

    iput-object p6, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->cvcLength:Ljava/lang/Number;

    iput-boolean p7, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->luhnNeeded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/util/CardMetaData;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/acquisition/util/CardMetaData;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->$VALUES:[Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    return-object v0
.end method


# virtual methods
.method public final getCvcLength()Ljava/lang/Number;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->cvcLength:Ljava/lang/Number;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1eb5df

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "AMEX"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/(.{1,4})(.{1,6})?(.{1,5})?(.*)?/"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "(.{1,4})"

    :goto_1
    return-object v0
.end method

.method public final getLength()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->length:Ljava/util/List;

    return-object v0
.end method

.method public final getLuhnNeeded()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->luhnNeeded:Z

    return v0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->type:Ljava/lang/String;

    return-object v0
.end method
