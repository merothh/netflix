.class public Lo/PG;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/PE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/PC;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/PC;",
        ">;",
        "Lo/PE;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/PG;",
            "Lo/PC;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/PG;",
            "Lo/PC;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/PG;",
            "Lo/PC;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lo/AK;

.field private i:Ljava/lang/String;

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/PG;",
            "Lo/PC;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lo/Cipher;

.field private o:Lo/Bc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 32
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/PG;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 54
    move-object v1, v0

    check-cast v1, Lo/AK;

    iput-object v1, p0, Lo/PG;->h:Lo/AK;

    .line 59
    check-cast v0, Lo/Bc;

    iput-object v0, p0, Lo/PG;->o:Lo/Bc;

    .line 64
    new-instance v0, Lo/Cipher;

    invoke-direct {v0}, Lo/Cipher;-><init>()V

    iput-object v0, p0, Lo/PG;->n:Lo/Cipher;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->c(Landroid/view/ViewGroup;)Lo/PC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->c(I)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/PE;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->b(Ljava/lang/CharSequence;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/AK;)Lo/PG;
    .locals 2

    .line 250
    iget-object v0, p0, Lo/PG;->b:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 251
    invoke-virtual {p0}, Lo/PG;->i()V

    .line 252
    iput-object p1, p0, Lo/PG;->h:Lo/AK;

    return-object p0
.end method

.method public a(Lo/Bc;)Lo/PG;
    .locals 2

    .line 268
    iget-object v0, p0, Lo/PG;->b:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 269
    invoke-virtual {p0}, Lo/PG;->i()V

    .line 270
    iput-object p1, p0, Lo/PG;->o:Lo/Bc;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p2, Lo/PC;

    invoke-virtual {p0, p1, p2, p3}, Lo/PG;->c(Lo/Consumer;Lo/PC;I)V

    return-void
.end method

