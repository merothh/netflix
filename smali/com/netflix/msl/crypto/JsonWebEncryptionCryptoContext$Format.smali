.class public final enum Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;
.super Ljava/lang/Enum;
.source "JsonWebEncryptionCryptoContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

.field public static final enum JWE_CS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

.field public static final enum JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    const-string/jumbo v1, "JWE_JS"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    .line 419
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    const-string/jumbo v1, "JWE_CS"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_CS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    .line 411
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_CS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;
    .locals 1

    .prologue
    .line 411
    const-class v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    return-object v0
.end method