.class public Lo/NU;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/NS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/NO;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/NO;",
        ">;",
        "Lo/NS;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/NU;",
            "Lo/NO;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/NU;",
            "Lo/NO;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/NU;",
            "Lo/NO;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/NU;",
            "Lo/NO;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/view/View$OnClickListener;

.field private l:Lo/Cipher;

.field private m:Ljava/lang/String;

.field private n:Lo/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 35
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lo/NU;->f:Z

    .line 51
    iput-boolean v0, p0, Lo/NU;->j:Z

    .line 65
    new-instance v0, Lo/Cipher;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Lo/Cipher;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo/NU;->n:Lo/Cipher;

    .line 69
    new-instance v0, Lo/Cipher;

    invoke-direct {v0, v2}, Lo/Cipher;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo/NU;->l:Lo/Cipher;

    .line 73
    check-cast v1, Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->b(Landroid/view/ViewGroup;)Lo/NO;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->e(I)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->d(Ljava/lang/CharSequence;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->c(Ljava/lang/String;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Z)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->e(Z)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/NU;
    .locals 0

    .line 474
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(ILo/NO;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lo/NU;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 206
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 34
    check-cast p2, Lo/NO;

    invoke-virtual {p0, p1, p2, p3}, Lo/NU;->c(Lo/Consumer;Lo/NO;I)V

    return-void
.end method

.method public a(Lo/NO;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lo/NU;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 184
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/NO;->setOfferClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 79
    invoke-virtual {p0, p1}, Lo/NU;->e(Lo/OfPrimitive;)V

    .line 80
    iget-object p1, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setDiscountPercentage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setTitle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lo/NU;->a(J)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/ViewGroup;)Lo/NO;
    .locals 3

    .line 95
    new-instance v0, Lo/NO;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/NO;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/NO;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->i(Ljava/lang/CharSequence;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Z)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->c(Z)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/LongStream;)Lo/NU;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/NU;",
            "Lo/NO;",
            ">;)",
            "Lo/NU;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 444
    invoke-virtual {p0}, Lo/NU;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 446
    iput-object p1, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    iput-object v0, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    :goto_0
    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lo/NO;

    invoke-virtual {p0, p1, p2}, Lo/NU;->a(ILo/NO;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 34
    check-cast p1, Lo/NO;

    invoke-virtual {p0, p1, p2}, Lo/NU;->c(Lo/NO;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->i(Ljava/lang/CharSequence;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->d(Lo/BiConsumer$Activity;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/NU;
    .locals 2

    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 306
    invoke-virtual {p0}, Lo/NU;->i()V

    .line 307
    iput-object p1, p0, Lo/NU;->m:Ljava/lang/String;

    return-object p0

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "discountPercentage cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Z)Lo/NU;
    .locals 2

    .line 250
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 251
    invoke-virtual {p0}, Lo/NU;->i()V

    .line 252
    iput-boolean p1, p0, Lo/NU;->f:Z

    return-object p0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lo/NO;

    invoke-virtual {p0, p1}, Lo/NU;->a(Lo/NO;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/NO;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 103
    invoke-virtual {p0, p1, p3}, Lo/NU;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lo/NO;I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lo/NU;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 161
    invoke-virtual {p0, p1, p2}, Lo/NU;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lo/NO;Lo/BiConsumer;)V
    .locals 3

    .line 120
    instance-of v0, p2, Lo/NU;

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lo/NU;->e(Lo/NO;)V

    return-void

    .line 124
    :cond_0
    check-cast p2, Lo/NU;

    .line 125
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lo/NU;->n:Lo/Cipher;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/NU;->n:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/NU;->n:Lo/Cipher;

    if-eqz v0, :cond_2

    .line 128
    :goto_0
    iget-object v0, p0, Lo/NU;->n:Lo/Cipher;

    invoke-virtual {p1}, Lo/NO;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/NO;->setDiscountPrice(Ljava/lang/CharSequence;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lo/NU;->l:Lo/Cipher;

    if-eqz v0, :cond_3

    iget-object v1, p2, Lo/NU;->l:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lo/NU;->l:Lo/Cipher;

    if-eqz v0, :cond_4

    .line 132
    :goto_1
    iget-object v0, p0, Lo/NU;->l:Lo/Cipher;

    invoke-virtual {p1}, Lo/NO;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/NO;->setFullPrice(Ljava/lang/CharSequence;)V

    .line 135
    :cond_4
    iget-boolean v0, p0, Lo/NU;->j:Z

    iget-boolean v1, p2, Lo/NU;->j:Z

    if-eq v0, v1, :cond_5

    .line 136
    invoke-virtual {p1, v0}, Lo/NO;->setUserSelected(Z)V

    .line 139
    :cond_5
    iget-boolean v0, p0, Lo/NU;->f:Z

    iget-boolean v1, p2, Lo/NU;->f:Z

    if-eq v0, v1, :cond_6

    .line 140
    invoke-virtual {p1, v0}, Lo/NO;->setBestValue(Z)V

    .line 143
    :cond_6
    iget-object v0, p0, Lo/NU;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p2, Lo/NU;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_7
    iget-object v0, p2, Lo/NU;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 144
    :goto_2
    iget-object v0, p0, Lo/NU;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NO;->setTitle(Ljava/lang/String;)V

    .line 147
    :cond_8
    iget-object v0, p0, Lo/NU;->m:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p2, Lo/NU;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_9
    iget-object v0, p2, Lo/NU;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 148
    :goto_3
    iget-object v0, p0, Lo/NU;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NO;->setDiscountPercentage(Ljava/lang/String;)V

    .line 151
    :cond_a
    iget-object v0, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    iget-object p2, p2, Lo/NU;->k:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    if-eq v0, v1, :cond_d

    .line 152
    iget-object p2, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/NO;->setOfferClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/NU;
    .locals 2

    .line 328
    invoke-virtual {p0}, Lo/NU;->i()V

    .line 329
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 330
    iget-object v0, p0, Lo/NU;->n:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/NU;
    .locals 2

    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 286
    invoke-virtual {p0}, Lo/NU;->i()V

    .line 287
    iput-object p1, p0, Lo/NU;->g:Ljava/lang/String;

    return-object p0

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "title cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/NU;
    .locals 0

    .line 518
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p5, Lo/NO;

    invoke-virtual/range {p0 .. p5}, Lo/NU;->d(FFIILo/NO;)V

    return-void
.end method

.method public d(FFIILo/NO;)V
    .locals 7

    .line 225
    iget-object v0, p0, Lo/NU;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 226
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 228
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lo/NO;

    invoke-virtual {p0, p1}, Lo/NU;->e(Lo/NO;)V

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

.method public synthetic e(Ljava/lang/CharSequence;)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->h(Ljava/lang/CharSequence;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/String;)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->d(Ljava/lang/String;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lo/LongStream;)Lo/NS;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/NU;->b(Lo/LongStream;)Lo/NU;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lo/NU;
    .locals 1

    .line 512
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Z)Lo/NU;
    .locals 2

    .line 266
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 267
    invoke-virtual {p0}, Lo/NU;->i()V

    .line 268
    iput-boolean p1, p0, Lo/NU;->j:Z

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 34
    check-cast p1, Lo/NO;

    invoke-virtual {p0, p1, p2}, Lo/NU;->c(Lo/NO;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/NO;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lo/NU;->n:Lo/Cipher;

    invoke-virtual {p1}, Lo/NO;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/NO;->setDiscountPrice(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lo/NU;->l:Lo/Cipher;

    invoke-virtual {p1}, Lo/NO;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/NO;->setFullPrice(Ljava/lang/CharSequence;)V

    .line 111
    iget-boolean v0, p0, Lo/NU;->j:Z

    invoke-virtual {p1, v0}, Lo/NO;->setUserSelected(Z)V

    .line 112
    iget-boolean v0, p0, Lo/NU;->f:Z

    invoke-virtual {p1, v0}, Lo/NO;->setBestValue(Z)V

    .line 113
    iget-object v0, p0, Lo/NU;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NO;->setTitle(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lo/NU;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/NO;->setDiscountPercentage(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/NO;->setOfferClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 569
    :cond_0
    instance-of v1, p1, Lo/NU;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 572
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 575
    :cond_2
    check-cast p1, Lo/NU;

    .line 576
    iget-object v1, p0, Lo/NU;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/NU;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 579
    :cond_5
    iget-object v1, p0, Lo/NU;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/NU;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 582
    :cond_8
    iget-object v1, p0, Lo/NU;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/NU;->i:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 585
    :cond_b
    iget-object v1, p0, Lo/NU;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/NU;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 588
    :cond_e
    iget-boolean v1, p0, Lo/NU;->f:Z

    iget-boolean v3, p1, Lo/NU;->f:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 591
    :cond_f
    iget-boolean v1, p0, Lo/NU;->j:Z

    iget-boolean v3, p1, Lo/NU;->j:Z

    if-eq v1, v3, :cond_10

    return v2

    .line 594
    :cond_10
    iget-object v1, p0, Lo/NU;->g:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v3, p1, Lo/NU;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_11
    iget-object v1, p1, Lo/NU;->g:Ljava/lang/String;

    if-eqz v1, :cond_12

    :goto_8
    return v2

    .line 597
    :cond_12
    iget-object v1, p0, Lo/NU;->m:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v3, p1, Lo/NU;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_13
    iget-object v1, p1, Lo/NU;->m:Ljava/lang/String;

    if-eqz v1, :cond_14

    :goto_9
    return v2

    .line 600
    :cond_14
    iget-object v1, p0, Lo/NU;->n:Lo/Cipher;

    if-eqz v1, :cond_15

    iget-object v3, p1, Lo/NU;->n:Lo/Cipher;

    invoke-virtual {v1, v3}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_a

    :cond_15
    iget-object v1, p1, Lo/NU;->n:Lo/Cipher;

    if-eqz v1, :cond_16

    :goto_a
    return v2

    .line 603
    :cond_16
    iget-object v1, p0, Lo/NU;->l:Lo/Cipher;

    if-eqz v1, :cond_17

    iget-object v3, p1, Lo/NU;->l:Lo/Cipher;

    invoke-virtual {v1, v3}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_b

    :cond_17
    iget-object v1, p1, Lo/NU;->l:Lo/Cipher;

    if-eqz v1, :cond_18

    :goto_b
    return v2

    .line 606
    :cond_18
    iget-object v1, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_c

    :cond_19
    const/4 v1, 0x0

    :goto_c
    iget-object p1, p1, Lo/NU;->k:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_d

    :cond_1a
    const/4 p1, 0x0

    :goto_d
    if-eq v1, p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public h(Ljava/lang/CharSequence;)Lo/NU;
    .locals 2

    .line 390
    invoke-virtual {p0}, Lo/NU;->i()V

    .line 391
    iget-object v0, p0, Lo/NU;->b:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 392
    iget-object v0, p0, Lo/NU;->l:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 614
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 615
    iget-object v1, p0, Lo/NU;->a:Lo/AEADBadTagException;

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

    .line 616
    iget-object v1, p0, Lo/NU;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 617
    iget-object v1, p0, Lo/NU;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 618
    iget-object v1, p0, Lo/NU;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 619
    iget-boolean v1, p0, Lo/NU;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 620
    iget-boolean v1, p0, Lo/NU;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 621
    iget-object v1, p0, Lo/NU;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 622
    iget-object v1, p0, Lo/NU;->m:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 623
    iget-object v1, p0, Lo/NU;->n:Lo/Cipher;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 624
    iget-object v1, p0, Lo/NU;->l:Lo/Cipher;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 625
    iget-object v1, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public i(Ljava/lang/CharSequence;)Lo/NU;
    .locals 0

    .line 492
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiMonthChoiceItemViewModel_{bestValue_Boolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/NU;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userSelected_Boolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/NU;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NU;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", discountPercentage_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NU;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", discountPrice_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NU;->n:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fullPrice_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NU;->l:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offerClickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NU;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
