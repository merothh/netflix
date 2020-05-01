.class public Lo/PJ;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/PM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/PH;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/PH;",
        ">;",
        "Lo/PM;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/PJ;",
            "Lo/PH;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/PJ;",
            "Lo/PH;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/Cipher;

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/PJ;",
            "Lo/PH;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/PJ;",
            "Lo/PH;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 29
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/PJ;->a:Ljava/util/BitSet;

    .line 41
    new-instance v0, Lo/Cipher;

    invoke-direct {v0}, Lo/Cipher;-><init>()V

    iput-object v0, p0, Lo/PJ;->i:Lo/Cipher;

    .line 45
    new-instance v0, Lo/Cipher;

    invoke-direct {v0}, Lo/Cipher;-><init>()V

    iput-object v0, p0, Lo/PJ;->f:Lo/Cipher;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->e(Landroid/view/ViewGroup;)Lo/PH;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->b(I)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/PJ;
    .locals 0

    .line 298
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/PM;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->d(Ljava/lang/CharSequence;)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/PH;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/PJ;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p2, Lo/PH;

    invoke-virtual {p0, p1, p2, p3}, Lo/PJ;->e(Lo/Consumer;Lo/PH;I)V

    return-void
.end method

.method protected b()I
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lo/PJ;->a(J)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/PJ;
    .locals 1

    .line 335
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/PJ;
    .locals 0

    .line 341
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/PM;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->j(Ljava/lang/CharSequence;)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lo/PH;

    invoke-virtual {p0, p1, p2}, Lo/PJ;->a(ILo/PH;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p1, Lo/PH;

    invoke-virtual {p0, p1, p2}, Lo/PJ;->b(Lo/PH;I)V

    return-void
.end method

.method public b(Lo/PH;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/PJ;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->j(Ljava/lang/CharSequence;)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->b(Lo/BiConsumer$Activity;)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/PH;

    invoke-virtual {p0, p1}, Lo/PJ;->e(Lo/PH;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/PJ;
    .locals 2

    .line 186
    invoke-virtual {p0}, Lo/PJ;->i()V

    .line 187
    iget-object v0, p0, Lo/PJ;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 188
    iget-object v0, p0, Lo/PJ;->i:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 28
    move-object v5, p5

    check-cast v5, Lo/PH;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/PJ;->e(FFIILo/PH;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lo/PH;

    invoke-virtual {p0, p1}, Lo/PJ;->d(Lo/PH;)V

    return-void
.end method

.method public d(Lo/PH;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lo/PJ;->f:Lo/Cipher;

    invoke-virtual {p1}, Lo/PH;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PH;->setBodyView(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lo/PJ;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/PH;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PH;->setTitleView(Ljava/lang/CharSequence;)V

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

.method protected e(Landroid/view/ViewGroup;)Lo/PH;
    .locals 3

    .line 54
    new-instance v0, Lo/PH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/PH;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/PH;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/PM;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lo/PJ;->g(Ljava/lang/CharSequence;)Lo/PJ;

    move-result-object p1

    return-object p1
.end method

.method public e(FFIILo/PH;)V
    .locals 7

    .line 157
    iget-object v0, p0, Lo/PJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 158
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 160
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 28
    check-cast p1, Lo/PH;

    invoke-virtual {p0, p1, p2}, Lo/PJ;->e(Lo/PH;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/Consumer;Lo/PH;I)V
    .locals 0

    return-void
.end method

.method public e(Lo/PH;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lo/PJ;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lo/PH;Lo/BiConsumer;)V
    .locals 2

    .line 73
    instance-of v0, p2, Lo/PJ;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lo/PJ;->d(Lo/PH;)V

    return-void

    .line 77
    :cond_0
    check-cast p2, Lo/PJ;

    .line 78
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lo/PJ;->f:Lo/Cipher;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lo/PJ;->f:Lo/Cipher;

    invoke-virtual {v0, v1}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lo/PJ;->f:Lo/Cipher;

    if-eqz v0, :cond_2

    .line 81
    :goto_0
    iget-object v0, p0, Lo/PJ;->f:Lo/Cipher;

    invoke-virtual {p1}, Lo/PH;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PH;->setBodyView(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lo/PJ;->i:Lo/Cipher;

    iget-object p2, p2, Lo/PJ;->i:Lo/Cipher;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 85
    :goto_1
    iget-object p2, p0, Lo/PJ;->i:Lo/Cipher;

    invoke-virtual {p1}, Lo/PH;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/Cipher;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/PH;->setTitleView(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 387
    :cond_0
    instance-of v1, p1, Lo/PJ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 390
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 393
    :cond_2
    check-cast p1, Lo/PJ;

    .line 394
    iget-object v1, p0, Lo/PJ;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/PJ;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 397
    :cond_5
    iget-object v1, p0, Lo/PJ;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/PJ;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 400
    :cond_8
    iget-object v1, p0, Lo/PJ;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/PJ;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 403
    :cond_b
    iget-object v1, p0, Lo/PJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/PJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 406
    :cond_e
    iget-object v1, p0, Lo/PJ;->i:Lo/Cipher;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/PJ;->i:Lo/Cipher;

    invoke-virtual {v1, v3}, Lo/Cipher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/PJ;->i:Lo/Cipher;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 409
    :cond_10
    iget-object v1, p0, Lo/PJ;->f:Lo/Cipher;

    iget-object p1, p1, Lo/PJ;->f:Lo/Cipher;

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

.method public g(Ljava/lang/CharSequence;)Lo/PJ;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lo/PJ;->i()V

    .line 247
    iget-object v0, p0, Lo/PJ;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 248
    iget-object v0, p0, Lo/PJ;->f:Lo/Cipher;

    invoke-virtual {v0, p1}, Lo/Cipher;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 417
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 418
    iget-object v1, p0, Lo/PJ;->c:Lo/AEADBadTagException;

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

    .line 419
    iget-object v1, p0, Lo/PJ;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 420
    iget-object v1, p0, Lo/PJ;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 421
    iget-object v1, p0, Lo/PJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 422
    iget-object v1, p0, Lo/PJ;->i:Lo/Cipher;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 423
    iget-object v1, p0, Lo/PJ;->f:Lo/Cipher;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/Cipher;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method public j(Ljava/lang/CharSequence;)Lo/PJ;
    .locals 0

    .line 316
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiTitleNotificationHeadlineViewV2Model_{titleView_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PJ;->i:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyView_StringAttributeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PJ;->f:Lo/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
