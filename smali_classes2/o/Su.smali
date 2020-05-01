.class public Lo/Su;
.super Lo/Sv;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Sw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Sv;",
        "Lo/IntToLongFunction<",
        "Lo/Sv$TaskDescription;",
        ">;",
        "Lo/Sw;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Su;",
            "Lo/Sv$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Su;",
            "Lo/Sv$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Su;",
            "Lo/Sv$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Su;",
            "Lo/Sv$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/Sv;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->d(I)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/Su;
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Lo/Sv;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/Sw;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->d(Ljava/lang/CharSequence;)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/Su;->d(Lo/Consumer;Lo/Sv$TaskDescription;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/Su;->a(J)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(F)Lo/Sw;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->f(F)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Su;->b(ILo/Sv$TaskDescription;)V

    return-void
.end method

.method public b(ILo/Sv$TaskDescription;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/Su;->c:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Sv;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Su;->e(Lo/Sv$TaskDescription;I)V

    return-void
.end method

.method public synthetic b_(F)Lo/Sw;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->c(F)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->d(Ljava/lang/CharSequence;)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->d(Lo/BiConsumer$Activity;)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public c(F)Lo/Su;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lo/Su;->i()V

    .line 127
    invoke-super {p0, p1}, Lo/Sv;->c_(F)V

    return-object p0
.end method

.method public synthetic c(Z)Lo/Sw;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->e(Z)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/Sv$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Su;->d(FFIILo/Sv$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Su;->b(ILo/Sv$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Su;->d(Lo/Sv$TaskDescription;)V

    return-void
.end method

.method public d(I)Lo/Su;
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lo/Sv;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Su;
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lo/Sv;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/Su;
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lo/Sv;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(F)Lo/Sw;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Su;->h(F)Lo/Su;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p5, Lo/Sv$TaskDescription;

    invoke-virtual/range {p0 .. p5}, Lo/Su;->d(FFIILo/Sv$TaskDescription;)V

    return-void
.end method

.method public d(FFIILo/Sv$TaskDescription;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lo/Su;->g:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Sv;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Sv$TaskDescription;I)V
    .locals 0

    return-void
.end method

.method public d(Lo/Sv$TaskDescription;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lo/Sv;->e(Lo/TimeUnit;)V

    .line 62
    iget-object v0, p0, Lo/Su;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Z)Lo/Su;
    .locals 0

    .line 156
    invoke-virtual {p0}, Lo/Su;->i()V

    .line 157
    invoke-super {p0, p1}, Lo/Sv;->b(Z)V

    return-object p0
.end method

.method public e(Lo/Sv$TaskDescription;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Su;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sv$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Su;->d(Lo/Sv$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 257
    :cond_0
    instance-of v1, p1, Lo/Su;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 260
    :cond_1
    invoke-super {p0, p1}, Lo/Sv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 263
    :cond_2
    check-cast p1, Lo/Su;

    .line 264
    iget-object v1, p0, Lo/Su;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Su;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 267
    :cond_5
    iget-object v1, p0, Lo/Su;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Su;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 270
    :cond_8
    iget-object v1, p0, Lo/Su;->c:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Su;->c:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 273
    :cond_b
    iget-object v1, p0, Lo/Su;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Su;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 276
    :cond_e
    invoke-virtual {p1}, Lo/Su;->h()F

    move-result v1

    invoke-virtual {p0}, Lo/Su;->h()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    .line 279
    :cond_f
    invoke-virtual {p1}, Lo/Su;->m()F

    move-result v1

    invoke-virtual {p0}, Lo/Su;->m()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    .line 282
    :cond_10
    invoke-virtual {p1}, Lo/Su;->o()F

    move-result v1

    invoke-virtual {p0}, Lo/Su;->o()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    .line 285
    :cond_11
    invoke-virtual {p0}, Lo/Su;->k()Z

    move-result v1

    invoke-virtual {p1}, Lo/Su;->k()Z

    move-result p1

    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public f(F)Lo/Su;
    .locals 0

    .line 146
    invoke-virtual {p0}, Lo/Su;->i()V

    .line 147
    invoke-super {p0, p1}, Lo/Sv;->a(F)V

    return-object p0
.end method

.method public h(F)Lo/Su;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lo/Su;->i()V

    .line 137
    invoke-super {p0, p1}, Lo/Sv;->e(F)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 293
    invoke-super {p0}, Lo/Sv;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 294
    iget-object v1, p0, Lo/Su;->b:Lo/AEADBadTagException;

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

    .line 295
    iget-object v1, p0, Lo/Su;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 296
    iget-object v1, p0, Lo/Su;->c:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 297
    iget-object v1, p0, Lo/Su;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 298
    invoke-virtual {p0}, Lo/Su;->h()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Su;->h()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 299
    invoke-virtual {p0}, Lo/Su;->m()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Su;->m()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 300
    invoke-virtual {p0}, Lo/Su;->o()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/Su;->o()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    invoke-virtual {p0}, Lo/Su;->k()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected l()Lo/Sv$TaskDescription;
    .locals 1

    .line 235
    new-instance v0, Lo/Sv$TaskDescription;

    invoke-direct {v0}, Lo/Sv$TaskDescription;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Su;->l()Lo/Sv$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedForYouSettingsStats_{used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lo/Su;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", elected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lo/Su;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lo/Su;->o()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lo/Su;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-super {p0}, Lo/Sv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
