.class public Lo/PA;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Py;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/PB;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/PB;",
        ">;",
        "Lo/Py;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/PA;",
            "Lo/PB;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/PA;",
            "Lo/PB;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/PA;",
            "Lo/PB;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/PA;",
            "Lo/PB;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private l:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 27
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/PA;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lo/PA;->j:I

    const/4 v0, 0x0

    .line 43
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/PA;->f:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lo/PA;->h:Ljava/lang/String;

    .line 53
    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    .line 58
    iput-object v0, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->c(Landroid/view/ViewGroup;)Lo/PB;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->e(I)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/PA;
    .locals 0

    .line 326
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lo/PA;
    .locals 2

    .line 280
    iget-object v0, p0, Lo/PA;->b:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 281
    invoke-virtual {p0}, Lo/PA;->i()V

    .line 282
    iput-object p1, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/PA;
    .locals 2

    .line 247
    iget-object v0, p0, Lo/PA;->b:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 248
    invoke-virtual {p0}, Lo/PA;->i()V

    .line 249
    iput-object p1, p0, Lo/PA;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/PA;
    .locals 0

    .line 370
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/Py;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->e(Ljava/lang/CharSequence;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/PB;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/PA;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/PB;

    invoke-virtual {p0, p1, p2, p3}, Lo/PA;->c(Lo/Consumer;Lo/PB;I)V

    return-void
.end method

.method public a(Lo/PB;)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lo/PA;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 145
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/PB;->setLeftBoxartCallback(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1, v0}, Lo/PB;->setRightBoxartCallback(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()I
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/PA;->a(J)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/PA;
    .locals 2

    .line 313
    iget-object v0, p0, Lo/PA;->b:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 314
    invoke-virtual {p0}, Lo/PA;->i()V

    .line 315
    iput-object p1, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public b(FFIILo/PB;)V
    .locals 7

    .line 188
    iget-object v0, p0, Lo/PA;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 189
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 191
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/PB;

    invoke-virtual {p0, p1, p2}, Lo/PA;->a(ILo/PB;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/PB;

    invoke-virtual {p0, p1, p2}, Lo/PA;->c(Lo/PB;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->e(Ljava/lang/CharSequence;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->a(Lo/BiConsumer$Activity;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/view/ViewGroup;)Lo/PB;
    .locals 3

    .line 68
    new-instance v0, Lo/PB;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/PB;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/PB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic c(I)Lo/Py;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->d(I)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroid/view/View$OnClickListener;)Lo/Py;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->b(Landroid/view/View$OnClickListener;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lo/Py;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->a(Ljava/lang/String;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/PB;

    invoke-virtual {p0, p1}, Lo/PA;->a(Lo/PB;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/PB;I)V
    .locals 0

    return-void
.end method

.method public c(Lo/PB;I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/PA;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public d(I)Lo/PA;
    .locals 2

    .line 213
    iget-object v0, p0, Lo/PA;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 214
    invoke-virtual {p0}, Lo/PA;->i()V

    .line 215
    iput p1, p0, Lo/PA;->j:I

    return-object p0
.end method

.method public synthetic d(Landroid/view/View$OnClickListener;)Lo/Py;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->a(Landroid/view/View$OnClickListener;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/String;)Lo/Py;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/PA;->e(Ljava/lang/String;)Lo/PA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/PB;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/PA;->b(FFIILo/PB;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/PB;

    invoke-virtual {p0, p1}, Lo/PA;->e(Lo/PB;)V

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

.method public e(I)Lo/PA;
    .locals 1

    .line 364
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/CharSequence;)Lo/PA;
    .locals 0

    .line 344
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lo/PA;
    .locals 2

    .line 229
    iget-object v0, p0, Lo/PA;->b:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 230
    invoke-virtual {p0}, Lo/PA;->i()V

    .line 231
    iput-object p1, p0, Lo/PA;->f:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 26
    check-cast p1, Lo/PB;

    invoke-virtual {p0, p1, p2}, Lo/PA;->e(Lo/PB;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/PB;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lo/PA;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PB;->setLeftBoxartImageUrl(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lo/PA;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PB;->setRightBoxartImageUrl(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/PB;->setLeftBoxartCallback(Landroid/view/View$OnClickListener;)V

    .line 84
    iget v0, p0, Lo/PA;->j:I

    invoke-virtual {p1, v0}, Lo/PB;->setContainerWidth(I)V

    .line 85
    iget-object v0, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/PB;->setRightBoxartCallback(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Lo/PB;Lo/BiConsumer;)V
    .locals 4

    .line 90
    instance-of v0, p2, Lo/PA;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lo/PA;->e(Lo/PB;)V

    return-void

    .line 94
    :cond_0
    check-cast p2, Lo/PA;

    .line 95
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lo/PA;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/PA;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/PA;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 98
    :goto_0
    iget-object v0, p0, Lo/PA;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PB;->setLeftBoxartImageUrl(Ljava/lang/String;)V

    .line 101
    :cond_2
    iget-object v0, p0, Lo/PA;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p2, Lo/PA;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lo/PA;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 102
    :goto_1
    iget-object v0, p0, Lo/PA;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PB;->setRightBoxartImageUrl(Ljava/lang/String;)V

    .line 105
    :cond_4
    iget-object v0, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p2, Lo/PA;->l:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eq v0, v3, :cond_7

    .line 106
    iget-object v0, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/PB;->setLeftBoxartCallback(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_7
    iget v0, p0, Lo/PA;->j:I

    iget v3, p2, Lo/PA;->j:I

    if-eq v0, v3, :cond_8

    .line 110
    invoke-virtual {p1, v0}, Lo/PB;->setContainerWidth(I)V

    .line 113
    :cond_8
    iget-object v0, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iget-object p2, p2, Lo/PA;->n:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-eq v0, v1, :cond_b

    .line 114
    iget-object p2, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/PB;->setRightBoxartCallback(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 419
    :cond_0
    instance-of v1, p1, Lo/PA;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 422
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 425
    :cond_2
    check-cast p1, Lo/PA;

    .line 426
    iget-object v1, p0, Lo/PA;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/PA;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 429
    :cond_5
    iget-object v1, p0, Lo/PA;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/PA;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 432
    :cond_8
    iget-object v1, p0, Lo/PA;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/PA;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 435
    :cond_b
    iget-object v1, p0, Lo/PA;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/PA;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 438
    :cond_e
    iget v1, p0, Lo/PA;->j:I

    iget v3, p1, Lo/PA;->j:I

    if-eq v1, v3, :cond_f

    return v2

    .line 441
    :cond_f
    iget-object v1, p0, Lo/PA;->f:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v3, p1, Lo/PA;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    iget-object v1, p1, Lo/PA;->f:Ljava/lang/String;

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 444
    :cond_11
    iget-object v1, p0, Lo/PA;->h:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v3, p1, Lo/PA;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_12
    iget-object v1, p1, Lo/PA;->h:Ljava/lang/String;

    if-eqz v1, :cond_13

    :goto_9
    return v2

    .line 447
    :cond_13
    iget-object v1, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p1, Lo/PA;->l:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_b

    :cond_15
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_16

    return v2

    .line 450
    :cond_16
    iget-object v1, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_c

    :cond_17
    const/4 v1, 0x0

    :goto_c
    iget-object p1, p1, Lo/PA;->n:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_d

    :cond_18
    const/4 p1, 0x0

    :goto_d
    if-eq v1, p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 458
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 459
    iget-object v1, p0, Lo/PA;->a:Lo/AEADBadTagException;

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

    .line 460
    iget-object v1, p0, Lo/PA;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 461
    iget-object v1, p0, Lo/PA;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 462
    iget-object v1, p0, Lo/PA;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 463
    iget v1, p0, Lo/PA;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 464
    iget-object v1, p0, Lo/PA;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 465
    iget-object v1, p0, Lo/PA;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 466
    iget-object v1, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 467
    iget-object v1, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiTitleGridModuleViewV2Model_{containerWidth_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PA;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftBoxartImageUrl_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PA;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rightBoxartImageUrl_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PA;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leftBoxartCallback_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PA;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightBoxartCallback_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PA;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
