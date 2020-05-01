.class public Lcom/netflix/msl/MslUserIdTokenException;
.super Lcom/netflix/msl/MslException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x7a14cc1c1a76c47fL


# direct methods
.method public constructor <init>(Lo/agz;Lo/ahX;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/netflix/msl/MslUserIdTokenException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    return-void
.end method


# virtual methods
.method public synthetic a(J)Lcom/netflix/msl/MslException;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/MslUserIdTokenException;->e(J)Lcom/netflix/msl/MslUserIdTokenException;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/agQ;)Lcom/netflix/msl/MslUserIdTokenException;
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic c(Lo/agQ;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslUserIdTokenException;->a(Lo/agQ;)Lcom/netflix/msl/MslUserIdTokenException;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/ahS;)Lcom/netflix/msl/MslUserIdTokenException;
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic e(Lo/ahS;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslUserIdTokenException;->c(Lo/ahS;)Lcom/netflix/msl/MslUserIdTokenException;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lcom/netflix/msl/MslUserIdTokenException;
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    return-object p0
.end method
