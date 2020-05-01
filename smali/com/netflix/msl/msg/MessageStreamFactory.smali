.class public Lcom/netflix/msl/msg/MessageStreamFactory;
.super Ljava/lang/Object;
.source "MessageStreamFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/util/Set;Ljava/util/Map;)Lcom/netflix/msl/msg/MessageInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/msg/MessageInputStream;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/netflix/msl/msg/MessageInputStream;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageInputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0
.end method

.method public createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MessageOutputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)V

    return-object v0
.end method

.method public createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)Lcom/netflix/msl/msg/MessageOutputStream;
    .locals 6

    .prologue
    .line 118
    new-instance v0, Lcom/netflix/msl/msg/MessageOutputStream;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageOutputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method
