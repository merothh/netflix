.class public Lo/SN;
.super Lo/SM;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SM;",
        "Lo/IntToLongFunction<",
        "Lo/SQ$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SN;",
            "Lo/SQ$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SN;",
            "Lo/SQ$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SN;",
            "Lo/SQ$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SN;",
            "Lo/SQ$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/SM;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/SN;->e(I)Lo/SN;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lo/SN;
    .locals 0

    .line 169
    invoke-virtual {p0}, Lo/SN;->i()V

    .line 170
    invoke-super {p0, p1}, Lo/SM;->b(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/SN;->d(Lo/Consumer;Lo/SQ$ActionBar;I)V

    return-void
.end method

.method public a(Lo/SQ$ActionBar;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lo/SM;->e(Lo/TimeUnit;)V

    .line 64
    iget-object v0, p0, Lo/SN;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/SN;->i(J)Lo/SN;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/SN;
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lo/SM;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SN;->c(ILo/SQ$ActionBar;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SN;->b(Lo/SQ$ActionBar;I)V

    return-void
.end method

.method public b(Lo/SQ$ActionBar;I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/SN;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/SN;->b(Ljava/lang/CharSequence;)Lo/SN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/SN;->e(Lo/BiConsumer$Activity;)Lo/SN;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/SN;
    .locals 0

    .line 138
    invoke-virtual {p0}, Lo/SN;->i()V

    .line 139
    invoke-super {p0, p1, p2}, Lo/SM;->e(J)V

    return-object p0
.end method

.method public c(Z)Lo/SN;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lo/SN;->i()V

    .line 129
    invoke-super {p0, p1}, Lo/SM;->e(Z)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/SQ$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SN;->d(FFIILo/SQ$ActionBar;)V

    return-void
.end method

.method public c(ILo/SQ$ActionBar;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/SN;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SM;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SN;->c(ILo/SQ$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1}, Lo/SN;->a(Lo/SQ$ActionBar;)V

    return-void
.end method

.method public d(J)Lo/SN;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lo/SN;->i()V

    .line 149
    invoke-super {p0, p1, p2}, Lo/SM;->a(J)V

    return-object p0
.end method

.method public d(Lo/adJ;)Lo/SN;
    .locals 0

    .line 158
    invoke-virtual {p0}, Lo/SN;->i()V

    .line 159
    iput-object p1, p0, Lo/SM;->b:Lo/adJ;

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p5, Lo/SQ$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/SN;->d(FFIILo/SQ$ActionBar;)V

    return-void
.end method

.method public d(FFIILo/SQ$ActionBar;)V
    .locals 7

    .line 108
    iget-object v0, p0, Lo/SN;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 109
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 111
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/SM;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/SQ$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public e(I)Lo/SN;
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lo/SM;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/SN;
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lo/SM;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/SQ$ActionBar;

    invoke-virtual {p0, p1}, Lo/SN;->a(Lo/SQ$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 271
    :cond_0
    instance-of v1, p1, Lo/SN;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 274
    :cond_1
    invoke-super {p0, p1}, Lo/SM;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 277
    :cond_2
    check-cast p1, Lo/SN;

    .line 278
    iget-object v1, p0, Lo/SN;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SN;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 281
    :cond_5
    iget-object v1, p0, Lo/SN;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SN;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 284
    :cond_8
    iget-object v1, p0, Lo/SN;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SN;->i:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 287
    :cond_b
    iget-object v1, p0, Lo/SN;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SN;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 290
    :cond_e
    invoke-virtual {p0}, Lo/SN;->m()Z

    move-result v1

    invoke-virtual {p1}, Lo/SN;->m()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 293
    :cond_f
    invoke-virtual {p0}, Lo/SN;->h()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/SN;->h()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    .line 296
    :cond_10
    invoke-virtual {p0}, Lo/SN;->k()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/SN;->k()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    .line 299
    :cond_11
    iget-object v1, p0, Lo/SN;->b:Lo/adJ;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lo/SN;->b:Lo/adJ;

    iget-object v3, p1, Lo/SN;->b:Lo/adJ;

    invoke-virtual {v1, v3}, Lo/adJ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_12
    iget-object v1, p1, Lo/SN;->b:Lo/adJ;

    if-eqz v1, :cond_13

    :goto_8
    return v2

    .line 302
    :cond_13
    invoke-virtual {p0}, Lo/SN;->l()Z

    move-result v1

    invoke-virtual {p1}, Lo/SN;->l()Z

    move-result p1

    if-eq v1, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 310
    invoke-super {p0}, Lo/SM;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 311
    iget-object v1, p0, Lo/SN;->c:Lo/AEADBadTagException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 312
    iget-object v1, p0, Lo/SN;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 313
    iget-object v1, p0, Lo/SN;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 314
    iget-object v1, p0, Lo/SN;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 315
    invoke-virtual {p0}, Lo/SN;->m()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    invoke-virtual {p0}, Lo/SN;->h()J

    move-result-wide v1

    invoke-virtual {p0}, Lo/SN;->h()J

    move-result-wide v4

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 317
    invoke-virtual {p0}, Lo/SN;->k()J

    move-result-wide v1

    invoke-virtual {p0}, Lo/SN;->k()J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    iget-object v1, p0, Lo/SN;->b:Lo/adJ;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/SN;->b:Lo/adJ;

    invoke-virtual {v1}, Lo/adJ;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    invoke-virtual {p0}, Lo/SN;->l()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(J)Lo/SN;
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lo/SM;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lo/SN;->r()Lo/SQ$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected r()Lo/SQ$ActionBar;
    .locals 1

    .line 248
    new-instance v0, Lo/SQ$ActionBar;

    invoke-direct {v0}, Lo/SQ$ActionBar;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatsModelBigKids_{hasDownloadInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lo/SN;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", free="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lo/SN;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0}, Lo/SN;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", watchableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SN;->b:Lo/adJ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inSelectionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Lo/SN;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-super {p0}, Lo/SM;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
