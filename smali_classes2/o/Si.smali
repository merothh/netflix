.class public Lo/Si;
.super Lo/Sk;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Sk;",
        "Lo/IntToLongFunction<",
        "Lo/Sk$ActionBar;",
        ">;",
        "Lo/Sj;"
    }
.end annotation


# instance fields
.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Si;",
            "Lo/Sk$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Si;",
            "Lo/Sk$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Si;",
            "Lo/Sk$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Si;",
            "Lo/Sk$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/Sk;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Si;->b(I)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/Sj;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Si;->e(Ljava/lang/CharSequence;)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/Si;->b(Lo/Consumer;Lo/Sk$ActionBar;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/Si;->c(J)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Si;
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lo/Sk;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Z)Lo/Si;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lo/Si;->i()V

    .line 127
    invoke-super {p0, p1}, Lo/Sk;->a(Z)V

    return-object p0
.end method

.method public b(FFIILo/Sk$ActionBar;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lo/Si;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 107
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 109
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Sk;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Si;->c(ILo/Sk$ActionBar;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Si;->c(Lo/Sk$ActionBar;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/Sk$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Si;->e(Ljava/lang/CharSequence;)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Si;->e(Lo/BiConsumer$Activity;)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/Si;
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lo/Sk;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(I)Lo/Sj;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Si;->d(I)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Z)Lo/Sj;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Si;->b(Z)Lo/Si;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/Sk$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Si;->b(FFIILo/Sk$ActionBar;)V

    return-void
.end method

.method public c(ILo/Sk$ActionBar;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/Si;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Sk;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Si;->c(ILo/Sk$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1}, Lo/Si;->d(Lo/Sk$ActionBar;)V

    return-void
.end method

.method public c(Lo/Sk$ActionBar;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Si;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public d(I)Lo/Si;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lo/Si;->i()V

    .line 137
    invoke-super {p0, p1}, Lo/Sk;->e(I)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/Sk$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Si;->b(FFIILo/Sk$ActionBar;)V

    return-void
.end method

.method public d(Lo/Sk$ActionBar;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lo/Sk;->e(Lo/TimeUnit;)V

    .line 62
    iget-object v0, p0, Lo/Si;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/Si;
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lo/Sk;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lo/Si;
    .locals 0

    .line 146
    invoke-virtual {p0}, Lo/Si;->i()V

    .line 147
    invoke-super {p0, p1}, Lo/Sk;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/Si;
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lo/Sk;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1}, Lo/Si;->d(Lo/Sk$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 248
    :cond_0
    instance-of v1, p1, Lo/Si;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 251
    :cond_1
    invoke-super {p0, p1}, Lo/Sk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 254
    :cond_2
    check-cast p1, Lo/Si;

    .line 255
    iget-object v1, p0, Lo/Si;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Si;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 258
    :cond_5
    iget-object v1, p0, Lo/Si;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Si;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 261
    :cond_8
    iget-object v1, p0, Lo/Si;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Si;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 264
    :cond_b
    iget-object v1, p0, Lo/Si;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Si;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 267
    :cond_e
    invoke-virtual {p0}, Lo/Si;->h()Z

    move-result v1

    invoke-virtual {p1}, Lo/Si;->h()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 270
    :cond_f
    invoke-virtual {p0}, Lo/Si;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/Si;->l()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 273
    :cond_10
    invoke-virtual {p0}, Lo/Si;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/Si;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Si;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_8

    :cond_11
    invoke-virtual {p1}, Lo/Si;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    :goto_8
    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 281
    invoke-super {p0}, Lo/Sk;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object v1, p0, Lo/Si;->b:Lo/AEADBadTagException;

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

    .line 283
    iget-object v1, p0, Lo/Si;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 284
    iget-object v1, p0, Lo/Si;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 285
    iget-object v1, p0, Lo/Si;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    invoke-virtual {p0}, Lo/Si;->h()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 287
    invoke-virtual {p0}, Lo/Si;->l()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 288
    invoke-virtual {p0}, Lo/Si;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Si;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Si;->o()Lo/Sk$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lo/Sk$ActionBar;
    .locals 1

    .line 227
    new-instance v0, Lo/Sk$ActionBar;

    invoke-direct {v0}, Lo/Sk$ActionBar;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedForYouHeaderView_{empty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Lo/Si;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p0}, Lo/Si;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lo/Si;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-super {p0}, Lo/Sk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
