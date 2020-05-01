.class final enum Lcom/ibm/icu/util/StringTrieBuilder$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/StringTrieBuilder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum ADDING:Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_FAST:Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_SMALL:Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum BUILT:Lcom/ibm/icu/util/StringTrieBuilder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 877
    new-instance v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const/4 v1, 0x0

    const-string v2, "ADDING"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->ADDING:Lcom/ibm/icu/util/StringTrieBuilder$State;

    new-instance v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const/4 v2, 0x1

    const-string v3, "BUILDING_FAST"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Lcom/ibm/icu/util/StringTrieBuilder$State;

    new-instance v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const/4 v3, 0x2

    const-string v4, "BUILDING_SMALL"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Lcom/ibm/icu/util/StringTrieBuilder$State;

    new-instance v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const/4 v4, 0x3

    const-string v5, "BUILT"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILT:Lcom/ibm/icu/util/StringTrieBuilder$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/util/StringTrieBuilder$State;

    .line 876
    sget-object v5, Lcom/ibm/icu/util/StringTrieBuilder$State;->ADDING:Lcom/ibm/icu/util/StringTrieBuilder$State;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Lcom/ibm/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Lcom/ibm/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILT:Lcom/ibm/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->$VALUES:[Lcom/ibm/icu/util/StringTrieBuilder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 876
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/StringTrieBuilder$State;
    .locals 1

    .line 876
    const-class v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/StringTrieBuilder$State;
    .locals 1

    .line 876
    sget-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->$VALUES:[Lcom/ibm/icu/util/StringTrieBuilder$State;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/StringTrieBuilder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/StringTrieBuilder$State;

    return-object v0
.end method
