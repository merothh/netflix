.class Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;
.super Ljava/lang/Object;
.source "DiffieHellmanExchange.java"


# instance fields
.field public final encryptionKey:Ljavax/crypto/SecretKey;

.field public final hmacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 354
    iput-object p2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    .line 355
    return-void
.end method
