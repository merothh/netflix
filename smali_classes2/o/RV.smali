.class public Lo/RV;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/RW;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/RW;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/RV;",
            "Lo/RW;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/RV;",
            "Lo/RW;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/RV;",
            "Lo/RW;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/RV;",
            "Lo/RW;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Lo/Cipher;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 28
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/RV;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lo/RV;->j:I

    .line 44
    new-instance v0, Lo/Cipher;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Lo/Cipher;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo/RV;->i:Lo/Cipher;

    .line 48
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/RV;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RV;->c(Landroid/view/ViewGroup;)Lo/RW;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RV;->e(I)Lo/RV;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/RW;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lo/RV;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/RW;

    invoke-virtual {p0, p1, p2, p3}, Lo/RV;->b(Lo/Consumer;Lo/RW;I)V

    return-void
.end method

.method public a(Lo/RW;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lo/RV;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected b()I
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/RV;->c(J)Lo/RV;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/RV;
    .locals 0

    .line 297
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/RV;
    .locals 2

    .line 266
    iget-object v0, p0, Lo/RV;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 267
    invoke-virtual {p0}, Lo/RV;->i()V

    .line 268
    iput-object p1, p0, Lo/RV;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/RV;
    .locals 0

    .line 322
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/RW;

    invoke-virtual {p0, p1, p2}, Lo/RV;->a(ILo/RW;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/RW;

    invoke-virtual {p0, p1, p2}, Lo/RV;->c(Lo/RW;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/RW;I)V
    .locals 0

    return-void
.end method

.method public b(Lo/RW;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lo/RV;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/RW;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/RW;->setName(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lo/RV;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/RW;->setAvatar(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lo/RV;->j:I

    invoke-virtual {p1, v0}, Lo/RW;->b(I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RV;->b(Ljava/lang/CharSequence;)Lo/RV;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/RV;->b(Lo/BiConsumer$Activity;)Lo/RV;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/RV;
    .locals 2

    .line 190
    iget-object v0, p0, Lo/RV;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 191
    invoke-virtual {p0}, Lo/RV;->i()V

    .line 192
    iput p1, p0, Lo/RV;->j:I

    return-object p0
.end method

.method public c(J)Lo/RV;
    .locals 0

    .line 279
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method protected c(Landroid/view/ViewGroup;)Lo/RW;
    .locals 3

    .line 58
    new-instance v0, Lo/RW;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/RW;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/RW;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/RW;

    invoke-virtual {p0, p1}, Lo/RV;->a(Lo/RW;)V

    return-void
.end method

.method public c(Lo/RW;I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/RV;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public c(Lo/RW;Lo/BiConsumer;)V
    .locals 2

    .line 78
    instance-of v0, p2, Lo/RV;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lo/RV;->b(Lo/RW;)V

    return-void

    .line 82
    :cond_0
    check-cast p2, Lo/RV;

    .line 83
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lo/RV;->i:Lo/Cipher;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/RV;->i:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/RV;->i:Lo/Cipher;

    if-eqz v0, :cond_2

    .line 86
    :goto_0
    iget-object v0, p0, Lo/RV;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/RW;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/RW;->setName(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lo/RV;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p2, Lo/RV;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lo/RV;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 90
    :goto_1
    iget-object v0, p0, Lo/RV;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/RW;->setAvatar(Ljava/lang/String;)V

    .line 93
    :cond_4
    iget v0, p0, Lo/RV;->j:I

    iget p2, p2, Lo/RV;->j:I

    if-eq v0, p2, :cond_5

    .line 94
    invoke-virtual {p1, v0}, Lo/RW;->b(I)V

    :cond_5
    return-void
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p5, Lo/RW;

    invoke-virtual/range {p0 .. p5}, Lo/RV;->d(FFIILo/RW;)V

    return-void
.end method

.method public d(FFIILo/RW;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lo/RV;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 166
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 168
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/RW;

    invoke-virtual {p0, p1}, Lo/RV;->b(Lo/RW;)V

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

.method public e(I)Lo/RV;
    .locals 1

    .line 316
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/CharSequence;)Lo/RV;
    .locals 2

    .line 211
    invoke-virtual {p0}, Lo/RV;->i()V

    .line 212
    iget-object v0, p0, Lo/RV;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 213
    iget-object v0, p0, Lo/RV;->i:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 27
    check-cast p1, Lo/RW;

    invoke-virtual {p0, p1, p2}, Lo/RV;->c(Lo/RW;Lo/BiConsumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 369
    :cond_0
    instance-of v1, p1, Lo/RV;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 372
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 375
    :cond_2
    check-cast p1, Lo/RV;

    .line 376
    iget-object v1, p0, Lo/RV;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/RV;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 379
    :cond_5
    iget-object v1, p0, Lo/RV;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/RV;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 382
    :cond_8
    iget-object v1, p0, Lo/RV;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/RV;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 385
    :cond_b
    iget-object v1, p0, Lo/RV;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/RV;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 388
    :cond_e
    iget v1, p0, Lo/RV;->j:I

    iget v3, p1, Lo/RV;->j:I

    if-eq v1, v3, :cond_f

    return v2

    .line 391
    :cond_f
    iget-object v1, p0, Lo/RV;->i:Lo/Cipher;

    if-eqz v1, :cond_10

    iget-object v3, p1, Lo/RV;->i:Lo/Cipher;

    invoke-virtual {v1, v3}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    iget-object v1, p1, Lo/RV;->i:Lo/Cipher;

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 394
    :cond_11
    iget-object v1, p0, Lo/RV;->h:Ljava/lang/String;

    iget-object p1, p1, Lo/RV;->h:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_9

    :cond_12
    if-eqz p1, :cond_13

    :goto_9
    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 402
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 403
    iget-object v1, p0, Lo/RV;->c:Lo/AEADBadTagException;

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

    .line 404
    iget-object v1, p0, Lo/RV;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 405
    iget-object v1, p0, Lo/RV;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 406
    iget-object v1, p0, Lo/RV;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 407
    iget v1, p0, Lo/RV;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 408
    iget-object v1, p0, Lo/RV;->i:Lo/Cipher;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 409
    iget-object v1, p0, Lo/RV;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileView_Ab12176Model_{position_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/RV;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RV;->i:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RV;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
