.class public Lo/HL;
.super Lo/HD;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HD;",
        "Lo/IntToLongFunction<",
        "Lo/HC;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HL;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HL;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HL;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HL;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/HD;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/HL;->c(I)Lo/HL;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/HL;
    .locals 0

    .line 216
    invoke-super {p0, p1, p2}, Lo/HD;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Z)Lo/HL;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lo/HL;->i()V

    .line 150
    invoke-super {p0, p1}, Lo/HD;->c(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2, p3}, Lo/HL;->e(Lo/Consumer;Lo/HC;I)V

    return-void
.end method

.method public a(Lo/HC;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/HL;->h:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/HL;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/HD;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/HL;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/HL;->a(J)Lo/HL;

    move-result-object p1

    return-object p1
.end method

.method public b(FFIILo/HC;)V
    .locals 7

    .line 118
    iget-object v0, p0, Lo/HL;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 119
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 121
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HD;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/HL;->c(ILo/HC;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/HL;->a(Lo/HC;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/HL;->d(Ljava/lang/CharSequence;)Lo/HL;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/HL;->d(Lo/BiConsumer$Activity;)Lo/HL;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/HL;
    .locals 0

    .line 253
    invoke-super {p0, p1}, Lo/HD;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lo/HL;
    .locals 0

    .line 191
    invoke-virtual {p0}, Lo/HL;->i()V

    .line 192
    invoke-super {p0, p1}, Lo/HD;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/HC;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HL;->b(FFIILo/HC;)V

    return-void
.end method

.method public c(ILo/HC;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/HL;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HD;->c(ILo/HC;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/HL;->c(ILo/HC;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/HL;->d(Lo/HC;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/HL;
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lo/HD;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/HL;
    .locals 0

    .line 138
    invoke-virtual {p0}, Lo/HL;->i()V

    .line 139
    invoke-super {p0, p1}, Lo/HD;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/HL;
    .locals 0

    .line 260
    invoke-super {p0, p1}, Lo/HD;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Z)Lo/HL;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/HL;->i()V

    .line 160
    invoke-super {p0, p1}, Lo/HD;->e(Z)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/HC;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HL;->b(FFIILo/HC;)V

    return-void
.end method

.method public d(Lo/HC;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/HD;->e(Lo/TimeUnit;)V

    .line 74
    iget-object v0, p0, Lo/HL;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Integer;)Lo/HL;
    .locals 0

    .line 169
    invoke-virtual {p0}, Lo/HL;->i()V

    .line 170
    invoke-super {p0, p1}, Lo/HD;->d(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/HC;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/HL;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/HL;->d(Lo/HC;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 304
    :cond_0
    instance-of v1, p1, Lo/HL;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 307
    :cond_1
    invoke-super {p0, p1}, Lo/HD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 310
    :cond_2
    check-cast p1, Lo/HL;

    .line 311
    iget-object v1, p0, Lo/HL;->h:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HL;->h:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 314
    :cond_5
    iget-object v1, p0, Lo/HL;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HL;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 317
    :cond_8
    iget-object v1, p0, Lo/HL;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HL;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 320
    :cond_b
    iget-object v1, p0, Lo/HL;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HL;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 323
    :cond_e
    invoke-virtual {p0}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 326
    :cond_10
    invoke-virtual {p0}, Lo/HL;->p()Z

    move-result v1

    invoke-virtual {p1}, Lo/HL;->p()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 329
    :cond_11
    invoke-virtual {p0}, Lo/HL;->q()Z

    move-result v1

    invoke-virtual {p1}, Lo/HL;->q()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 332
    :cond_12
    invoke-virtual {p0}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_13
    invoke-virtual {p1}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_9
    return v2

    .line 335
    :cond_14
    invoke-virtual {p0}, Lo/HL;->v()Z

    move-result v1

    invoke-virtual {p1}, Lo/HL;->v()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 338
    :cond_15
    invoke-virtual {p0}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    :goto_a
    return v2

    .line 341
    :cond_17
    invoke-virtual {p0}, Lo/HL;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HL;->l()I

    move-result p1

    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public h(Z)Lo/HL;
    .locals 0

    .line 181
    invoke-virtual {p0}, Lo/HL;->i()V

    .line 182
    invoke-super {p0, p1}, Lo/HD;->b(Z)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 349
    invoke-super {p0}, Lo/HD;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 350
    iget-object v1, p0, Lo/HL;->h:Lo/AEADBadTagException;

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

    .line 351
    iget-object v1, p0, Lo/HL;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 352
    iget-object v1, p0, Lo/HL;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-object v1, p0, Lo/HL;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 354
    invoke-virtual {p0}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    invoke-virtual {p0}, Lo/HL;->p()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    invoke-virtual {p0}, Lo/HL;->q()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    invoke-virtual {p0}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 358
    invoke-virtual {p0}, Lo/HL;->v()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 359
    invoke-virtual {p0}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 360
    invoke-virtual {p0}, Lo/HL;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemindMeButtonModel_{videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0}, Lo/HL;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inRemindMeQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Lo/HL;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayButtonLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lo/HL;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lo/HL;->u()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoAddToRemindMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0}, Lo/HL;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoAddToRemindMeTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Lo/HL;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Lo/HL;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-super {p0}, Lo/HD;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
