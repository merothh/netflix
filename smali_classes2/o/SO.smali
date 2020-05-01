.class public Lo/SO;
.super Lo/SJ;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SJ;",
        "Lo/IntToLongFunction<",
        "Lo/SJ$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SO;",
            "Lo/SJ$Application;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SO;",
            "Lo/SJ$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SO;",
            "Lo/SJ$Application;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SO;",
            "Lo/SJ$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/SJ;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SO;->f(I)Lo/SO;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View$OnClickListener;)Lo/SO;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lo/SO;->i()V

    .line 164
    invoke-super {p0, p1}, Lo/SJ;->c(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/SO;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lo/SJ;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/SO;
    .locals 0

    .line 220
    invoke-super {p0, p1}, Lo/SJ;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/SJ$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/SO;->a(Lo/Consumer;Lo/SJ$Application;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/SJ$Application;I)V
    .locals 0

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/SO;->d(J)Lo/SO;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/SO;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lo/SO;->i()V

    .line 140
    invoke-super {p0, p1}, Lo/SJ;->d(I)V

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/SJ$Application;

    invoke-virtual {p0, p1, p2}, Lo/SO;->d(ILo/SJ$Application;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/SJ$Application;

    invoke-virtual {p0, p1, p2}, Lo/SO;->c(Lo/SJ$Application;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SO;->a(Ljava/lang/CharSequence;)Lo/SO;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SO;->a(Lo/BiConsumer$Activity;)Lo/SO;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/SJ$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SO;->d(FFIILo/SJ$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/SJ$Application;

    invoke-virtual {p0, p1, p2}, Lo/SO;->d(ILo/SJ$Application;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/SJ$Application;

    invoke-virtual {p0, p1}, Lo/SO;->c(Lo/SJ$Application;)V

    return-void
.end method

.method public c(Lo/SJ$Application;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/SJ;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/SO;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lo/SJ$Application;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/SO;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public d(J)Lo/SO;
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lo/SJ;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p5, Lo/SJ$Application;

    invoke-virtual/range {p0 .. p5}, Lo/SO;->d(FFIILo/SJ$Application;)V

    return-void
.end method

.method public d(FFIILo/SJ$Application;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/SO;->g:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/SJ;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(ILo/SJ$Application;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/SO;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SJ;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public e(I)Lo/SO;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/SO;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/SJ;->c(I)V

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/SJ$Application;

    invoke-virtual {p0, p1}, Lo/SO;->c(Lo/SJ$Application;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 265
    :cond_0
    instance-of v1, p1, Lo/SO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 268
    :cond_1
    invoke-super {p0, p1}, Lo/SJ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 271
    :cond_2
    check-cast p1, Lo/SO;

    .line 272
    iget-object v1, p0, Lo/SO;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SO;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 275
    :cond_5
    iget-object v1, p0, Lo/SO;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SO;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 278
    :cond_8
    iget-object v1, p0, Lo/SO;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SO;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 281
    :cond_b
    iget-object v1, p0, Lo/SO;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SO;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 284
    :cond_e
    invoke-virtual {p0}, Lo/SO;->h()I

    move-result v1

    invoke-virtual {p1}, Lo/SO;->h()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 287
    :cond_f
    invoke-virtual {p0}, Lo/SO;->k()I

    move-result v1

    invoke-virtual {p1}, Lo/SO;->k()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 290
    :cond_10
    invoke-virtual {p0}, Lo/SO;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/SO;->o()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_9

    :cond_12
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public f(I)Lo/SO;
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lo/SJ;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 298
    invoke-super {p0}, Lo/SJ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 299
    iget-object v1, p0, Lo/SO;->c:Lo/AEADBadTagException;

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

    .line 300
    iget-object v1, p0, Lo/SO;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    iget-object v1, p0, Lo/SO;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 302
    iget-object v1, p0, Lo/SO;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    invoke-virtual {p0}, Lo/SO;->h()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    invoke-virtual {p0}, Lo/SO;->k()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    invoke-virtual {p0}, Lo/SO;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method protected m()Lo/SJ$Application;
    .locals 1

    .line 244
    new-instance v0, Lo/SJ$Application;

    invoke-direct {v0}, Lo/SJ$Application;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/SO;->m()Lo/SJ$Application;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatsEmptyStateModel_{episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Lo/SO;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", movieCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lo/SO;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lo/SO;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-super {p0}, Lo/SJ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
