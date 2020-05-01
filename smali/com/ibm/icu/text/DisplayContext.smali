.class public final enum Lcom/ibm/icu/text/DisplayContext;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DisplayContext$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

.field public static final enum SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;


# instance fields
.field private final type:Lcom/ibm/icu/text/DisplayContext$Type;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 27
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v2, 0x0

    const-string v3, "STANDARD_NAMES"

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    .line 34
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v3, 0x1

    const-string v4, "DIALECT_NAMES"

    invoke-direct {v0, v4, v3, v1, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    .line 44
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v4, 0x2

    const-string v5, "CAPITALIZATION_NONE"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    .line 51
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v5, 0x3

    const-string v6, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    invoke-direct {v0, v6, v5, v1, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    .line 58
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v6, 0x4

    const-string v7, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    invoke-direct {v0, v7, v6, v1, v4}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    .line 65
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v7, 0x5

    const-string v8, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    invoke-direct {v0, v8, v7, v1, v5}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    .line 73
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v8, 0x6

    const-string v9, "CAPITALIZATION_FOR_STANDALONE"

    invoke-direct {v0, v9, v8, v1, v6}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    .line 84
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v9, 0x7

    const-string v10, "LENGTH_FULL"

    invoke-direct {v0, v10, v9, v1, v2}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    .line 91
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

    const/16 v10, 0x8

    const-string v11, "LENGTH_SHORT"

    invoke-direct {v0, v11, v10, v1, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    .line 103
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const/16 v11, 0x9

    const-string v12, "SUBSTITUTE"

    invoke-direct {v0, v12, v11, v1, v2}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    .line 110
    new-instance v0, Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const/16 v12, 0xa

    const-string v13, "NO_SUBSTITUTE"

    invoke-direct {v0, v13, v12, v1, v3}, Lcom/ibm/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/ibm/icu/text/DisplayContext;

    .line 16
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, v12

    sput-object v0, Lcom/ibm/icu/text/DisplayContext;->$VALUES:[Lcom/ibm/icu/text/DisplayContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/DisplayContext$Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/DisplayContext$Type;",
            "I)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput-object p3, p0, Lcom/ibm/icu/text/DisplayContext;->type:Lcom/ibm/icu/text/DisplayContext$Type;

    .line 145
    iput p4, p0, Lcom/ibm/icu/text/DisplayContext;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 16
    const-class v0, Lcom/ibm/icu/text/DisplayContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DisplayContext;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 16
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->$VALUES:[Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DisplayContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DisplayContext;

    return-object v0
.end method


# virtual methods
.method public type()Lcom/ibm/icu/text/DisplayContext$Type;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ibm/icu/text/DisplayContext;->type:Lcom/ibm/icu/text/DisplayContext$Type;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/ibm/icu/text/DisplayContext;->value:I

    return v0
.end method
