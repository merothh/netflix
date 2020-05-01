.class public Lo/aag;
.super Lo/aac;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aac;",
        "Lo/IntToLongFunction<",
        "Lo/aac$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/aac;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aag;->e(I)Lo/aag;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/aag;
    .locals 0

    .line 166
    invoke-super {p0, p1, p2}, Lo/aac;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/aag;->c(Lo/Consumer;Lo/aac$Activity;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/aac;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/aag;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/aag;->a(J)Lo/aag;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/EncryptedPrivateKeyInfo;)Lo/aag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;)",
            "Lo/aag;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lo/aag;->i()V

    .line 135
    iput-object p1, p0, Lo/aag;->g:Lo/EncryptedPrivateKeyInfo;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aag;->c(ILo/aac$Activity;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aag;->c(Lo/aac$Activity;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aag;->d(Ljava/lang/CharSequence;)Lo/aag;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aag;->d(Lo/BiConsumer$Activity;)Lo/aag;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/AEADBadTagException;)Lo/aag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AEADBadTagException<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;)",
            "Lo/aag;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lo/aag;->i()V

    .line 68
    iput-object p1, p0, Lo/aag;->c:Lo/AEADBadTagException;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/aac$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aag;->d(FFIILo/aac$Activity;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aag;->c(ILo/aac$Activity;)V

    return-void
.end method

.method public c(ILo/aac$Activity;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/aag;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Lo/aac;->c(ILo/aac$Activity;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aac$Activity;

    invoke-virtual {p0, p1}, Lo/aag;->c(Lo/aac$Activity;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/aac$Activity;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/aag;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lo/aac$Activity;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lo/aac;->e(Lo/TimeUnit;)V

    .line 75
    iget-object v0, p0, Lo/aag;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lo/aac$Activity;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/aag;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 55
    invoke-virtual {p0, p1, p2}, Lo/aag;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/aag;
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lo/aac;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/aag;
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lo/aac;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/LongStream;)Lo/aag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;)",
            "Lo/aag;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lo/aag;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 145
    invoke-super {p0, p1}, Lo/aac;->d(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/aac;->d(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p5, Lo/aac$Activity;

    invoke-virtual/range {p0 .. p5}, Lo/aag;->d(FFIILo/aac$Activity;)V

    return-void
.end method

.method public d(FFIILo/aac$Activity;)V
    .locals 7

    .line 120
    iget-object v0, p0, Lo/aag;->g:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/aac;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public e(I)Lo/aag;
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lo/aac;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aac$Activity;

    invoke-virtual {p0, p1}, Lo/aag;->c(Lo/aac$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 254
    :cond_0
    instance-of v1, p1, Lo/aag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 257
    :cond_1
    invoke-super {p0, p1}, Lo/aac;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 260
    :cond_2
    check-cast p1, Lo/aag;

    .line 261
    iget-object v1, p0, Lo/aag;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aag;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 264
    :cond_5
    iget-object v1, p0, Lo/aag;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aag;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 267
    :cond_8
    iget-object v1, p0, Lo/aag;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aag;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 270
    :cond_b
    iget-object v1, p0, Lo/aag;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aag;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 273
    :cond_e
    invoke-virtual {p0}, Lo/aag;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/aag;->h()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 281
    invoke-super {p0}, Lo/aac;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object v1, p0, Lo/aag;->c:Lo/AEADBadTagException;

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
    iget-object v1, p0, Lo/aag;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 284
    iget-object v1, p0, Lo/aag;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 285
    iget-object v1, p0, Lo/aag;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    invoke-virtual {p0}, Lo/aag;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method protected m()Lo/aac$Activity;
    .locals 1

    .line 235
    new-instance v0, Lo/aac$Activity;

    invoke-direct {v0, p0}, Lo/aac$Activity;-><init>(Lo/aac;)V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/aag;->m()Lo/aac$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreQuerySearchCarouselModel_{clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p0}, Lo/aag;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-super {p0}, Lo/aac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
