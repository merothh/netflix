.class public final enum Lcom/ibm/icu/text/MessagePattern$ArgType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/MessagePattern$ArgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/MessagePattern$ArgType;

.field public static final enum CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field public static final enum NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field public static final enum PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field public static final enum SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field public static final enum SELECTORDINAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field public static final enum SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 813
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 819
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x1

    const-string v3, "SIMPLE"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 825
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v3, 0x2

    const-string v4, "CHOICE"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 835
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v4, 0x3

    const-string v5, "PLURAL"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 840
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v5, 0x4

    const-string v6, "SELECT"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 846
    new-instance v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v6, 0x5

    const-string v7, "SELECTORDINAL"

    invoke-direct {v0, v7, v6}, Lcom/ibm/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 808
    sget-object v7, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->$VALUES:[Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 808
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 1

    .line 808
    const-class v0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 1

    .line 808
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->$VALUES:[Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/MessagePattern$ArgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object v0
.end method


# virtual methods
.method public hasPluralStyle()Z
    .locals 1

    .line 854
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

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
