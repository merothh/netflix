.class public final enum Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;
.super Ljava/lang/Enum;
.source "RsaCryptoContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

.field public static final enum ENCRYPT_DECRYPT_OAEP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

.field public static final enum ENCRYPT_DECRYPT_PKCS1:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

.field public static final enum SIGN_VERIFY:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

.field public static final enum WRAP_UNWRAP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    const-string/jumbo v1, "ENCRYPT_DECRYPT_OAEP"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_OAEP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 41
    new-instance v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    const-string/jumbo v1, "ENCRYPT_DECRYPT_PKCS1"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_PKCS1:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 43
    new-instance v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    const-string/jumbo v1, "WRAP_UNWRAP"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->WRAP_UNWRAP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 45
    new-instance v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    const-string/jumbo v1, "SIGN_VERIFY"

    invoke-direct {v0, v1, v5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    sget-object v1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_OAEP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_PKCS1:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->WRAP_UNWRAP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->$VALUES:[Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->$VALUES:[Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    return-object v0
.end method
