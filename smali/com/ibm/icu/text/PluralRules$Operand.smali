.class public final enum Lcom/ibm/icu/text/PluralRules$Operand;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/PluralRules$Operand;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/PluralRules$Operand;

.field public static final enum f:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum i:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum j:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum n:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum t:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum v:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum w:Lcom/ibm/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 427
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v1, 0x0

    const-string v2, "n"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->n:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 436
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v2, 0x1

    const-string v3, "i"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->i:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 445
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v3, 0x2

    const-string v4, "f"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 454
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v4, 0x3

    const-string v5, "t"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->t:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 463
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v5, 0x4

    const-string v6, "v"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 472
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v6, 0x5

    const-string v7, "w"

    invoke-direct {v0, v7, v6}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->w:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 487
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v7, 0x6

    const-string v8, "j"

    invoke-direct {v0, v8, v7}, Lcom/ibm/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ibm/icu/text/PluralRules$Operand;

    .line 419
    sget-object v8, Lcom/ibm/icu/text/PluralRules$Operand;->n:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v8, v0, v1

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->i:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->t:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->w:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->$VALUES:[Lcom/ibm/icu/text/PluralRules$Operand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;
    .locals 1

    .line 419
    const-class v0, Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/PluralRules$Operand;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/PluralRules$Operand;
    .locals 1

    .line 419
    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->$VALUES:[Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/PluralRules$Operand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/PluralRules$Operand;

    return-object v0
.end method
