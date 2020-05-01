.class public Lo/QT;
.super Lo/QR;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QR;",
        "Lo/IntToLongFunction<",
        "Lo/QR$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/QT;",
            "Lo/QR$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/QT;",
            "Lo/QR$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/QT;",
            "Lo/QR$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/QT;",
            "Lo/QR$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/QR;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/QT;->d(I)Lo/QT;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/QT;
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Lo/QR;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/QT;
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lo/QR;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/QR$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/QT;->d(Lo/Consumer;Lo/QR$Activity;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/QT;->a(J)Lo/QT;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/QT;
    .locals 0

    .line 130
    invoke-virtual {p0}, Lo/QT;->i()V

    .line 131
    iput-object p1, p0, Lo/QR;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/QR$Activity;

    invoke-virtual {p0, p1, p2}, Lo/QT;->d(ILo/QR$Activity;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/QR$Activity;

    invoke-virtual {p0, p1, p2}, Lo/QT;->b(Lo/QR$Activity;I)V

    return-void
.end method

.method public b(Lo/QR$Activity;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/QT;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/QT;->a(Ljava/lang/CharSequence;)Lo/QT;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/QT;->e(Lo/BiConsumer$Activity;)Lo/QT;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View$OnClickListener;)Lo/QT;
    .locals 0

    .line 155
    invoke-virtual {p0}, Lo/QT;->i()V

    .line 156
    invoke-super {p0, p1}, Lo/QR;->b(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/QR$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/QT;->d(FFIILo/QR$Activity;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/QR$Activity;

    invoke-virtual {p0, p1, p2}, Lo/QT;->d(ILo/QR$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/QR$Activity;

    invoke-virtual {p0, p1}, Lo/QT;->e(Lo/QR$Activity;)V

    return-void
.end method

.method public d(I)Lo/QT;
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lo/QR;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p5, Lo/QR$Activity;

    invoke-virtual/range {p0 .. p5}, Lo/QT;->d(FFIILo/QR$Activity;)V

    return-void
.end method

.method public d(FFIILo/QR$Activity;)V
    .locals 7

    .line 110
    iget-object v0, p0, Lo/QT;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 111
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 113
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/QR;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(ILo/QR$Activity;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/QT;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lo/QR;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/QR$Activity;I)V
    .locals 0

    return-void
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/QT;
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lo/QR;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/QR$Activity;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/QR;->e(Lo/TimeUnit;)V

    .line 66
    iget-object v0, p0, Lo/QT;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/QR$Activity;

    invoke-virtual {p0, p1}, Lo/QT;->e(Lo/QR$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 255
    :cond_0
    instance-of v1, p1, Lo/QT;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 258
    :cond_1
    invoke-super {p0, p1}, Lo/QR;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 261
    :cond_2
    check-cast p1, Lo/QT;

    .line 262
    iget-object v1, p0, Lo/QT;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/QT;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 265
    :cond_5
    iget-object v1, p0, Lo/QT;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/QT;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 268
    :cond_8
    iget-object v1, p0, Lo/QT;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/QT;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 271
    :cond_b
    iget-object v1, p0, Lo/QT;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/QT;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 274
    :cond_e
    iget-object v1, p0, Lo/QT;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/QT;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/QT;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/QT;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 277
    :cond_10
    invoke-virtual {p0}, Lo/QT;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lo/QT;->h()Landroid/view/View$OnClickListener;

    move-result-object p1

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

    .line 285
    invoke-super {p0}, Lo/QR;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    iget-object v1, p0, Lo/QT;->c:Lo/AEADBadTagException;

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

    .line 287
    iget-object v1, p0, Lo/QT;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 288
    iget-object v1, p0, Lo/QT;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 289
    iget-object v1, p0, Lo/QT;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 290
    iget-object v1, p0, Lo/QT;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/QT;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 291
    invoke-virtual {p0}, Lo/QT;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method protected l()Lo/QR$Activity;
    .locals 1

    .line 235
    new-instance v0, Lo/QR$Activity;

    invoke-direct {v0}, Lo/QR$Activity;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/QT;->l()Lo/QR$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FindMoreButtonModel_{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QT;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lo/QT;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-super {p0}, Lo/QR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
