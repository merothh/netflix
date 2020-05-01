.class public Lcom/netflix/msl/MslException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x21ebfa30e01089ceL


# instance fields
.field private a:Lo/ahS;

.field private b:Lo/agQ;

.field private c:Lo/ahX;

.field private d:Lo/aie;

.field private final e:Lo/agz;

.field private j:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lo/agz;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lo/agz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/netflix/msl/MslException;->a:Lo/ahS;

    .line 275
    iput-object v0, p0, Lcom/netflix/msl/MslException;->b:Lo/agQ;

    .line 277
    iput-object v0, p0, Lcom/netflix/msl/MslException;->c:Lo/ahX;

    .line 279
    iput-object v0, p0, Lcom/netflix/msl/MslException;->d:Lo/aie;

    .line 281
    iput-object v0, p0, Lcom/netflix/msl/MslException;->j:Ljava/lang/Long;

    .line 38
    iput-object p1, p0, Lcom/netflix/msl/MslException;->e:Lo/agz;

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/agz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 273
    iput-object p2, p0, Lcom/netflix/msl/MslException;->a:Lo/ahS;

    .line 275
    iput-object p2, p0, Lcom/netflix/msl/MslException;->b:Lo/agQ;

    .line 277
    iput-object p2, p0, Lcom/netflix/msl/MslException;->c:Lo/ahX;

    .line 279
    iput-object p2, p0, Lcom/netflix/msl/MslException;->d:Lo/aie;

    .line 281
    iput-object p2, p0, Lcom/netflix/msl/MslException;->j:Ljava/lang/Long;

    .line 49
    iput-object p1, p0, Lcom/netflix/msl/MslException;->e:Lo/agz;

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/agz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 273
    iput-object p2, p0, Lcom/netflix/msl/MslException;->a:Lo/ahS;

    .line 275
    iput-object p2, p0, Lcom/netflix/msl/MslException;->b:Lo/agQ;

    .line 277
    iput-object p2, p0, Lcom/netflix/msl/MslException;->c:Lo/ahX;

    .line 279
    iput-object p2, p0, Lcom/netflix/msl/MslException;->d:Lo/aie;

    .line 281
    iput-object p2, p0, Lcom/netflix/msl/MslException;->j:Ljava/lang/Long;

    .line 63
    iput-object p1, p0, Lcom/netflix/msl/MslException;->e:Lo/agz;

    return-void
.end method

.method public constructor <init>(Lo/agz;Ljava/lang/Throwable;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Lo/agz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 273
    iput-object p2, p0, Lcom/netflix/msl/MslException;->a:Lo/ahS;

    .line 275
    iput-object p2, p0, Lcom/netflix/msl/MslException;->b:Lo/agQ;

    .line 277
    iput-object p2, p0, Lcom/netflix/msl/MslException;->c:Lo/ahX;

    .line 279
    iput-object p2, p0, Lcom/netflix/msl/MslException;->d:Lo/aie;

    .line 281
    iput-object p2, p0, Lcom/netflix/msl/MslException;->j:Ljava/lang/Long;

    .line 74
    iput-object p1, p0, Lcom/netflix/msl/MslException;->e:Lo/agz;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/netflix/msl/MslException;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/msl/MslException;->j:Ljava/lang/Long;

    :cond_0
    return-object p0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is outside the valid range."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lo/aie;)Lcom/netflix/msl/MslException;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->c()Lo/ahX;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->d()Lo/aie;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/netflix/msl/MslException;->d:Lo/aie;

    :cond_0
    return-object p0
.end method

.method public a()Ljava/lang/Long;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/netflix/msl/MslException;->j:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 262
    check-cast v0, Lcom/netflix/msl/MslException;

    .line 263
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lo/ahX;)Lcom/netflix/msl/MslException;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->c()Lo/ahX;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->d()Lo/aie;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/netflix/msl/MslException;->c:Lo/ahX;

    :cond_0
    return-object p0
.end method

.method public b()Lo/agQ;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/netflix/msl/MslException;->b:Lo/agQ;

    if-eqz v0, :cond_0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 191
    check-cast v0, Lcom/netflix/msl/MslException;

    .line 192
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->b()Lo/agQ;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lo/agQ;)Lcom/netflix/msl/MslException;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->e()Lo/ahS;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->b()Lo/agQ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/netflix/msl/MslException;->b:Lo/agQ;

    :cond_0
    return-object p0
.end method

.method public c()Lo/ahX;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/netflix/msl/MslException;->c:Lo/ahX;

    if-eqz v0, :cond_0

    return-object v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 215
    check-cast v0, Lcom/netflix/msl/MslException;

    .line 216
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->c()Lo/ahX;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lo/aie;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/netflix/msl/MslException;->d:Lo/aie;

    if-eqz v0, :cond_0

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 239
    check-cast v0, Lcom/netflix/msl/MslException;

    .line 240
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->d()Lo/aie;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lo/ahS;)Lcom/netflix/msl/MslException;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->e()Lo/ahS;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->b()Lo/agQ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/netflix/msl/MslException;->a:Lo/ahS;

    :cond_0
    return-object p0
.end method

.method public e()Lo/ahS;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/netflix/msl/MslException;->a:Lo/ahS;

    if-eqz v0, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 167
    check-cast v0, Lcom/netflix/msl/MslException;

    .line 168
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->e()Lo/ahS;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
