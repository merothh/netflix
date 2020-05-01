.class public Lo/TestLooperManager;
.super Lo/Trace;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Trace;",
        "Lo/IntToLongFunction<",
        "Lo/Trace$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/TestLooperManager;",
            "Lo/Trace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/TestLooperManager;",
            "Lo/Trace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/TestLooperManager;",
            "Lo/Trace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/TestLooperManager;",
            "Lo/Trace$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Trace;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/TestLooperManager;->b(I)Lo/TestLooperManager;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/TestLooperManager;->e(Lo/Consumer;Lo/Trace$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/Trace$TaskDescription;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/TestLooperManager;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/TestLooperManager;->d(J)Lo/TestLooperManager;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/TestLooperManager;
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lo/Trace;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/TestLooperManager;
    .locals 0

    .line 186
    invoke-virtual {p0}, Lo/TestLooperManager;->i()V

    .line 187
    invoke-super {p0, p1}, Lo/Trace;->d(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/TestLooperManager;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/TestLooperManager;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/Trace;->d(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(FFIILo/Trace$TaskDescription;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/TestLooperManager;->j:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Trace;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/TestLooperManager;->b(ILo/Trace$TaskDescription;)V

    return-void
.end method

.method public b(ILo/Trace$TaskDescription;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/TestLooperManager;->a:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Trace;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/TestLooperManager;->a(Lo/Trace$TaskDescription;I)V

    return-void
.end method

.method public b(Lo/Trace$TaskDescription;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/Trace;->e(Lo/TimeUnit;)V

    .line 66
    iget-object v0, p0, Lo/TestLooperManager;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/TestLooperManager;->e(Ljava/lang/CharSequence;)Lo/TestLooperManager;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/TestLooperManager;->e(Lo/BiConsumer$Activity;)Lo/TestLooperManager;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Trace$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/TestLooperManager;->b(FFIILo/Trace$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/TestLooperManager;->b(ILo/Trace$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/TestLooperManager;->b(Lo/Trace$TaskDescription;)V

    return-void
.end method

.method public d(I)Lo/TestLooperManager;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lo/TestLooperManager;->i()V

    .line 141
    invoke-super {p0, p1}, Lo/Trace;->c(I)V

    return-object p0
.end method

.method public d(J)Lo/TestLooperManager;
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Lo/Trace;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Trace$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/TestLooperManager;->b(FFIILo/Trace$TaskDescription;)V

    return-void
.end method

.method public e(F)Lo/TestLooperManager;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lo/TestLooperManager;->i()V

    .line 163
    invoke-super {p0, p1}, Lo/Trace;->d(F)V

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/TestLooperManager;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lo/Trace;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/TestLooperManager;
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lo/Trace;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/Trace$TaskDescription;I)V
    .locals 0

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Trace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/TestLooperManager;->b(Lo/Trace$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 284
    :cond_0
    instance-of v1, p1, Lo/TestLooperManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 287
    :cond_1
    invoke-super {p0, p1}, Lo/Trace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 290
    :cond_2
    check-cast p1, Lo/TestLooperManager;

    .line 291
    iget-object v1, p0, Lo/TestLooperManager;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/TestLooperManager;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 294
    :cond_5
    iget-object v1, p0, Lo/TestLooperManager;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/TestLooperManager;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 297
    :cond_8
    iget-object v1, p0, Lo/TestLooperManager;->a:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/TestLooperManager;->a:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 300
    :cond_b
    iget-object v1, p0, Lo/TestLooperManager;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/TestLooperManager;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 303
    :cond_e
    invoke-virtual {p0}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 306
    :cond_10
    invoke-virtual {p0}, Lo/TestLooperManager;->m()I

    move-result v1

    invoke-virtual {p1}, Lo/TestLooperManager;->m()I

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 309
    :cond_11
    invoke-virtual {p0}, Lo/TestLooperManager;->o()I

    move-result v1

    invoke-virtual {p1}, Lo/TestLooperManager;->o()I

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 312
    :cond_12
    invoke-virtual {p1}, Lo/TestLooperManager;->k()F

    move-result v1

    invoke-virtual {p0}, Lo/TestLooperManager;->k()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    .line 315
    :cond_13
    invoke-virtual {p0}, Lo/TestLooperManager;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lo/TestLooperManager;->l()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_a

    :cond_15
    const/4 p1, 0x0

    :goto_a
    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 323
    invoke-super {p0}, Lo/Trace;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 324
    iget-object v1, p0, Lo/TestLooperManager;->b:Lo/AEADBadTagException;

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

    .line 325
    iget-object v1, p0, Lo/TestLooperManager;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 326
    iget-object v1, p0, Lo/TestLooperManager;->a:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    iget-object v1, p0, Lo/TestLooperManager;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 328
    invoke-virtual {p0}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    invoke-virtual {p0}, Lo/TestLooperManager;->m()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    invoke-virtual {p0}, Lo/TestLooperManager;->o()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    invoke-virtual {p0}, Lo/TestLooperManager;->k()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/TestLooperManager;->k()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    invoke-virtual {p0}, Lo/TestLooperManager;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuTitleModel_{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Lo/TestLooperManager;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paddingTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lo/TestLooperManager;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Lo/TestLooperManager;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lo/TestLooperManager;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", outsideClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lo/TestLooperManager;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-super {p0}, Lo/Trace;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
