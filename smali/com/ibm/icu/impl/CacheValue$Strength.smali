.class public final enum Lcom/ibm/icu/impl/CacheValue$Strength;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/CacheValue$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/CacheValue$Strength;

.field public static final enum SOFT:Lcom/ibm/icu/impl/CacheValue$Strength;

.field public static final enum STRONG:Lcom/ibm/icu/impl/CacheValue$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/CacheValue$Strength;

    const/4 v1, 0x0

    const-string v2, "STRONG"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/CacheValue$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/CacheValue$Strength;->STRONG:Lcom/ibm/icu/impl/CacheValue$Strength;

    .line 49
    new-instance v0, Lcom/ibm/icu/impl/CacheValue$Strength;

    const/4 v2, 0x1

    const-string v3, "SOFT"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/CacheValue$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/CacheValue$Strength;->SOFT:Lcom/ibm/icu/impl/CacheValue$Strength;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/impl/CacheValue$Strength;

    .line 39
    sget-object v3, Lcom/ibm/icu/impl/CacheValue$Strength;->STRONG:Lcom/ibm/icu/impl/CacheValue$Strength;

    aput-object v3, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/CacheValue$Strength;->SOFT:Lcom/ibm/icu/impl/CacheValue$Strength;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/impl/CacheValue$Strength;->$VALUES:[Lcom/ibm/icu/impl/CacheValue$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/CacheValue$Strength;
    .locals 1

    .line 39
    const-class v0, Lcom/ibm/icu/impl/CacheValue$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/CacheValue$Strength;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/CacheValue$Strength;
    .locals 1

    .line 39
    sget-object v0, Lcom/ibm/icu/impl/CacheValue$Strength;->$VALUES:[Lcom/ibm/icu/impl/CacheValue$Strength;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/CacheValue$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/CacheValue$Strength;

    return-object v0
.end method
