.class public Lo/Ps;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/Pu;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/Pu;",
        ">;",
        "Lo/Pt;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Ps;",
            "Lo/Pu;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Ps;",
            "Lo/Pu;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View$OnClickListener;

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Ps;",
            "Lo/Pu;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/CharSequence;

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Ps;",
            "Lo/Pu;",
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

    iput-object v0, p0, Lo/Ps;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 45
    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->b(Landroid/view/ViewGroup;)Lo/Pu;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->b(I)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/Pt;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->d(Ljava/lang/CharSequence;)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/Pu;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lo/Ps;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/Pu;

    invoke-virtual {p0, p1, p2, p3}, Lo/Ps;->d(Lo/Consumer;Lo/Pu;I)V

    return-void
.end method

.method public a(Lo/Pu;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/Ps;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected b()I
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/Ps;->d(J)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Ps;
    .locals 1

    .line 268
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/Ps;
    .locals 2

    .line 217
    iget-object v0, p0, Lo/Ps;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 218
    invoke-virtual {p0}, Lo/Ps;->i()V

    .line 219
    iput-object p1, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/Ps;
    .locals 2

    .line 184
    iget-object v0, p0, Lo/Ps;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 185
    invoke-virtual {p0}, Lo/Ps;->i()V

    .line 186
    iput-object p1, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected b(Landroid/view/ViewGroup;)Lo/Pu;
    .locals 3

    .line 55
    new-instance v0, Lo/Pu;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/Pu;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/Pu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public b(FFIILo/Pu;)V
    .locals 7

    .line 159
    iget-object v0, p0, Lo/Ps;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 160
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 162
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/Pu;

    invoke-virtual {p0, p1, p2}, Lo/Ps;->a(ILo/Pu;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/Pu;

    invoke-virtual {p0, p1, p2}, Lo/Ps;->a(Lo/Pu;I)V

    return-void
.end method

.method public b(Lo/Pu;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/Pu;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/Pu;->setButtonView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Lo/Pu;Lo/BiConsumer;)V
    .locals 4

    .line 74
    instance-of v0, p2, Lo/Ps;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lo/Ps;->b(Lo/Pu;)V

    return-void

    .line 78
    :cond_0
    check-cast p2, Lo/Ps;

    .line 79
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_3

    .line 82
    iget-object v0, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/Pu;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_3
    iget-object v0, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    iget-object p2, p2, Lo/Ps;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 86
    :goto_2
    iget-object p2, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/Pu;->setButtonView(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->d(Ljava/lang/CharSequence;)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->e(Lo/BiConsumer$Activity;)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/Pu;

    invoke-virtual {p0, p1}, Lo/Ps;->c(Lo/Pu;)V

    return-void
.end method

.method public c(Lo/Pu;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lo/Ps;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 117
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/Pu;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(J)Lo/Ps;
    .locals 0

    .line 230
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Ps;
    .locals 0

    .line 248
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(Landroid/view/View$OnClickListener;)Lo/Pt;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->b(Landroid/view/View$OnClickListener;)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/Pu;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Ps;->b(FFIILo/Pu;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/Pu;

    invoke-virtual {p0, p1}, Lo/Ps;->b(Lo/Pu;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Pu;I)V
    .locals 0

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

.method public e(Lo/BiConsumer$Activity;)Lo/Ps;
    .locals 0

    .line 274
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/Pt;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Ps;->b(Ljava/lang/CharSequence;)Lo/Ps;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 27
    check-cast p1, Lo/Pu;

    invoke-virtual {p0, p1, p2}, Lo/Ps;->b(Lo/Pu;Lo/BiConsumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 320
    :cond_0
    instance-of v1, p1, Lo/Ps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 323
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 326
    :cond_2
    check-cast p1, Lo/Ps;

    .line 327
    iget-object v1, p0, Lo/Ps;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Ps;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 330
    :cond_5
    iget-object v1, p0, Lo/Ps;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Ps;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 333
    :cond_8
    iget-object v1, p0, Lo/Ps;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Ps;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 336
    :cond_b
    iget-object v1, p0, Lo/Ps;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Ps;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 339
    :cond_e
    iget-object v1, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/Ps;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/Ps;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 342
    :cond_10
    iget-object v1, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    iget-object p1, p1, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_a

    :cond_12
    const/4 p1, 0x0

    :goto_a
    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 350
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 351
    iget-object v1, p0, Lo/Ps;->c:Lo/AEADBadTagException;

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

    .line 352
    iget-object v1, p0, Lo/Ps;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-object v1, p0, Lo/Ps;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 354
    iget-object v1, p0, Lo/Ps;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    iget-object v1, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v1, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiTitleCallToActionViewV2Model_{buttonView_CharSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Ps;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonClickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Ps;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
