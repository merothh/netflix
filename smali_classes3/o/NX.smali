.class public Lo/NX;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NW;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NW;",
        ">;",
        "Lo/NV;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NX;",
            "Lo/NW;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NX;",
            "Lo/NW;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NX;",
            "Lo/NW;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NX;",
            "Lo/NW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 29
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/NX;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lo/NX;->h:Z

    .line 50
    iput v0, p0, Lo/NX;->i:I

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->e(Landroid/view/ViewGroup;)Lo/NW;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->d(I)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/NX;
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/NX;
    .locals 0

    .line 295
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Z)Lo/NX;
    .locals 2

    .line 223
    iget-object v0, p0, Lo/NX;->b:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 224
    invoke-virtual {p0}, Lo/NX;->i()V

    .line 225
    iput-boolean p1, p0, Lo/NX;->h:Z

    return-object p0
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p2, Lo/NW;

    invoke-virtual {p0, p1, p2, p3}, Lo/NX;->a(Lo/Consumer;Lo/NW;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/NW;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 77
    invoke-virtual {p0, p1, p3}, Lo/NX;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/NW;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lo/NX;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 56
    invoke-virtual {p0, p1}, Lo/NX;->e(Lo/OfPrimitive;)V

    .line 57
    iget-object p1, p0, Lo/NX;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setImageUrl"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lo/NX;->a(J)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Z)Lo/NV;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->a(Z)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/NX;
    .locals 0

    .line 270
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/NX;
    .locals 2

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lo/NX;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 207
    invoke-virtual {p0}, Lo/NX;->i()V

    .line 208
    iput-object p1, p0, Lo/NX;->f:Ljava/lang/String;

    return-object p0

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "imageUrl cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lo/NW;

    invoke-virtual {p0, p1, p2}, Lo/NX;->d(ILo/NW;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p1, Lo/NW;

    invoke-virtual {p0, p1, p2}, Lo/NX;->b(Lo/NW;I)V

    return-void
.end method

.method public b(Lo/NW;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lo/NX;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NW;->setImageUrl(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lo/NX;->i:I

    invoke-virtual {p1, v0}, Lo/NW;->setOfferLabel(I)V

    .line 85
    iget-boolean v0, p0, Lo/NX;->h:Z

    invoke-virtual {p1, v0}, Lo/NW;->b(Z)V

    return-void
.end method

.method public b(Lo/NW;I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/NX;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 115
    invoke-virtual {p0, p1, p2}, Lo/NX;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->b(Ljava/lang/CharSequence;)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->a(Lo/BiConsumer$Activity;)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/NX;
    .locals 2

    .line 239
    iget-object v0, p0, Lo/NX;->b:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 240
    invoke-virtual {p0}, Lo/NX;->i()V

    .line 241
    iput p1, p0, Lo/NX;->i:I

    return-object p0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/NW;

    invoke-virtual {p0, p1}, Lo/NX;->a(Lo/NW;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/CharSequence;)Lo/NV;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->b(Ljava/lang/CharSequence;)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/NX;
    .locals 1

    .line 289
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p5, Lo/NW;

    invoke-virtual/range {p0 .. p5}, Lo/NX;->d(FFIILo/NW;)V

    return-void
.end method

.method public d(FFIILo/NW;)V
    .locals 7

    .line 178
    iget-object v0, p0, Lo/NX;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 179
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 181
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public d(ILo/NW;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lo/NX;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/NW;

    invoke-virtual {p0, p1}, Lo/NX;->b(Lo/NW;)V

    return-void
.end method

.method protected e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public synthetic e(I)Lo/NV;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->c(I)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/String;)Lo/NV;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NX;->b(Ljava/lang/String;)Lo/NX;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/view/ViewGroup;)Lo/NW;
    .locals 3

    .line 69
    new-instance v0, Lo/NW;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/NW;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/NW;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 28
    check-cast p1, Lo/NW;

    invoke-virtual {p0, p1, p2}, Lo/NX;->e(Lo/NW;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/NW;Lo/BiConsumer;)V
    .locals 2

    .line 90
    instance-of v0, p2, Lo/NX;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lo/NX;->b(Lo/NW;)V

    return-void

    .line 94
    :cond_0
    check-cast p2, Lo/NX;

    .line 95
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lo/NX;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/NX;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/NX;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 98
    :goto_0
    iget-object v0, p0, Lo/NX;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NW;->setImageUrl(Ljava/lang/String;)V

    .line 101
    :cond_2
    iget v0, p0, Lo/NX;->i:I

    iget v1, p2, Lo/NX;->i:I

    if-eq v0, v1, :cond_3

    .line 102
    invoke-virtual {p1, v0}, Lo/NW;->setOfferLabel(I)V

    .line 105
    :cond_3
    iget-boolean v0, p0, Lo/NX;->h:Z

    iget-boolean p2, p2, Lo/NX;->h:Z

    if-eq v0, p2, :cond_4

    .line 106
    invoke-virtual {p1, v0}, Lo/NW;->b(Z)V

    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 342
    :cond_0
    instance-of v1, p1, Lo/NX;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 345
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 348
    :cond_2
    check-cast p1, Lo/NX;

    .line 349
    iget-object v1, p0, Lo/NX;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NX;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 352
    :cond_5
    iget-object v1, p0, Lo/NX;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NX;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 355
    :cond_8
    iget-object v1, p0, Lo/NX;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NX;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 358
    :cond_b
    iget-object v1, p0, Lo/NX;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NX;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 361
    :cond_e
    iget-object v1, p0, Lo/NX;->f:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/NX;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/NX;->f:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 364
    :cond_10
    iget-boolean v1, p0, Lo/NX;->h:Z

    iget-boolean v3, p1, Lo/NX;->h:Z

    if-eq v1, v3, :cond_11

    return v2

    .line 367
    :cond_11
    iget v1, p0, Lo/NX;->i:I

    iget p1, p1, Lo/NX;->i:I

    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 375
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 376
    iget-object v1, p0, Lo/NX;->a:Lo/AEADBadTagException;

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

    .line 377
    iget-object v1, p0, Lo/NX;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 378
    iget-object v1, p0, Lo/NX;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    iget-object v1, p0, Lo/NX;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 380
    iget-object v1, p0, Lo/NX;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    iget-boolean v1, p0, Lo/NX;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 382
    iget v1, p0, Lo/NX;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiMonthHeaderViewModel_{imageUrl_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NX;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAnnualOffer_Boolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/NX;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerLabel_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/NX;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
