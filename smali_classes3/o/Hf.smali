.class public Lo/Hf;
.super Lo/Hi;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Hi;",
        "Lo/IntToLongFunction<",
        "Lo/Hi$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hf;",
            "Lo/Hi$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hf;",
            "Lo/Hi$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hf;",
            "Lo/Hi$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Hf;",
            "Lo/Hi$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/Hi;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/Hf;->b(I)Lo/Hf;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/Hf;
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Lo/Hi;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hf;->d(Lo/Consumer;Lo/Hi$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lo/Hi;->a(Lo/OfPrimitive;)V

    .line 42
    invoke-virtual {p0, p1}, Lo/Hf;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/Hf;->a(J)Lo/Hf;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Hf;
    .locals 0

    .line 214
    invoke-super {p0, p1}, Lo/Hi;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lo/Hf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/HK;",
            ">;)",
            "Lo/Hf;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lo/Hf;->i()V

    .line 141
    invoke-super {p0, p1}, Lo/Hi;->d(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/Hf;
    .locals 0

    .line 221
    invoke-super {p0, p1}, Lo/Hi;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hf;->b(ILo/Hi$TaskDescription;)V

    return-void
.end method

.method public b(ILo/Hi$TaskDescription;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/Hf;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Hi;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hf;->b(Lo/Hi$TaskDescription;I)V

    return-void
.end method

.method public b(Lo/Hi$TaskDescription;I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/Hf;->f:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 56
    invoke-virtual {p0, p1, p2}, Lo/Hf;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/Hf;->e(Ljava/lang/CharSequence;)Lo/Hf;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/Hf;->b(Lo/BiConsumer$Activity;)Lo/Hf;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/Hf;
    .locals 0

    .line 165
    invoke-virtual {p0}, Lo/Hf;->i()V

    .line 166
    invoke-super {p0, p1}, Lo/Hi;->d(I)V

    return-object p0
.end method

.method public c(FFIILo/Hi$TaskDescription;)V
    .locals 7

    .line 120
    iget-object v0, p0, Lo/Hf;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 121
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 123
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Hi;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p5, Lo/Hi$TaskDescription;

    invoke-virtual/range {p0 .. p5}, Lo/Hf;->c(FFIILo/Hi$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p2, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hf;->b(ILo/Hi$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Hf;->d(Lo/Hi$TaskDescription;)V

    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/Hi$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hf;->c(FFIILo/Hi$TaskDescription;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Hi$TaskDescription;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 48
    invoke-virtual {p0, p1, p3}, Lo/Hf;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lo/Hi$TaskDescription;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lo/Hi;->e(Lo/TimeUnit;)V

    .line 76
    iget-object v0, p0, Lo/Hf;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/Hf;
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lo/Hi;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/Integer;)Lo/Hf;
    .locals 0

    .line 151
    invoke-virtual {p0}, Lo/Hf;->i()V

    .line 152
    invoke-super {p0, p1}, Lo/Hi;->d(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p1, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Hf;->d(Lo/Hi$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 261
    :cond_0
    instance-of v1, p1, Lo/Hf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 264
    :cond_1
    invoke-super {p0, p1}, Lo/Hi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 267
    :cond_2
    check-cast p1, Lo/Hf;

    .line 268
    iget-object v1, p0, Lo/Hf;->f:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hf;->f:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 271
    :cond_5
    iget-object v1, p0, Lo/Hf;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hf;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 274
    :cond_8
    iget-object v1, p0, Lo/Hf;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hf;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 277
    :cond_b
    iget-object v1, p0, Lo/Hf;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Hf;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 280
    :cond_e
    invoke-virtual {p0}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 283
    :cond_10
    invoke-virtual {p0}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 286
    :cond_12
    invoke-virtual {p0}, Lo/Hf;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/Hf;->l()I

    move-result p1

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 294
    invoke-super {p0}, Lo/Hi;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 295
    iget-object v1, p0, Lo/Hf;->f:Lo/AEADBadTagException;

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

    .line 296
    iget-object v1, p0, Lo/Hf;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 297
    iget-object v1, p0, Lo/Hf;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 298
    iget-object v1, p0, Lo/Hf;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 299
    invoke-virtual {p0}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 300
    invoke-virtual {p0}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    invoke-virtual {p0}, Lo/Hf;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageCarouselModel_{images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lo/Hf;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lo/Hf;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lo/Hf;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-super {p0}, Lo/Hi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
