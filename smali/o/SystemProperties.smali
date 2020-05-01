.class public Lo/SystemProperties;
.super Lo/SystemClock;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SystemClock;",
        "Lo/IntToLongFunction<",
        "Lo/SystemClock$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SystemProperties;",
            "Lo/SystemClock$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SystemProperties;",
            "Lo/SystemClock$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SystemProperties;",
            "Lo/SystemClock$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SystemProperties;",
            "Lo/SystemClock$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/SystemClock;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/SystemProperties;->d(I)Lo/SystemProperties;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lo/SystemProperties;
    .locals 0

    .line 130
    invoke-virtual {p0}, Lo/SystemProperties;->i()V

    .line 131
    invoke-super {p0, p1}, Lo/SystemClock;->d(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public a(Z)Lo/SystemProperties;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lo/SystemProperties;->i()V

    .line 163
    invoke-super {p0, p1}, Lo/SystemClock;->c(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/SystemProperties;->b(Lo/Consumer;Lo/SystemClock$TaskDescription;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/SystemProperties;->d(J)Lo/SystemProperties;

    move-result-object p1

    return-object p1
.end method

.method public b(F)Lo/SystemProperties;
    .locals 0

    .line 152
    invoke-virtual {p0}, Lo/SystemProperties;->i()V

    .line 153
    invoke-super {p0, p1}, Lo/SystemClock;->e(F)V

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/SystemProperties;
    .locals 0

    .line 186
    invoke-virtual {p0}, Lo/SystemProperties;->i()V

    .line 187
    invoke-super {p0, p1}, Lo/SystemClock;->e(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/SystemProperties;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lo/SystemProperties;->i()V

    .line 142
    iput-object p1, p0, Lo/SystemClock;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/SystemProperties;
    .locals 0

    .line 267
    invoke-super {p0, p1}, Lo/SystemClock;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/SystemProperties;->d(ILo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/SystemProperties;->e(Lo/SystemClock$TaskDescription;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/SystemClock$TaskDescription;I)V
    .locals 0

    return-void
.end method

.method public b(Lo/SystemClock$TaskDescription;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lo/SystemClock;->e(Lo/TimeUnit;)V

    .line 67
    iget-object v0, p0, Lo/SystemProperties;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/SystemProperties;->d(Ljava/lang/CharSequence;)Lo/SystemProperties;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/SystemProperties;->b(Lo/BiConsumer$Activity;)Lo/SystemProperties;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View$OnClickListener;)Lo/SystemProperties;
    .locals 0

    .line 211
    invoke-virtual {p0}, Lo/SystemProperties;->i()V

    .line 212
    invoke-super {p0, p1}, Lo/SystemClock;->d(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/SystemClock$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SystemProperties;->e(FFIILo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/SystemProperties;->d(ILo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1}, Lo/SystemProperties;->b(Lo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public d(I)Lo/SystemProperties;
    .locals 0

    .line 260
    invoke-super {p0, p1}, Lo/SystemClock;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(J)Lo/SystemProperties;
    .locals 0

    .line 223
    invoke-super {p0, p1, p2}, Lo/SystemClock;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/SystemProperties;
    .locals 0

    .line 241
    invoke-super {p0, p1}, Lo/SystemClock;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/SystemClock$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SystemProperties;->e(FFIILo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public d(ILo/SystemClock$TaskDescription;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/SystemProperties;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SystemClock;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public e(FFIILo/SystemClock$TaskDescription;)V
    .locals 7

    .line 110
    iget-object v0, p0, Lo/SystemProperties;->j:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/SystemClock;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public e(Lo/SystemClock$TaskDescription;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/SystemProperties;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/SystemClock$TaskDescription;

    invoke-virtual {p0, p1}, Lo/SystemProperties;->b(Lo/SystemClock$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 310
    :cond_0
    instance-of v1, p1, Lo/SystemProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 313
    :cond_1
    invoke-super {p0, p1}, Lo/SystemClock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 316
    :cond_2
    check-cast p1, Lo/SystemProperties;

    .line 317
    iget-object v1, p0, Lo/SystemProperties;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SystemProperties;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 320
    :cond_5
    iget-object v1, p0, Lo/SystemProperties;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SystemProperties;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 323
    :cond_8
    iget-object v1, p0, Lo/SystemProperties;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SystemProperties;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 326
    :cond_b
    iget-object v1, p0, Lo/SystemProperties;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SystemProperties;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 329
    :cond_e
    invoke-virtual {p0}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 332
    :cond_10
    iget-object v1, p0, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 335
    :cond_12
    invoke-virtual {p1}, Lo/SystemProperties;->o()F

    move-result v1

    invoke-virtual {p0}, Lo/SystemProperties;->o()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    .line 338
    :cond_13
    invoke-virtual {p0}, Lo/SystemProperties;->m()Z

    move-result v1

    invoke-virtual {p1}, Lo/SystemProperties;->m()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    .line 341
    :cond_14
    invoke-virtual {p0}, Lo/SystemProperties;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lo/SystemProperties;->k()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_17

    return v2

    .line 344
    :cond_17
    invoke-virtual {p0}, Lo/SystemProperties;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_c

    :cond_18
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p1}, Lo/SystemProperties;->l()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_d

    :cond_19
    const/4 p1, 0x0

    :goto_d
    if-eq v1, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 352
    invoke-super {p0}, Lo/SystemClock;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-object v1, p0, Lo/SystemProperties;->b:Lo/AEADBadTagException;

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

    .line 354
    iget-object v1, p0, Lo/SystemProperties;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    iget-object v1, p0, Lo/SystemProperties;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v1, p0, Lo/SystemProperties;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    invoke-virtual {p0}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 358
    iget-object v1, p0, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 359
    invoke-virtual {p0}, Lo/SystemProperties;->o()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/SystemProperties;->o()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 360
    invoke-virtual {p0}, Lo/SystemProperties;->m()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 361
    invoke-virtual {p0}, Lo/SystemProperties;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 362
    invoke-virtual {p0}, Lo/SystemProperties;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuItemModel_{icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lo/SystemProperties;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SystemProperties;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0}, Lo/SystemProperties;->o()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progressVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Lo/SystemProperties;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Lo/SystemProperties;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outsideClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p0}, Lo/SystemProperties;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-super {p0}, Lo/SystemClock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
