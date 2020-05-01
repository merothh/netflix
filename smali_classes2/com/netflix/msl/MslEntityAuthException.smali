.class public Lcom/netflix/msl/MslEntityAuthException;
.super Lcom/netflix/msl/MslException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x4a0baf1e2c470a17L


# direct methods
.method public constructor <init>(Lo/agz;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public b(Lo/ahS;)Lcom/netflix/msl/MslEntityAuthException;
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic c(Lo/agQ;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic e(Lo/ahS;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslEntityAuthException;->b(Lo/ahS;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    return-object p1
.end method
