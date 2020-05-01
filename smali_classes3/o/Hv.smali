.class public Lo/Hv;
.super Lo/Ht;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Ht;",
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
            "Lo/Hv;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hv;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hv;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hv;",
            "Lo/HC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Ht;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Hv;->c(I)Lo/Hv;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Lo/Hv;
    .locals 0

    .line 169
    invoke-virtual {p0}, Lo/Hv;->i()V

    .line 170
    invoke-super {p0, p1}, Lo/Ht;->e(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/Hv;
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lo/Ht;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Z)Lo/Hv;
    .locals 0

    .line 138
    invoke-virtual {p0}, Lo/Hv;->i()V

    .line 139
    invoke-super {p0, p1}, Lo/Ht;->e(Z)V

    return-object p0
.end method

.method public a(ILo/HC;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/Hv;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Ht;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hv;->c(Lo/Consumer;Lo/HC;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/Ht;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/Hv;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/Hv;->e(J)Lo/Hv;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/Hv;->a(ILo/HC;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/Hv;->d(Lo/HC;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Hv;->e(Ljava/lang/CharSequence;)Lo/Hv;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Hv;->a(Lo/BiConsumer$Activity;)Lo/Hv;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/Hv;
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lo/Ht;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Z)Lo/Hv;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/Hv;->i()V

    .line 160
    invoke-super {p0, p1}, Lo/Ht;->b(Z)V

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

    invoke-virtual/range {v0 .. v5}, Lo/Hv;->e(FFIILo/HC;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/HC;

    invoke-virtual {p0, p1, p2}, Lo/Hv;->a(ILo/HC;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/Hv;->c(Lo/HC;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/HC;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/Hv;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lo/HC;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/Ht;->e(Lo/TimeUnit;)V

    .line 74
    iget-object v0, p0, Lo/Hv;->g:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/Hv;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lo/Hv;->i()V

    .line 149
    invoke-super {p0, p1}, Lo/Ht;->e(Ljava/lang/String;)V

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

    invoke-virtual/range {v0 .. v5}, Lo/Hv;->e(FFIILo/HC;)V

    return-void
.end method

.method public d(Lo/HC;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Hv;->j:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/Hv;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(J)Lo/Hv;
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Lo/Ht;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/Hv;
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lo/Ht;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(FFIILo/HC;)V
    .locals 7

    .line 118
    iget-object v0, p0, Lo/Hv;->i:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Ht;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/HC;

    invoke-virtual {p0, p1}, Lo/Hv;->c(Lo/HC;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 281
    :cond_0
    instance-of v1, p1, Lo/Hv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 284
    :cond_1
    invoke-super {p0, p1}, Lo/Ht;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 287
    :cond_2
    check-cast p1, Lo/Hv;

    .line 288
    iget-object v1, p0, Lo/Hv;->j:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hv;->j:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 291
    :cond_5
    iget-object v1, p0, Lo/Hv;->g:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hv;->g:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 294
    :cond_8
    iget-object v1, p0, Lo/Hv;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hv;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 297
    :cond_b
    iget-object v1, p0, Lo/Hv;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Hv;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 300
    :cond_e
    invoke-virtual {p0}, Lo/Hv;->q()Z

    move-result v1

    invoke-virtual {p1}, Lo/Hv;->q()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 303
    :cond_f
    invoke-virtual {p0}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 306
    :cond_11
    invoke-virtual {p0}, Lo/Hv;->p()Z

    move-result v1

    invoke-virtual {p1}, Lo/Hv;->p()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 309
    :cond_12
    invoke-virtual {p0}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_13
    invoke-virtual {p1}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_9
    return v2

    .line 312
    :cond_14
    invoke-virtual {p0}, Lo/Hv;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/Hv;->l()I

    move-result p1

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 320
    invoke-super {p0}, Lo/Ht;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    iget-object v1, p0, Lo/Hv;->j:Lo/AEADBadTagException;

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

    .line 322
    iget-object v1, p0, Lo/Hv;->g:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 323
    iget-object v1, p0, Lo/Hv;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 324
    iget-object v1, p0, Lo/Hv;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 325
    invoke-virtual {p0}, Lo/Hv;->q()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 326
    invoke-virtual {p0}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    invoke-virtual {p0}, Lo/Hv;->p()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 328
    invoke-virtual {p0}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    invoke-virtual {p0}, Lo/Hv;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyListButtonModel_{displayButtonLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0}, Lo/Hv;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lo/Hv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inMyList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Lo/Hv;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Lo/Hv;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lo/Hv;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-super {p0}, Lo/Ht;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
