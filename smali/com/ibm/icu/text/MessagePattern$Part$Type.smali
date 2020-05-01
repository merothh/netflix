.class public final enum Lcom/ibm/icu/text/MessagePattern$Part$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePattern$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/MessagePattern$Part$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

.field public static final enum SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 639
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v1, 0x0

    const-string v2, "MSG_START"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 648
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v2, 0x1

    const-string v3, "MSG_LIMIT"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 656
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v3, 0x2

    const-string v4, "SKIP_SYNTAX"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 663
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v4, 0x3

    const-string v5, "INSERT_CHAR"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 671
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x4

    const-string v6, "REPLACE_NUMBER"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 682
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v6, 0x5

    const-string v7, "ARG_START"

    invoke-direct {v0, v7, v6}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 689
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v7, 0x6

    const-string v8, "ARG_LIMIT"

    invoke-direct {v0, v8, v7}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 694
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v8, 0x7

    const-string v9, "ARG_NUMBER"

    invoke-direct {v0, v9, v8}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 700
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v9, 0x8

    const-string v10, "ARG_NAME"

    invoke-direct {v0, v10, v9}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 706
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v10, 0x9

    const-string v11, "ARG_TYPE"

    invoke-direct {v0, v11, v10}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 712
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v11, 0xa

    const-string v12, "ARG_STYLE"

    invoke-direct {v0, v12, v11}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 718
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v12, 0xb

    const-string v13, "ARG_SELECTOR"

    invoke-direct {v0, v13, v12}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 725
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v13, 0xc

    const-string v14, "ARG_INT"

    invoke-direct {v0, v14, v13}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 733
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v14, 0xd

    const-string v15, "ARG_DOUBLE"

    invoke-direct {v0, v15, v14}, Lcom/ibm/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/ibm/icu/text/MessagePattern$Part$Type;

    .line 629
    sget-object v15, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v15, v0, v1

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v14

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->$VALUES:[Lcom/ibm/icu/text/MessagePattern$Part$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 629
    const-class v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/MessagePattern$Part$Type;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 629
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->$VALUES:[Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/MessagePattern$Part$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method


# virtual methods
.method public hasNumericValue()Z
    .locals 1

    .line 742
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
