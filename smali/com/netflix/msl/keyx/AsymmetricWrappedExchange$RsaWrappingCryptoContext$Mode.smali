.class public final enum Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;
.super Ljava/lang/Enum;
.source "AsymmetricWrappedExchange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

.field public static final enum WRAP_UNWRAP_OAEP:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

.field public static final enum WRAP_UNWRAP_PKCS1:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    const-string/jumbo v1, "WRAP_UNWRAP_OAEP"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->WRAP_UNWRAP_OAEP:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    const-string/jumbo v1, "WRAP_UNWRAP_PKCS1"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->WRAP_UNWRAP_PKCS1:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->WRAP_UNWRAP_OAEP:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->WRAP_UNWRAP_PKCS1:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->$VALUES:[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;
    .locals 1

    const-class v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;
    .locals 1

    sget-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->$VALUES:[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    invoke-virtual {v0}, [Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RsaWrappingCryptoContext$Mode;

    return-object v0
.end method
