.class public Lcom/netflix/msl/MslCryptoException;
.super Lcom/netflix/msl/MslException;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x69baa0bd465d4ad8L


# direct methods
.method public constructor <init>(Lo/agz;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public b(Lo/ahS;)Lcom/netflix/msl/MslCryptoException;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic c(Lo/agQ;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslCryptoException;->d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/agQ;)Lcom/netflix/msl/MslCryptoException;
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic e(Lo/ahS;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslCryptoException;->b(Lo/ahS;)Lcom/netflix/msl/MslCryptoException;

    move-result-object p1

    return-object p1
.end method