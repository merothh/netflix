.class public final enum Lcom/ibm/icu/text/DisplayContext$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DisplayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DisplayContext$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DisplayContext$Type;

.field public static final enum CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

.field public static final enum DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

.field public static final enum DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

.field public static final enum SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 121
    new-instance v0, Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v1, 0x0

    const-string v2, "DIALECT_HANDLING"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    .line 127
    new-instance v0, Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v2, 0x1

    const-string v3, "CAPITALIZATION"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    .line 132
    new-instance v0, Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v3, 0x2

    const-string v4, "DISPLAY_LENGTH"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

    .line 138
    new-instance v0, Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v4, 0x3

    const-string v5, "SUBSTITUTE_HANDLING"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/text/DisplayContext$Type;

    .line 116
    sget-object v5, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Lcom/ibm/icu/text/DisplayContext$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->$VALUES:[Lcom/ibm/icu/text/DisplayContext$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DisplayContext$Type;
    .locals 1

    .line 116
    const-class v0, Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DisplayContext$Type;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DisplayContext$Type;
    .locals 1

    .line 116
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->$VALUES:[Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DisplayContext$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DisplayContext$Type;

    return-object v0
.end method
