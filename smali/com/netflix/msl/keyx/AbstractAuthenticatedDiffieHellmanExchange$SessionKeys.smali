.class public Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;
.super Ljava/lang/Object;
.source "AbstractAuthenticatedDiffieHellmanExchange.java"


# instance fields
.field public final derivationKey:Ljavax/crypto/SecretKey;

.field public final encryptionKey:Ljavax/crypto/SecretKey;

.field public final hmacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    iput-object p3, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    return-void
.end method
