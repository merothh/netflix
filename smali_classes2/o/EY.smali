.class public Lo/EY;
.super Lo/EZ;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/EZ;",
        "Lo/IntToLongFunction<",
        "Lo/EZ$StateListAnimator;",
        ">;",
        "Lo/Fa;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/EY;",
            "Lo/EZ$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/EY;",
            "Lo/EZ$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/EY;",
            "Lo/EZ$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/EY;",
            "Lo/EZ$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/EZ;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->d(I)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/EY;
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Lo/EZ;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Z)Lo/Fa;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->d(Z)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/EZ$StateListAnimator;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/EY;->a:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lo/EZ;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/EY;->e(Lo/Consumer;Lo/EZ$StateListAnimator;I)V

    return-void
.end method

.method public a(Lo/EZ$StateListAnimator;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/EY;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/EY;->a(J)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/view/View$OnClickListener;)Lo/Fa;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->e(Landroid/view/View$OnClickListener;)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/Fa;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->i(Ljava/lang/CharSequence;)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/EY;->a(ILo/EZ$StateListAnimator;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/EY;->a(Lo/EZ$StateListAnimator;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->i(Ljava/lang/CharSequence;)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->e(Lo/BiConsumer$Activity;)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/EZ$StateListAnimator;)V
    .locals 7

    .line 111
    iget-object v0, p0, Lo/EY;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 112
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 114
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/EZ;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p5, Lo/EZ$StateListAnimator;

    invoke-virtual/range {p0 .. p5}, Lo/EY;->c(FFIILo/EZ$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/EY;->a(ILo/EZ$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/EY;->d(Lo/EZ$StateListAnimator;)V

    return-void
.end method

.method public d(I)Lo/EY;
    .locals 0

    .line 220
    invoke-super {p0, p1}, Lo/EZ;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/EY;
    .locals 0

    .line 131
    invoke-virtual {p0}, Lo/EY;->i()V

    .line 132
    invoke-super {p0, p1}, Lo/EZ;->a(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public d(Z)Lo/EY;
    .locals 0

    .line 142
    invoke-virtual {p0}, Lo/EY;->i()V

    .line 143
    invoke-super {p0, p1}, Lo/EZ;->c(Z)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/EZ$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/EY;->c(FFIILo/EZ$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/EZ$StateListAnimator;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/EZ;->e(Lo/TimeUnit;)V

    .line 66
    iget-object v0, p0, Lo/EY;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)Lo/EY;
    .locals 0

    .line 167
    invoke-virtual {p0}, Lo/EY;->i()V

    .line 168
    invoke-super {p0, p1}, Lo/EZ;->d(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/EY;
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lo/EZ;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/Fa;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/EY;->d(Ljava/lang/CharSequence;)Lo/EY;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/Consumer;Lo/EZ$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/EZ$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/EY;->d(Lo/EZ$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Lo/EY;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 270
    :cond_1
    invoke-super {p0, p1}, Lo/EZ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 273
    :cond_2
    check-cast p1, Lo/EY;

    .line 274
    iget-object v1, p0, Lo/EY;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/EY;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 277
    :cond_5
    iget-object v1, p0, Lo/EY;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/EY;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 280
    :cond_8
    iget-object v1, p0, Lo/EY;->a:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/EY;->a:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 283
    :cond_b
    iget-object v1, p0, Lo/EY;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/EY;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 286
    :cond_e
    invoke-virtual {p0}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 289
    :cond_10
    invoke-virtual {p0}, Lo/EY;->o()Z

    move-result v1

    invoke-virtual {p1}, Lo/EY;->o()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 292
    :cond_11
    invoke-virtual {p0}, Lo/EY;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lo/EY;->k()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_a

    :cond_13
    const/4 p1, 0x0

    :goto_a
    if-eq v1, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 300
    invoke-super {p0}, Lo/EZ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    iget-object v1, p0, Lo/EY;->c:Lo/AEADBadTagException;

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

    .line 302
    iget-object v1, p0, Lo/EY;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    iget-object v1, p0, Lo/EY;->a:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    iget-object v1, p0, Lo/EY;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    invoke-virtual {p0}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    invoke-virtual {p0}, Lo/EY;->o()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    invoke-virtual {p0}, Lo/EY;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public i(Ljava/lang/CharSequence;)Lo/EY;
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lo/EZ;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportedMediaTracksDialogSubheaderModel_{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lo/EY;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showCloseButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lo/EY;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", closeClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lo/EY;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-super {p0}, Lo/EZ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