.method protected b()I
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lo/PG;->d(J)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/PG;
    .locals 0

    .line 359
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/PG;
    .locals 2

    .line 233
    iget-object v0, p0, Lo/PG;->b:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 234
    invoke-virtual {p0}, Lo/PG;->i()V

    .line 235
    iput-object p1, p0, Lo/PG;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/PG;
    .locals 0

    .line 385
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lo/PC;

    invoke-virtual {p0, p1, p2}, Lo/PG;->e(ILo/PC;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p1, Lo/PC;

    invoke-virtual {p0, p1, p2}, Lo/PG;->e(Lo/PC;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->b(Ljava/lang/CharSequence;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->b(Lo/BiConsumer$Activity;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/view/ViewGroup;)Lo/PC;
    .locals 3

    .line 73
    new-instance v0, Lo/PC;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/PC;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/PC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;)Lo/PE;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->e(Ljava/lang/String;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/AK;)Lo/PE;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->a(Lo/AK;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/PG;
    .locals 1

    .line 379
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/PC;

    invoke-virtual {p0, p1}, Lo/PG;->e(Lo/PC;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/PC;I)V
    .locals 0

    return-void
.end method

.method public c(Lo/PC;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lo/PG;->o:Lo/Bc;

    invoke-virtual {p1, v0}, Lo/PC;->setAddToMyListButtonView(Lo/Bc;)V

    .line 87
    iget-object v0, p0, Lo/PG;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PC;->setBoxartView(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lo/PG;->h:Lo/AK;

    invoke-virtual {p1, v0}, Lo/PC;->setDownloadButtonView(Lo/AK;)V

    .line 89
    iget-object v0, p0, Lo/PG;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PC;->setPlayButtonView(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lo/PG;->n:Lo/Cipher;

    invoke-virtual {p1}, Lo/PC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PC;->setSynopsisView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Lo/PC;Lo/BiConsumer;)V
    .locals 2

    .line 95
    instance-of v0, p2, Lo/PG;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lo/PG;->c(Lo/PC;)V

    return-void

    .line 99
    :cond_0
    check-cast p2, Lo/PG;

    .line 100
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lo/PG;->o:Lo/Bc;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/PG;->o:Lo/Bc;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/PG;->o:Lo/Bc;

    if-eqz v0, :cond_2

    .line 103
    :goto_0
    iget-object v0, p0, Lo/PG;->o:Lo/Bc;

    invoke-virtual {p1, v0}, Lo/PC;->setAddToMyListButtonView(Lo/Bc;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lo/PG;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p2, Lo/PG;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lo/PG;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 107
    :goto_1
    iget-object v0, p0, Lo/PG;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PC;->setBoxartView(Ljava/lang/String;)V

    .line 110
    :cond_4
    iget-object v0, p0, Lo/PG;->h:Lo/AK;

    if-eqz v0, :cond_5

    iget-object v1, p2, Lo/PG;->h:Lo/AK;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_5
    iget-object v0, p2, Lo/PG;->h:Lo/AK;

    if-eqz v0, :cond_6

    .line 111
    :goto_2
    iget-object v0, p0, Lo/PG;->h:Lo/AK;

    invoke-virtual {p1, v0}, Lo/PC;->setDownloadButtonView(Lo/AK;)V

    .line 114
    :cond_6
    iget-object v0, p0, Lo/PG;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p2, Lo/PG;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_7
    iget-object v0, p2, Lo/PG;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 115
    :goto_3
    iget-object v0, p0, Lo/PG;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PC;->setPlayButtonView(Ljava/lang/String;)V

    .line 118
    :cond_8
    iget-object v0, p0, Lo/PG;->n:Lo/Cipher;

    iget-object p2, p2, Lo/PG;->n:Lo/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    :cond_9
    if-eqz p2, :cond_a

    .line 119
    :goto_4
    iget-object p2, p0, Lo/PG;->n:Lo/Cipher;

    invoke-virtual {p1}, Lo/PC;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/PC;->setSynopsisView(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public synthetic d(Ljava/lang/String;)Lo/PE;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->b(Ljava/lang/String;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Lo/PG;
    .locals 0

    .line 341
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/PG;
    .locals 2

    .line 289
    invoke-virtual {p0}, Lo/PG;->i()V

    .line 290
    iget-object v0, p0, Lo/PG;->b:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 291
    iget-object v0, p0, Lo/PG;->n:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 31
    move-object v5, p5

    check-cast v5, Lo/PC;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/PG;->e(FFIILo/PC;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/PC;

    invoke-virtual {p0, p1}, Lo/PG;->c(Lo/PC;)V

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

.method public synthetic e(Ljava/lang/CharSequence;)Lo/PE;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->d(Ljava/lang/CharSequence;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lo/Bc;)Lo/PE;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/PG;->a(Lo/Bc;)Lo/PG;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lo/PG;
    .locals 2

    .line 216
    iget-object v0, p0, Lo/PG;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 217
    invoke-virtual {p0}, Lo/PG;->i()V

    .line 218
    iput-object p1, p0, Lo/PG;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(FFIILo/PC;)V
    .locals 7

    .line 191
    iget-object v0, p0, Lo/PG;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 192
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 194
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public e(ILo/PC;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lo/PG;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 31
    check-cast p1, Lo/PC;

    invoke-virtual {p0, p1, p2}, Lo/PG;->c(Lo/PC;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/PC;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lo/PG;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lo/PC;I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/PG;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 434
    :cond_0
    instance-of v1, p1, Lo/PG;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 437
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 440
    :cond_2
    check-cast p1, Lo/PG;

    .line 441
    iget-object v1, p0, Lo/PG;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/PG;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 444
    :cond_5
    iget-object v1, p0, Lo/PG;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/PG;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 447
    :cond_8
    iget-object v1, p0, Lo/PG;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/PG;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 450
    :cond_b
    iget-object v1, p0, Lo/PG;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/PG;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 453
    :cond_e
    iget-object v1, p0, Lo/PG;->i:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/PG;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/PG;->i:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 456
    :cond_10
    iget-object v1, p0, Lo/PG;->g:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v3, p1, Lo/PG;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/PG;->g:Ljava/lang/String;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 459
    :cond_12
    iget-object v1, p0, Lo/PG;->h:Lo/AK;

    if-eqz v1, :cond_13

    iget-object v3, p1, Lo/PG;->h:Lo/AK;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    iget-object v1, p1, Lo/PG;->h:Lo/AK;

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 462
    :cond_14
    iget-object v1, p0, Lo/PG;->o:Lo/Bc;

    if-eqz v1, :cond_15

    iget-object v3, p1, Lo/PG;->o:Lo/Bc;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_b

    :cond_15
    iget-object v1, p1, Lo/PG;->o:Lo/Bc;

    if-eqz v1, :cond_16

    :goto_b
    return v2

    .line 465
    :cond_16
    iget-object v1, p0, Lo/PG;->n:Lo/Cipher;

    iget-object p1, p1, Lo/PG;->n:Lo/Cipher;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_c

    :cond_17
    if-eqz p1, :cond_18

    :goto_c
    return v2

    :cond_18
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 473
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 474
    iget-object v1, p0, Lo/PG;->c:Lo/AEADBadTagException;

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

    .line 475
    iget-object v1, p0, Lo/PG;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 476
    iget-object v1, p0, Lo/PG;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 477
    iget-object v1, p0, Lo/PG;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 478
    iget-object v1, p0, Lo/PG;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 479
    iget-object v1, p0, Lo/PG;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 480
    iget-object v1, p0, Lo/PG;->h:Lo/AK;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 481
    iget-object v1, p0, Lo/PG;->o:Lo/Bc;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 482
    iget-object v1, p0, Lo/PG;->n:Lo/Cipher;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v3

    :cond_8
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiTitleHeroTitleViewV2Model_{boxartView_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PG;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playButtonView_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PG;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadButtonView_Playable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PG;->h:Lo/AK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addToMyListButtonView_VideoDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PG;->o:Lo/Bc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", synopsisView_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PG;->n:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
