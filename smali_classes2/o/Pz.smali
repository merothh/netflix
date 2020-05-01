.class public Lo/Pz;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Pw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/Pv;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/Pv;",
        ">;",
        "Lo/Pw;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Pz;",
            "Lo/Pv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Pz;",
            "Lo/Pv;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Pz;",
            "Lo/Pv;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/Cipher;

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Pz;",
            "Lo/Pv;",
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

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/Pz;->b:Ljava/util/BitSet;

    .line 41
    new-instance v0, Lo/Cipher;

    invoke-direct {v0}, Lo/Cipher;-><init>()V

    iput-object v0, p0, Lo/Pz;->i:Lo/Cipher;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/Pz;->d(Landroid/view/ViewGroup;)Lo/Pv;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/Pz;->e(I)Lo/Pz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/Pw;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/Pz;->d(Ljava/lang/CharSequence;)Lo/Pz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p2, Lo/Pv;

    invoke-virtual {p0, p1, p2, p3}, Lo/Pz;->e(Lo/Consumer;Lo/Pv;I)V

    return-void
.end method

.method public a(Lo/Pv;I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/Pz;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected b()I
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lo/Pz;->c(J)Lo/Pz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/Pw;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/Pz;->e(Ljava/lang/CharSequence;)Lo/Pz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lo/Pv;

    invoke-virtual {p0, p1, p2}, Lo/Pz;->c(ILo/Pv;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p1, Lo/Pv;

    invoke-virtual {p0, p1, p2}, Lo/Pz;->a(Lo/Pv;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/Pz;->d(Ljava/lang/CharSequence;)Lo/Pz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/Pz;->e(Lo/BiConsumer$Activity;)Lo/Pz;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/Pz;
    .locals 0

    .line 229
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(FFIILo/Pv;)V
    .locals 7

    .line 148
    iget-object v0, p0, Lo/Pz;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 149
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 151
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public c(ILo/Pv;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lo/Pz;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 129
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/Pv;

    invoke-virtual {p0, p1}, Lo/Pz;->e(Lo/Pv;)V

    return-void
.end method

.method protected d(Landroid/view/ViewGroup;)Lo/Pv;
    .locals 3

    .line 50
    new-instance v0, Lo/Pv;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/Pv;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/Pv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Pz;
    .locals 0

    .line 247
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 28
    move-object v5, p5

    check-cast v5, Lo/Pv;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Pz;->c(FFIILo/Pv;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/Pv;

    invoke-virtual {p0, p1}, Lo/Pz;->d(Lo/Pv;)V

    return-void
.end method

.method public d(Lo/Pv;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lo/Pz;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/Pv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Pv;->setHeadlineView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Lo/Pv;Lo/BiConsumer;)V
    .locals 1

    .line 68
    instance-of v0, p2, Lo/Pz;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lo/Pz;->d(Lo/Pv;)V

    return-void

    .line 72
    :cond_0
    check-cast p2, Lo/Pz;

    .line 73
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lo/Pz;->i:Lo/Cipher;

    iget-object p2, p2, Lo/Pz;->i:Lo/Cipher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 76
    :goto_0
    iget-object p2, p0, Lo/Pz;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/Pv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Pv;->setHeadlineView(Ljava/lang/CharSequence;)V

    :cond_2
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

.method public e(I)Lo/Pz;
    .locals 1

    .line 266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/CharSequence;)Lo/Pz;
    .locals 2

    .line 177
    invoke-virtual {p0}, Lo/Pz;->i()V

    .line 178
    iget-object v0, p0, Lo/Pz;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 179
    iget-object v0, p0, Lo/Pz;->i:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/Pz;
    .locals 0

    .line 272
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 28
    check-cast p1, Lo/Pv;

    invoke-virtual {p0, p1, p2}, Lo/Pz;->d(Lo/Pv;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/Consumer;Lo/Pv;I)V
    .locals 0

    return-void
.end method

.method public e(Lo/Pv;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lo/Pz;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 317
    :cond_0
    instance-of v1, p1, Lo/Pz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 320
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 323
    :cond_2
    check-cast p1, Lo/Pz;

    .line 324
    iget-object v1, p0, Lo/Pz;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Pz;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 327
    :cond_5
    iget-object v1, p0, Lo/Pz;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Pz;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 330
    :cond_8
    iget-object v1, p0, Lo/Pz;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Pz;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 333
    :cond_b
    iget-object v1, p0, Lo/Pz;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Pz;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 336
    :cond_e
    iget-object v1, p0, Lo/Pz;->i:Lo/Cipher;

    iget-object p1, p1, Lo/Pz;->i:Lo/Cipher;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_f
    if-eqz p1, :cond_10

    :goto_8
    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 344
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    iget-object v1, p0, Lo/Pz;->a:Lo/AEADBadTagException;

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

    .line 346
    iget-object v1, p0, Lo/Pz;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 347
    iget-object v1, p0, Lo/Pz;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 348
    iget-object v1, p0, Lo/Pz;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 349
    iget-object v1, p0, Lo/Pz;->i:Lo/Cipher;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiTitleGridHeadlineViewV2Model_{headlineView_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Pz;->i:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
