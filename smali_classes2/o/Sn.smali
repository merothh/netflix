.class public Lo/Sn;
.super Lo/Sq;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/So;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Sq;",
        "Lo/IntToLongFunction<",
        "Lo/Sq$TaskDescription;",
        ">;",
        "Lo/So;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Sn;",
            "Lo/Sq$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Sn;",
            "Lo/Sq$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Sn;",
            "Lo/Sq$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Sn;",
            "Lo/Sq$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/Sq;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->b(I)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->b(Ljava/lang/CharSequence;)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Z)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->i(Z)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/Sn;->a(Lo/Consumer;Lo/Sq$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/Sq$TaskDescription;I)V
    .locals 0

    return-void
.end method

.method public a(Lo/Sq$TaskDescription;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lo/Sq;->e(Lo/TimeUnit;)V

    .line 62
    iget-object v0, p0, Lo/Sn;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/Sn;->d(J)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public b(F)Lo/Sn;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 149
    invoke-super {p0, p1}, Lo/Sq;->a_(F)V

    return-object p0
.end method

.method public b(I)Lo/Sn;
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lo/Sq;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/Sn;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 127
    invoke-super {p0, p1}, Lo/Sq;->b_(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/Sn;
    .locals 0

    .line 246
    invoke-super {p0, p1}, Lo/Sq;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(Lo/Sq$Activity;)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->d(Lo/Sq$Activity;)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Z)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->f(Z)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public b(FFIILo/Sq$TaskDescription;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lo/Sn;->i:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Sq;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Sn;->c(ILo/Sq$TaskDescription;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Sn;->d(Lo/Sq$TaskDescription;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->d(Ljava/lang/CharSequence;)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->b(Lo/BiConsumer$Activity;)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/Sn;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 138
    invoke-super {p0, p1}, Lo/Sq;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic c(F)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->b(F)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Z)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->d(Z)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/Sq$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Sn;->b(FFIILo/Sq$TaskDescription;)V

    return-void
.end method

.method public c(ILo/Sq$TaskDescription;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/Sn;->a:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Sq;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p2, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Sn;->c(ILo/Sq$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Sn;->a(Lo/Sq$TaskDescription;)V

    return-void
.end method

.method public d(J)Lo/Sn;
    .locals 0

    .line 201
    invoke-super {p0, p1, p2}, Lo/Sq;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Sn;
    .locals 0

    .line 219
    invoke-super {p0, p1}, Lo/Sq;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/Sq$Activity;)Lo/Sn;
    .locals 0

    .line 189
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 190
    invoke-super {p0, p1}, Lo/Sq;->c(Lo/Sq$Activity;)V

    return-object p0
.end method

.method public d(Z)Lo/Sn;
    .locals 0

    .line 158
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 159
    invoke-super {p0, p1}, Lo/Sq;->a_(Z)V

    return-object p0
.end method

.method public synthetic d(Ljava/lang/String;)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->c(Ljava/lang/String;)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/Sq$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Sn;->b(FFIILo/Sq$TaskDescription;)V

    return-void
.end method

.method public d(Lo/Sq$TaskDescription;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Sn;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/So;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/Sn;->d(Ljava/lang/CharSequence;)Lo/Sn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Sq$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Sn;->a(Lo/Sq$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 295
    :cond_0
    instance-of v1, p1, Lo/Sn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 298
    :cond_1
    invoke-super {p0, p1}, Lo/Sq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 301
    :cond_2
    check-cast p1, Lo/Sn;

    .line 302
    iget-object v1, p0, Lo/Sn;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Sn;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 305
    :cond_5
    iget-object v1, p0, Lo/Sn;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Sn;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 308
    :cond_8
    iget-object v1, p0, Lo/Sn;->a:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Sn;->a:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 311
    :cond_b
    iget-object v1, p0, Lo/Sn;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Sn;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 314
    :cond_e
    invoke-virtual {p0}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 317
    :cond_10
    invoke-virtual {p0}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 320
    :cond_12
    invoke-virtual {p1}, Lo/Sn;->k()F

    move-result v1

    invoke-virtual {p0}, Lo/Sn;->k()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    .line 323
    :cond_13
    invoke-virtual {p0}, Lo/Sn;->l()Z

    move-result v1

    invoke-virtual {p1}, Lo/Sn;->l()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    .line 326
    :cond_14
    invoke-virtual {p0}, Lo/Sn;->o()Z

    move-result v1

    invoke-virtual {p1}, Lo/Sn;->o()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 329
    :cond_15
    invoke-virtual {p0}, Lo/Sn;->p()Z

    move-result v1

    invoke-virtual {p1}, Lo/Sn;->p()Z

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    .line 332
    :cond_16
    invoke-virtual {p0}, Lo/Sn;->q()Lo/Sq$Activity;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lo/Sn;->q()Lo/Sq$Activity;

    move-result-object p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_b

    :cond_18
    const/4 p1, 0x0

    :goto_b
    if-eq v1, p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public f(Z)Lo/Sn;
    .locals 0

    .line 178
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 179
    invoke-super {p0, p1}, Lo/Sq;->b_(Z)V

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 340
    invoke-super {p0}, Lo/Sq;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget-object v1, p0, Lo/Sn;->c:Lo/AEADBadTagException;

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

    .line 342
    iget-object v1, p0, Lo/Sn;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    iget-object v1, p0, Lo/Sn;->a:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 344
    iget-object v1, p0, Lo/Sn;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    invoke-virtual {p0}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 346
    invoke-virtual {p0}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 347
    invoke-virtual {p0}, Lo/Sn;->k()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/Sn;->k()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 348
    invoke-virtual {p0}, Lo/Sn;->l()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 349
    invoke-virtual {p0}, Lo/Sn;->o()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 350
    invoke-virtual {p0}, Lo/Sn;->p()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 351
    invoke-virtual {p0}, Lo/Sn;->q()Lo/Sq$Activity;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public i(Z)Lo/Sn;
    .locals 0

    .line 168
    invoke-virtual {p0}, Lo/Sn;->i()V

    .line 169
    invoke-super {p0, p1}, Lo/Sq;->e(Z)V

    return-object p0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Sn;->s()Lo/Sq$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method protected s()Lo/Sq$TaskDescription;
    .locals 1

    .line 270
    new-instance v0, Lo/Sq$TaskDescription;

    invoke-direct {v0}, Lo/Sq$TaskDescription;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedForYouProfileView_{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Lo/Sn;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Lo/Sn;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Lo/Sn;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Lo/Sn;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0}, Lo/Sn;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0}, Lo/Sn;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", storageChangedListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Lo/Sn;->q()Lo/Sq$Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-super {p0}, Lo/Sq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
