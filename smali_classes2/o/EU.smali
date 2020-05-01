.class public Lo/EU;
.super Lo/ET;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/EV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ET;",
        "Lo/IntToLongFunction<",
        "Lo/ET$Application;",
        ">;",
        "Lo/EV;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/EU;",
            "Lo/ET$Application;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/EU;",
            "Lo/ET$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/EU;",
            "Lo/ET$Application;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/EU;",
            "Lo/ET$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/ET;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->c(I)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/EU;
    .locals 0

    .line 193
    invoke-super {p0, p1, p2}, Lo/ET;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)Lo/EV;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->b(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/EV;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->b(Ljava/lang/CharSequence;)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/ET$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/EU;->a(Lo/Consumer;Lo/ET$Application;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/ET$Application;I)V
    .locals 0

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/EU;->a(J)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)Lo/EU;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lo/EU;->i()V

    .line 146
    invoke-super {p0, p1}, Lo/ET;->e(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/EU;
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lo/ET;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(Z)Lo/EV;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->c(Z)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/ET$Application;

    invoke-virtual {p0, p1, p2}, Lo/EU;->d(ILo/ET$Application;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/ET$Application;

    invoke-virtual {p0, p1, p2}, Lo/EU;->b(Lo/ET$Application;I)V

    return-void
.end method

.method public b(Lo/ET$Application;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/EU;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->b(Ljava/lang/CharSequence;)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->e(Lo/BiConsumer$Activity;)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/EU;
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lo/ET;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Z)Lo/EU;
    .locals 0

    .line 182
    invoke-virtual {p0}, Lo/EU;->i()V

    .line 183
    invoke-super {p0, p1}, Lo/ET;->a(Z)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/ET$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/EU;->d(FFIILo/ET$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/ET$Application;

    invoke-virtual {p0, p1, p2}, Lo/EU;->d(ILo/ET$Application;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/ET$Application;

    invoke-virtual {p0, p1}, Lo/EU;->d(Lo/ET$Application;)V

    return-void
.end method

.method public synthetic d(Landroid/view/View$OnClickListener;)Lo/EV;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->e(Landroid/view/View$OnClickListener;)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/CharSequence;)Lo/EV;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/EU;->e(Ljava/lang/CharSequence;)Lo/EU;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p5, Lo/ET$Application;

    invoke-virtual/range {p0 .. p5}, Lo/EU;->d(FFIILo/ET$Application;)V

    return-void
.end method

.method public d(FFIILo/ET$Application;)V
    .locals 7

    .line 113
    iget-object v0, p0, Lo/EU;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 114
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 116
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/ET;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(ILo/ET$Application;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/EU;->a:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ET;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/ET$Application;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lo/ET;->e(Lo/TimeUnit;)V

    .line 68
    iget-object v0, p0, Lo/EU;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)Lo/EU;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lo/EU;->i()V

    .line 172
    invoke-super {p0, p1}, Lo/ET;->b(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/EU;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lo/EU;->i()V

    .line 134
    invoke-super {p0, p1}, Lo/ET;->a_(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/EU;
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lo/ET;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/ET$Application;

    invoke-virtual {p0, p1}, Lo/EU;->d(Lo/ET$Application;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 279
    :cond_0
    instance-of v1, p1, Lo/EU;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 282
    :cond_1
    invoke-super {p0, p1}, Lo/ET;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 285
    :cond_2
    check-cast p1, Lo/EU;

    .line 286
    iget-object v1, p0, Lo/EU;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/EU;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 289
    :cond_5
    iget-object v1, p0, Lo/EU;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/EU;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 292
    :cond_8
    iget-object v1, p0, Lo/EU;->a:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/EU;->a:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 295
    :cond_b
    iget-object v1, p0, Lo/EU;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/EU;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 298
    :cond_e
    invoke-virtual {p0}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 301
    :cond_10
    invoke-virtual {p0}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v1

    invoke-virtual {p1}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 304
    :cond_12
    invoke-virtual {p0}, Lo/EU;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lo/EU;->k()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_15

    return v2

    .line 307
    :cond_15
    invoke-virtual {p0}, Lo/EU;->m()Z

    move-result v1

    invoke-virtual {p1}, Lo/EU;->m()Z

    move-result p1

    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 315
    invoke-super {p0}, Lo/ET;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    iget-object v1, p0, Lo/EU;->c:Lo/AEADBadTagException;

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

    .line 317
    iget-object v1, p0, Lo/EU;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    iget-object v1, p0, Lo/EU;->a:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    iget-object v1, p0, Lo/EU;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    invoke-virtual {p0}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    invoke-virtual {p0}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 322
    invoke-virtual {p0}, Lo/EU;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 323
    invoke-virtual {p0}, Lo/EU;->m()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportedMediaTracksDialogItemModel_{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Lo/EU;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lo/EU;->l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectionListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lo/EU;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Lo/EU;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-super {p0}, Lo/ET;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
