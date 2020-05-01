.class public Lcom/netflix/msl/MslUserAuthException;
.super Lcom/netflix/msl/MslException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x353e07e8e1723be8L


# direct methods
.method public constructor <init>(Lo/agz;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/aie;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslUserAuthException;->d(Lo/aie;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/ahS;)Lcom/netflix/msl/MslUserAuthException;
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public d(Lo/aie;)Lcom/netflix/msl/MslUserAuthException;
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->a(Lo/aie;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic e(Lo/ahS;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslUserAuthException;->b(Lo/ahS;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object p1

    return-object p1
.end method
