.class public Lo/HA;
.super Lo/Hy;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Hy;",
        "Lo/IntToLongFunction<",
        "Lo/Hy$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HA;",
            "Lo/Hy$Application;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HA;",
            "Lo/Hy$Application;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HA;",
            "Lo/Hy$Application;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HA;",
            "Lo/Hy$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/Hy;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/HA;->h(I)Lo/HA;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/HA;
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lo/Hy;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/HA;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/HA;->i()V

    .line 148
    invoke-super {p0, p1}, Lo/Hy;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Lo/Pa;)Lo/HA;
    .locals 0

    .line 168
    invoke-virtual {p0}, Lo/HA;->i()V

    .line 169
    invoke-super {p0, p1}, Lo/Hy;->b(Lo/Pa;)V

    return-object p0
.end method

.method public a(FFIILo/Hy$Application;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lo/HA;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 118
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 120
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Hy;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/Hy$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/HA;->d(Lo/Consumer;Lo/Hy$Application;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lo/Hy;->a(Lo/OfPrimitive;)V

    .line 39
    invoke-virtual {p0, p1}, Lo/HA;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/HA;->e(J)Lo/HA;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/HA;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lo/HA;->i()V

    .line 138
    invoke-super {p0, p1}, Lo/Hy;->c(I)V

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/HA;
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lo/Hy;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Hy$Application;

    invoke-virtual {p0, p1, p2}, Lo/HA;->b(ILo/Hy$Application;)V

    return-void
.end method

.method public b(ILo/Hy$Application;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/HA;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Hy;->b(ILo/Hy$Application;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/Hy$Application;

    invoke-virtual {p0, p1, p2}, Lo/HA;->c(Lo/Hy$Application;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/HA;->a(Ljava/lang/CharSequence;)Lo/HA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/HA;->b(Lo/BiConsumer$Activity;)Lo/HA;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lo/HA;
    .locals 0

    .line 158
    invoke-virtual {p0}, Lo/HA;->i()V

    .line 159
    invoke-super {p0, p1}, Lo/Hy;->e(Z)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Hy$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HA;->a(FFIILo/Hy$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Hy$Application;

    invoke-virtual {p0, p1, p2}, Lo/HA;->b(ILo/Hy$Application;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Hy$Application;

    invoke-virtual {p0, p1}, Lo/HA;->d(Lo/Hy$Application;)V

    return-void
.end method

.method public c(Lo/Hy$Application;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/HA;->g:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 53
    invoke-virtual {p0, p1, p2}, Lo/HA;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Hy$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HA;->a(FFIILo/Hy$Application;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Hy$Application;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 45
    invoke-virtual {p0, p1, p3}, Lo/HA;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lo/Hy$Application;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lo/Hy;->e(Lo/TimeUnit;)V

    .line 73
    iget-object v0, p0, Lo/HA;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(J)Lo/HA;
    .locals 0

    .line 193
    invoke-super {p0, p1, p2}, Lo/Hy;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Hy$Application;

    invoke-virtual {p0, p1}, Lo/HA;->d(Lo/Hy$Application;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 279
    :cond_0
    instance-of v1, p1, Lo/HA;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 282
    :cond_1
    invoke-super {p0, p1}, Lo/Hy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 285
    :cond_2
    check-cast p1, Lo/HA;

    .line 286
    iget-object v1, p0, Lo/HA;->g:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HA;->g:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 289
    :cond_5
    iget-object v1, p0, Lo/HA;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HA;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 292
    :cond_8
    iget-object v1, p0, Lo/HA;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HA;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 295
    :cond_b
    iget-object v1, p0, Lo/HA;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HA;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 298
    :cond_e
    invoke-virtual {p0}, Lo/HA;->r()I

    move-result v1

    invoke-virtual {p1}, Lo/HA;->r()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 301
    :cond_f
    invoke-virtual {p0}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 304
    :cond_11
    invoke-virtual {p0}, Lo/HA;->p()Z

    move-result v1

    invoke-virtual {p1}, Lo/HA;->p()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 307
    :cond_12
    invoke-virtual {p0}, Lo/HA;->y()Lo/Pa;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lo/HA;->y()Lo/Pa;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    :goto_a
    if-eq v1, v3, :cond_15

    return v2

    .line 310
    :cond_15
    invoke-virtual {p0}, Lo/HA;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HA;->l()I

    move-result p1

    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public h(I)Lo/HA;
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lo/Hy;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 318
    invoke-super {p0}, Lo/Hy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    iget-object v1, p0, Lo/HA;->g:Lo/AEADBadTagException;

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

    .line 320
    iget-object v1, p0, Lo/HA;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    iget-object v1, p0, Lo/HA;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 322
    iget-object v1, p0, Lo/HA;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 323
    invoke-virtual {p0}, Lo/HA;->r()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 324
    invoke-virtual {p0}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 325
    invoke-virtual {p0}, Lo/HA;->p()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 326
    invoke-virtual {p0}, Lo/HA;->y()Lo/Pa;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    invoke-virtual {p0}, Lo/HA;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationItemModel_{notificationPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lo/HA;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0}, Lo/HA;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0}, Lo/HA;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lo/HA;->y()Lo/Pa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Lo/HA;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-super {p0}, Lo/Hy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
