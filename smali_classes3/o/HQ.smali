.class public Lo/HQ;
.super Lo/HP;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HP;",
        "Lo/IntToLongFunction<",
        "Lo/HP$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HQ;",
            "Lo/HP$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HQ;",
            "Lo/HP$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HQ;",
            "Lo/HP$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HQ;",
            "Lo/HP$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/HP;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/HQ;->b(I)Lo/HQ;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Lo/HQ;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/HQ;->i()V

    .line 148
    invoke-super {p0, p1}, Lo/HP;->c(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public a(FFIILo/HP$StateListAnimator;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/HQ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 117
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 119
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HP;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public a(ILo/HP$StateListAnimator;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/HQ;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HP;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/HQ;->a(Lo/Consumer;Lo/HP$StateListAnimator;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/HP$StateListAnimator;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 47
    invoke-virtual {p0, p1, p3}, Lo/HQ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/HP$StateListAnimator;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/HP;->e(Lo/TimeUnit;)V

    .line 74
    iget-object v0, p0, Lo/HQ;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lo/HP;->a(Lo/OfPrimitive;)V

    .line 41
    invoke-virtual {p0, p1}, Lo/HQ;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/HQ;->d(J)Lo/HQ;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/HQ;
    .locals 0

    .line 210
    invoke-super {p0, p1}, Lo/HP;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/HQ;
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lo/HP;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HQ;->a(ILo/HP$StateListAnimator;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HQ;->d(Lo/HP$StateListAnimator;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/HQ;->b(Ljava/lang/CharSequence;)Lo/HQ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/HQ;->d(Lo/BiConsumer$Activity;)Lo/HQ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/HP$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HQ;->a(FFIILo/HP$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HQ;->a(ILo/HP$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HQ;->a(Lo/HP$StateListAnimator;)V

    return-void
.end method

.method public d(J)Lo/HQ;
    .locals 0

    .line 173
    invoke-super {p0, p1, p2}, Lo/HP;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/HQ;
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lo/HP;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/HP$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HQ;->a(FFIILo/HP$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/HP$StateListAnimator;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/HQ;->h:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 55
    invoke-virtual {p0, p1, p2}, Lo/HQ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Ljava/util/List;)Lo/HQ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/HQ;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lo/HQ;->i()V

    .line 137
    invoke-super {p0, p1}, Lo/HP;->c(Ljava/util/List;)V

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HQ;->a(Lo/HP$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 262
    :cond_0
    instance-of v1, p1, Lo/HQ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 265
    :cond_1
    invoke-super {p0, p1}, Lo/HP;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 268
    :cond_2
    check-cast p1, Lo/HQ;

    .line 269
    iget-object v1, p0, Lo/HQ;->h:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HQ;->h:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 272
    :cond_5
    iget-object v1, p0, Lo/HQ;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HQ;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 275
    :cond_8
    iget-object v1, p0, Lo/HQ;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HQ;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 278
    :cond_b
    iget-object v1, p0, Lo/HQ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HQ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 281
    :cond_e
    invoke-virtual {p0}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 284
    :cond_10
    invoke-virtual {p0}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 287
    :cond_12
    invoke-virtual {p0}, Lo/HQ;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HQ;->l()I

    move-result p1

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 295
    invoke-super {p0}, Lo/HP;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 296
    iget-object v1, p0, Lo/HQ;->h:Lo/AEADBadTagException;

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

    .line 297
    iget-object v1, p0, Lo/HQ;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 298
    iget-object v1, p0, Lo/HQ;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 299
    iget-object v1, p0, Lo/HQ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 300
    invoke-virtual {p0}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    invoke-virtual {p0}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 302
    invoke-virtual {p0}, Lo/HQ;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/HQ;->p()Lo/HP$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected p()Lo/HP$StateListAnimator;
    .locals 1

    .line 241
    new-instance v0, Lo/HP$StateListAnimator;

    invoke-direct {v0}, Lo/HP$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagsModel_{tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lo/HQ;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lo/HQ;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lo/HQ;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-super {p0}, Lo/HP;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
