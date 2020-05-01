.class public Lo/QP;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/QN;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/QN;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/QP;",
            "Lo/QN;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/QP;",
            "Lo/QN;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/QP;",
            "Lo/QN;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/Cipher;

.field private h:Lo/Cipher;

.field private i:I

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/QP;",
            "Lo/QN;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 33
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/QP;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lo/QP;->i:I

    .line 50
    new-instance v0, Lo/Cipher;

    invoke-direct {v0}, Lo/Cipher;-><init>()V

    iput-object v0, p0, Lo/QP;->h:Lo/Cipher;

    .line 54
    new-instance v0, Lo/Cipher;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Lo/Cipher;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo/QP;->g:Lo/Cipher;

    .line 58
    check-cast v1, Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/QP;->b(Landroid/view/ViewGroup;)Lo/QN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/QP;->b(I)Lo/QP;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/QP;
    .locals 0

    .line 413
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(FFIILo/QN;)V
    .locals 7

    .line 181
    iget-object v0, p0, Lo/QP;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 182
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 184
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 32
    check-cast p2, Lo/QN;

    invoke-virtual {p0, p1, p2, p3}, Lo/QP;->d(Lo/Consumer;Lo/QN;I)V

    return-void
.end method

.method public a(Lo/QN;I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/QP;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected b()I
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/QP;->c(J)Lo/QP;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/ViewGroup;)Lo/QN;
    .locals 2

    .line 68
    new-instance v0, Lo/QN;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/QN;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/QN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public b(I)Lo/QP;
    .locals 1

    .line 407
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lo/QN;

    invoke-virtual {p0, p1, p2}, Lo/QP;->c(ILo/QN;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 32
    check-cast p1, Lo/QN;

    invoke-virtual {p0, p1, p2}, Lo/QP;->a(Lo/QN;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/QP;->e(Ljava/lang/CharSequence;)Lo/QP;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/QP;->a(Lo/BiConsumer$Activity;)Lo/QP;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/QP;
    .locals 2

    .line 301
    invoke-virtual {p0}, Lo/QP;->i()V

    .line 302
    iget-object v0, p0, Lo/QP;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 303
    iget-object v0, p0, Lo/QP;->g:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->b(I)V

    return-object p0
.end method

.method public c(J)Lo/QP;
    .locals 0

    .line 370
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(ILo/QN;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lo/QP;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lo/QN;

    invoke-virtual {p0, p1}, Lo/QP;->d(Lo/QN;)V

    return-void
.end method

.method public d(I)Lo/QP;
    .locals 2

    .line 206
    iget-object v0, p0, Lo/QP;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 207
    invoke-virtual {p0}, Lo/QP;->i()V

    .line 208
    iput p1, p0, Lo/QP;->i:I

    return-object p0
.end method

.method public d(Landroid/view/View$OnClickListener;)Lo/QP;
    .locals 2

    .line 357
    iget-object v0, p0, Lo/QP;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 358
    invoke-virtual {p0}, Lo/QP;->i()V

    .line 359
    iput-object p1, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 32
    move-object v5, p5

    check-cast v5, Lo/QN;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/QP;->a(FFIILo/QN;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lo/QN;

    invoke-virtual {p0, p1}, Lo/QP;->e(Lo/QN;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/QN;I)V
    .locals 0

    return-void
.end method

.method public d(Lo/QN;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lo/QP;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 140
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/QN;->e(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Lo/QN;Lo/BiConsumer;)V
    .locals 3

    .line 89
    instance-of v0, p2, Lo/QP;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lo/QP;->e(Lo/QN;)V

    return-void

    .line 93
    :cond_0
    check-cast p2, Lo/QP;

    .line 94
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 96
    iget v0, p0, Lo/QP;->i:I

    iget v1, p2, Lo/QP;->i:I

    if-eq v0, v1, :cond_1

    .line 97
    invoke-virtual {p1, v0}, Lo/QN;->setIcon(I)V

    .line 100
    :cond_1
    iget-object v0, p0, Lo/QP;->g:Lo/Cipher;

    if-eqz v0, :cond_2

    iget-object v1, p2, Lo/QP;->g:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lo/QP;->g:Lo/Cipher;

    if-eqz v0, :cond_3

    .line 101
    :goto_0
    iget-object v0, p0, Lo/QP;->g:Lo/Cipher;

    invoke-virtual {p1}, Lo/QN;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/QN;->setButton(Ljava/lang/CharSequence;)V

    .line 104
    :cond_3
    iget-object v0, p0, Lo/QP;->h:Lo/Cipher;

    if-eqz v0, :cond_4

    iget-object v1, p2, Lo/QP;->h:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_4
    iget-object v0, p2, Lo/QP;->h:Lo/Cipher;

    if-eqz v0, :cond_5

    .line 105
    :goto_1
    iget-object v0, p0, Lo/QP;->h:Lo/Cipher;

    invoke-virtual {p1}, Lo/QN;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/QN;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    :cond_5
    iget-object v0, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object p2, p2, Lo/QP;->n:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eq v0, v1, :cond_8

    .line 109
    iget-object p2, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/QN;->e(Landroid/view/View$OnClickListener;)V

    :cond_8
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

.method public e(I)Lo/QP;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lo/QP;->i()V

    .line 242
    iget-object v0, p0, Lo/QP;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 243
    iget-object v0, p0, Lo/QP;->h:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->b(I)V

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/QP;
    .locals 0

    .line 388
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 32
    check-cast p1, Lo/QN;

    invoke-virtual {p0, p1, p2}, Lo/QP;->d(Lo/QN;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/QN;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 81
    iget v0, p0, Lo/QP;->i:I

    invoke-virtual {p1, v0}, Lo/QN;->setIcon(I)V

    .line 82
    iget-object v0, p0, Lo/QP;->g:Lo/Cipher;

    invoke-virtual {p1}, Lo/QN;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/QN;->setButton(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lo/QP;->h:Lo/Cipher;

    invoke-virtual {p1}, Lo/QN;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/QN;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/QN;->e(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 461
    :cond_0
    instance-of v1, p1, Lo/QP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 464
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 467
    :cond_2
    check-cast p1, Lo/QP;

    .line 468
    iget-object v1, p0, Lo/QP;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/QP;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 471
    :cond_5
    iget-object v1, p0, Lo/QP;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/QP;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 474
    :cond_8
    iget-object v1, p0, Lo/QP;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/QP;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 477
    :cond_b
    iget-object v1, p0, Lo/QP;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/QP;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 480
    :cond_e
    iget v1, p0, Lo/QP;->i:I

    iget v3, p1, Lo/QP;->i:I

    if-eq v1, v3, :cond_f

    return v2

    .line 483
    :cond_f
    iget-object v1, p0, Lo/QP;->h:Lo/Cipher;

    if-eqz v1, :cond_10

    iget-object v3, p1, Lo/QP;->h:Lo/Cipher;

    invoke-virtual {v1, v3}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    iget-object v1, p1, Lo/QP;->h:Lo/Cipher;

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 486
    :cond_11
    iget-object v1, p0, Lo/QP;->g:Lo/Cipher;

    if-eqz v1, :cond_12

    iget-object v3, p1, Lo/QP;->g:Lo/Cipher;

    invoke-virtual {v1, v3}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_12
    iget-object v1, p1, Lo/QP;->g:Lo/Cipher;

    if-eqz v1, :cond_13

    :goto_9
    return v2

    .line 489
    :cond_13
    iget-object v1, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    :goto_a
    iget-object p1, p1, Lo/QP;->n:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_b

    :cond_15
    const/4 p1, 0x0

    :goto_b
    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 497
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 498
    iget-object v1, p0, Lo/QP;->b:Lo/AEADBadTagException;

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

    .line 499
    iget-object v1, p0, Lo/QP;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 500
    iget-object v1, p0, Lo/QP;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 501
    iget-object v1, p0, Lo/QP;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 502
    iget v1, p0, Lo/QP;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 503
    iget-object v1, p0, Lo/QP;->h:Lo/Cipher;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 504
    iget-object v1, p0, Lo/QP;->g:Lo/Cipher;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 505
    iget-object v1, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmptyStateEpoxyViewModel_{icon_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/QP;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QP;->h:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", button_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QP;->g:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QP;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
