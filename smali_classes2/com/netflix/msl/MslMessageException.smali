.class public Lcom/netflix/msl/MslMessageException;
.super Lcom/netflix/msl/MslException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x6f55de1ca8253fafL


# direct methods
.method public constructor <init>(Lo/agz;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public synthetic a(J)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/MslMessageException;->d(J)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/ahS;)Lcom/netflix/msl/MslMessageException;
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->e(Lo/ahS;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic b(Lo/ahX;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslMessageException;->d(Lo/ahX;)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/agQ;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslMessageException;->d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Lcom/netflix/msl/MslMessageException;
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/netflix/msl/MslException;->a(J)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public d(Lo/agQ;)Lcom/netflix/msl/MslMessageException;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->c(Lo/agQ;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public d(Lo/ahX;)Lcom/netflix/msl/MslMessageException;
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->b(Lo/ahX;)Lcom/netflix/msl/MslException;

    return-object p0
.end method

.method public synthetic e(Lo/ahS;)Lcom/netflix/msl/MslException;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslMessageException;->a(Lo/ahS;)Lcom/netflix/msl/MslMessageException;

    move-result-object p1

    return-object p1
.end method
