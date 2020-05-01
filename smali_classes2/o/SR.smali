.class public Lo/SR;
.super Lo/ST;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ST;",
        "Lo/IntToLongFunction<",
        "Lo/SV$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SR;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SR;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SR;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SR;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/ST;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SR;->f(I)Lo/SR;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/SV$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/SR;->b(Lo/Consumer;Lo/SV$Application;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/SR;->c(J)Lo/SR;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/SR;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lo/SR;->i()V

    .line 140
    invoke-super {p0, p1}, Lo/ST;->d(I)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/SR;
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lo/ST;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Z)Lo/SR;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lo/SR;->i()V

    .line 150
    invoke-super {p0, p1}, Lo/ST;->e(Z)V

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/SV$Application;

    invoke-virtual {p0, p1, p2}, Lo/SR;->d(ILo/SV$Application;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1, p2}, Lo/SR;->e(Lo/SV$Application;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/SV$Application;I)V
    .locals 0

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SR;->b(Ljava/lang/CharSequence;)Lo/SR;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SR;->e(Lo/BiConsumer$Activity;)Lo/SR;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/SR;
    .locals 0

    .line 186
    invoke-super {p0, p1, p2}, Lo/ST;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/SV$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SR;->e(FFIILo/SV$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/SV$Application;

    invoke-virtual {p0, p1, p2}, Lo/SR;->d(ILo/SV$Application;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1}, Lo/SR;->e(Lo/SV$Application;)V

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)Lo/SR;
    .locals 0

    .line 174
    invoke-virtual {p0}, Lo/SR;->i()V

    .line 175
    invoke-super {p0, p1}, Lo/ST;->a(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/SV$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SR;->e(FFIILo/SV$Application;)V

    return-void
.end method

.method public d(ILo/SV$Application;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/SR;->c:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ST;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public e(I)Lo/SR;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/SR;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/ST;->c(I)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/SR;
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lo/ST;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(FFIILo/SV$Application;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/SR;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 110
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 112
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/ST;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public e(Lo/SV$Application;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/ST;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/SR;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lo/SV$Application;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/SR;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1}, Lo/SR;->e(Lo/SV$Application;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 276
    :cond_0
    instance-of v1, p1, Lo/SR;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 279
    :cond_1
    invoke-super {p0, p1}, Lo/ST;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 282
    :cond_2
    check-cast p1, Lo/SR;

    .line 283
    iget-object v1, p0, Lo/SR;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SR;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 286
    :cond_5
    iget-object v1, p0, Lo/SR;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SR;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 289
    :cond_8
    iget-object v1, p0, Lo/SR;->c:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SR;->c:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 292
    :cond_b
    iget-object v1, p0, Lo/SR;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SR;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 295
    :cond_e
    invoke-virtual {p0}, Lo/SR;->h()I

    move-result v1

    invoke-virtual {p1}, Lo/SR;->h()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 298
    :cond_f
    invoke-virtual {p0}, Lo/SR;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/SR;->l()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 301
    :cond_10
    invoke-virtual {p0}, Lo/SR;->m()Z

    move-result v1

    invoke-virtual {p1}, Lo/SR;->m()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 304
    :cond_11
    invoke-virtual {p0}, Lo/SR;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/SR;->o()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_9

    :cond_13
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public f(I)Lo/SR;
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lo/ST;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 312
    invoke-super {p0}, Lo/ST;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 313
    iget-object v1, p0, Lo/SR;->a:Lo/AEADBadTagException;

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

    .line 314
    iget-object v1, p0, Lo/SR;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 315
    iget-object v1, p0, Lo/SR;->c:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    iget-object v1, p0, Lo/SR;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 317
    invoke-virtual {p0}, Lo/SR;->h()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    invoke-virtual {p0}, Lo/SR;->l()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    invoke-virtual {p0}, Lo/SR;->m()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    invoke-virtual {p0}, Lo/SR;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method protected k()Lo/SV$Application;
    .locals 1

    .line 254
    new-instance v0, Lo/SV$Application;

    invoke-direct {v0}, Lo/SV$Application;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/SR;->k()Lo/SV$Application;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatsMoreModelBig_{episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lo/SR;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", movieCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0}, Lo/SR;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inSelectionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0}, Lo/SR;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ctaClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Lo/SR;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-super {p0}, Lo/ST;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
