.class public Lo/NQ;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NR;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NT;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NT;",
        ">;",
        "Lo/NR;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NQ;",
            "Lo/NT;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NQ;",
            "Lo/NT;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NQ;",
            "Lo/NT;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View$OnClickListener;

.field private h:I

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NQ;",
            "Lo/NT;",
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

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/NQ;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lo/NQ;->h:I

    const/4 v0, 0x0

    .line 46
    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->e(Landroid/view/ViewGroup;)Lo/NT;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->d(I)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method public a(FFIILo/NT;)V
    .locals 7

    .line 168
    iget-object v0, p0, Lo/NQ;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 169
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 171
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p2, Lo/NT;

    invoke-virtual {p0, p1, p2, p3}, Lo/NQ;->d(Lo/Consumer;Lo/NT;I)V

    return-void
.end method

.method public a(Lo/NT;Lo/BiConsumer;)V
    .locals 4

    .line 82
    instance-of v0, p2, Lo/NQ;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lo/NQ;->e(Lo/NT;)V

    return-void

    .line 86
    :cond_0
    check-cast p2, Lo/NQ;

    .line 87
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/NT;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_3
    iget v0, p0, Lo/NQ;->h:I

    iget p2, p2, Lo/NQ;->h:I

    if-eq v0, p2, :cond_4

    .line 94
    invoke-virtual {p1, v0}, Lo/NT;->setLabel(I)V

    :cond_4
    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 52
    invoke-virtual {p0, p1}, Lo/NQ;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method protected b()I
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lo/NQ;->e(J)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/NQ;
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/LongStream;)Lo/NQ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/NQ;",
            "Lo/NT;",
            ">;)",
            "Lo/NQ;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/NQ;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 209
    invoke-virtual {p0}, Lo/NQ;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    iput-object v0, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    :goto_0
    return-object p0
.end method

.method public synthetic b(I)Lo/NR;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->c(I)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lo/NT;

    invoke-virtual {p0, p1, p2}, Lo/NQ;->c(ILo/NT;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p1, Lo/NT;

    invoke-virtual {p0, p1, p2}, Lo/NQ;->d(Lo/NT;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->b(Ljava/lang/CharSequence;)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->e(Lo/BiConsumer$Activity;)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/NQ;
    .locals 2

    .line 193
    iget-object v0, p0, Lo/NQ;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 194
    invoke-virtual {p0}, Lo/NQ;->i()V

    .line 195
    iput p1, p0, Lo/NQ;->h:I

    return-object p0
.end method

.method public c(ILo/NT;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/NQ;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/NT;

    invoke-virtual {p0, p1}, Lo/NQ;->d(Lo/NT;)V

    return-void
.end method

.method public d(I)Lo/NQ;
    .locals 1

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic d(Lo/LongStream;)Lo/NR;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->b(Lo/LongStream;)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 28
    move-object v5, p5

    check-cast v5, Lo/NT;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/NQ;->a(FFIILo/NT;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/NT;

    invoke-virtual {p0, p1}, Lo/NQ;->e(Lo/NT;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/NT;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 70
    invoke-virtual {p0, p1, p3}, Lo/NQ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lo/NT;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lo/NQ;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 126
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/NT;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Lo/NT;I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/NQ;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 103
    invoke-virtual {p0, p1, p2}, Lo/NQ;->d(Ljava/lang/String;I)V

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

.method public e(J)Lo/NQ;
    .locals 0

    .line 239
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/NQ;
    .locals 0

    .line 283
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/NR;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/NQ;->b(Ljava/lang/CharSequence;)Lo/NQ;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/view/ViewGroup;)Lo/NT;
    .locals 3

    .line 62
    new-instance v0, Lo/NT;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/NT;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/NT;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 28
    check-cast p1, Lo/NT;

    invoke-virtual {p0, p1, p2}, Lo/NQ;->a(Lo/NT;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/NT;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/NT;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget v0, p0, Lo/NQ;->h:I

    invoke-virtual {p1, v0}, Lo/NT;->setLabel(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 329
    :cond_0
    instance-of v1, p1, Lo/NQ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 332
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 335
    :cond_2
    check-cast p1, Lo/NQ;

    .line 336
    iget-object v1, p0, Lo/NQ;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NQ;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 339
    :cond_5
    iget-object v1, p0, Lo/NQ;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NQ;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 342
    :cond_8
    iget-object v1, p0, Lo/NQ;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NQ;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 345
    :cond_b
    iget-object v1, p0, Lo/NQ;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NQ;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 348
    :cond_e
    iget v1, p0, Lo/NQ;->h:I

    iget v3, p1, Lo/NQ;->h:I

    if-eq v1, v3, :cond_f

    return v2

    .line 351
    :cond_f
    iget-object v1, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :goto_8
    iget-object p1, p1, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_9

    :cond_11
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 359
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 360
    iget-object v1, p0, Lo/NQ;->b:Lo/AEADBadTagException;

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

    .line 361
    iget-object v1, p0, Lo/NQ;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 362
    iget-object v1, p0, Lo/NQ;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 363
    iget-object v1, p0, Lo/NQ;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 364
    iget v1, p0, Lo/NQ;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    iget-object v1, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiMonthDismissButtonViewModel_{label_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/NQ;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonClickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NQ;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
