.class public Lo/RU;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/RS;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/RS;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/RU;",
            "Lo/RS;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/RU;",
            "Lo/RS;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/RU;",
            "Lo/RS;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/Cipher;

.field private i:Ljava/lang/String;

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/RU;",
            "Lo/RS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 28
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/RU;->c:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 40
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/RU;->i:Ljava/lang/String;

    .line 45
    new-instance v1, Lo/Cipher;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Lo/Cipher;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lo/RU;->h:Lo/Cipher;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RU;->d(Landroid/view/ViewGroup;)Lo/RS;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RU;->d(I)Lo/RU;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/RU;
    .locals 0

    .line 253
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(ILo/RS;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/RU;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/RS;

    invoke-virtual {p0, p1, p2, p3}, Lo/RU;->a(Lo/Consumer;Lo/RS;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/RS;I)V
    .locals 0

    return-void
.end method

.method public a(Lo/RS;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lo/RU;->h:Lo/Cipher;

    invoke-virtual {p1}, Lo/RS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/RS;->setName(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lo/RU;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/RS;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/RS;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/RU;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected b()I
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/RU;->a(J)Lo/RU;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/RU;
    .locals 0

    .line 271
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/RU;
    .locals 0

    .line 296
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/RS;

    invoke-virtual {p0, p1, p2}, Lo/RU;->a(ILo/RS;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/RS;

    invoke-virtual {p0, p1, p2}, Lo/RU;->a(Lo/RS;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RU;->b(Ljava/lang/CharSequence;)Lo/RU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RU;->b(Lo/BiConsumer$Activity;)Lo/RU;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/RS;

    invoke-virtual {p0, p1}, Lo/RU;->c(Lo/RS;)V

    return-void
.end method

.method public c(Lo/RS;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lo/RU;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected d(Landroid/view/ViewGroup;)Lo/RS;
    .locals 3

    .line 54
    new-instance v0, Lo/RS;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/RS;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/RS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public d(I)Lo/RU;
    .locals 1

    .line 290
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/CharSequence;)Lo/RU;
    .locals 2

    .line 202
    invoke-virtual {p0}, Lo/RU;->i()V

    .line 203
    iget-object v0, p0, Lo/RU;->c:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 204
    iget-object v0, p0, Lo/RU;->h:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/RS;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/RU;->e(FFIILo/RS;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/RS;

    invoke-virtual {p0, p1}, Lo/RU;->a(Lo/RS;)V

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

.method public e(Ljava/lang/String;)Lo/RU;
    .locals 2

    .line 180
    iget-object v0, p0, Lo/RU;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 181
    invoke-virtual {p0}, Lo/RU;->i()V

    .line 182
    iput-object p1, p0, Lo/RU;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(FFIILo/RS;)V
    .locals 7

    .line 155
    iget-object v0, p0, Lo/RU;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 156
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 158
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 27
    check-cast p1, Lo/RS;

    invoke-virtual {p0, p1, p2}, Lo/RU;->e(Lo/RS;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/RS;Lo/BiConsumer;)V
    .locals 2

    .line 73
    instance-of v0, p2, Lo/RU;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lo/RU;->a(Lo/RS;)V

    return-void

    .line 77
    :cond_0
    check-cast p2, Lo/RU;

    .line 78
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lo/RU;->h:Lo/Cipher;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/RU;->h:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/RU;->h:Lo/Cipher;

    if-eqz v0, :cond_2

    .line 81
    :goto_0
    iget-object v0, p0, Lo/RU;->h:Lo/Cipher;

    invoke-virtual {p1}, Lo/RS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/RS;->setName(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lo/RU;->i:Ljava/lang/String;

    iget-object p2, p2, Lo/RU;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 85
    :goto_1
    iget-object p2, p0, Lo/RU;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/RS;->setAvatar(Ljava/lang/String;)V

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
    instance-of v1, p1, Lo/RU;

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
    check-cast p1, Lo/RU;

    .line 349
    iget-object v1, p0, Lo/RU;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/RU;->a:Lo/AEADBadTagException;

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
    iget-object v1, p0, Lo/RU;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/RU;->b:Lo/CipherInputStream;

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
    iget-object v1, p0, Lo/RU;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/RU;->g:Lo/CipherSpi;

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
    iget-object v1, p0, Lo/RU;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/RU;->j:Lo/EncryptedPrivateKeyInfo;

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
    iget-object v1, p0, Lo/RU;->i:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/RU;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/RU;->i:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 364
    :cond_10
    iget-object v1, p0, Lo/RU;->h:Lo/Cipher;

    iget-object p1, p1, Lo/RU;->h:Lo/Cipher;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_11
    if-eqz p1, :cond_12

    :goto_9
    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 372
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 373
    iget-object v1, p0, Lo/RU;->a:Lo/AEADBadTagException;

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

    .line 374
    iget-object v1, p0, Lo/RU;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    iget-object v1, p0, Lo/RU;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 376
    iget-object v1, p0, Lo/RU;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 377
    iget-object v1, p0, Lo/RU;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 378
    iget-object v1, p0, Lo/RU;->h:Lo/Cipher;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileViewModel_{avatar_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RU;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RU;->h:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
