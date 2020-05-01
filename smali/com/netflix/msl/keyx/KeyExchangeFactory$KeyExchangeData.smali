.class public Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
.super Ljava/lang/Object;
.source "KeyExchangeFactory.java"


# instance fields
.field public final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field public final keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iput-object p2, p0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-void
.end method
