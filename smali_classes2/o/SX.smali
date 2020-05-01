.class public Lo/SX;
.super Lo/SV;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SV;",
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
            "Lo/SX;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SX;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SX;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SX;",
            "Lo/SV$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/SV;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SX;->g(I)Lo/SX;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/SV$Application;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/SX;->c:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SV;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/SV$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/SX;->d(Lo/Consumer;Lo/SV$Application;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/SX;->d(J)Lo/SX;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/SX;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lo/SX;->i()V

    .line 140
    invoke-super {p0, p1}, Lo/SV;->d(I)V

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/SX;
    .locals 0

    .line 173
    invoke-virtual {p0}, Lo/SX;->i()V

    .line 174
    invoke-super {p0, p1}, Lo/SV;->a(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/SX;
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lo/SV;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Z)Lo/SX;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lo/SX;->i()V

    .line 150
    invoke-super {p0, p1}, Lo/SV;->e(Z)V

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/SV$Application;

    invoke-virtual {p0, p1, p2}, Lo/SX;->a(ILo/SV$Application;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1, p2}, Lo/SX;->b(Lo/SV$Application;I)V

    return-void
.end method

.method public b(Lo/SV$Application;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/SX;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SX;->b(Ljava/lang/CharSequence;)Lo/SX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SX;->e(Lo/BiConsumer$Activity;)Lo/SX;

    move-result-object p1

    return-object p1
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

    invoke-virtual/range {v0 .. v5}, Lo/SX;->e(FFIILo/SV$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/SV$Application;

    invoke-virtual {p0, p1, p2}, Lo/SX;->a(ILo/SV$Application;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1}, Lo/SX;->d(Lo/SV$Application;)V

    return-void
.end method

.method public d(J)Lo/SX;
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Lo/SV;->b(J)Lo/BiConsumer;

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

    invoke-virtual/range {v0 .. v5}, Lo/SX;->e(FFIILo/SV$Application;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/SV$Application;I)V
    .locals 0

    return-void
.end method

.method public d(Lo/SV$Application;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/SV;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/SX;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(I)Lo/SX;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/SX;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/SV;->c(I)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/SX;
    .locals 0

    .line 229
    invoke-super {p0, p1}, Lo/SV;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(FFIILo/SV$Application;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/SX;->i:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/SV;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1}, Lo/SX;->d(Lo/SV$Application;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 275
    :cond_0
    instance-of v1, p1, Lo/SX;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 278
    :cond_1
    invoke-super {p0, p1}, Lo/SV;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 281
    :cond_2
    check-cast p1, Lo/SX;

    .line 282
    iget-object v1, p0, Lo/SX;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SX;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 285
    :cond_5
    iget-object v1, p0, Lo/SX;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SX;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 288
    :cond_8
    iget-object v1, p0, Lo/SX;->c:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SX;->c:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 291
    :cond_b
    iget-object v1, p0, Lo/SX;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SX;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 294
    :cond_e
    invoke-virtual {p0}, Lo/SX;->h()I

    move-result v1

    invoke-virtual {p1}, Lo/SX;->h()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 297
    :cond_f
    invoke-virtual {p0}, Lo/SX;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/SX;->l()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 300
    :cond_10
    invoke-virtual {p0}, Lo/SX;->m()Z

    move-result v1

    invoke-virtual {p1}, Lo/SX;->m()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 303
    :cond_11
    invoke-virtual {p0}, Lo/SX;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/SX;->o()Landroid/view/View$OnClickListener;

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

.method public g(I)Lo/SX;
    .locals 0

    .line 222
    invoke-super {p0, p1}, Lo/SV;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 311
    invoke-super {p0}, Lo/SV;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 312
    iget-object v1, p0, Lo/SX;->a:Lo/AEADBadTagException;

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

    .line 313
    iget-object v1, p0, Lo/SX;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 314
    iget-object v1, p0, Lo/SX;->c:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 315
    iget-object v1, p0, Lo/SX;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    invoke-virtual {p0}, Lo/SX;->h()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 317
    invoke-virtual {p0}, Lo/SX;->l()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    invoke-virtual {p0}, Lo/SX;->m()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    invoke-virtual {p0}, Lo/SX;->o()Landroid/view/View$OnClickListener;

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

    .line 253
    new-instance v0, Lo/SV$Application;

    invoke-direct {v0}, Lo/SV$Application;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/SX;->k()Lo/SV$Application;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatsMoreModel_{episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lo/SX;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", movieCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lo/SX;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inSelectionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0}, Lo/SX;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ctaClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0}, Lo/SX;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-super {p0}, Lo/SV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
