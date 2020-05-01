.class public Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;
.super Ljava/lang/Object;
.source "PresharedKeyStore.java"


# instance fields
.field public final encryptionKey:Ljavax/crypto/SecretKey;

.field public final hmacKey:Ljavax/crypto/SecretKey;

.field public final wrappingKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->encryptionKey:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->hmacKey:Ljavax/crypto/SecretKey;

    iput-object p3, p0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->wrappingKey:Ljavax/crypto/SecretKey;

    return-void
.end method
