.class public Lo/aaj;
.super Lo/aad;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aad;",
        "Lo/IntToLongFunction<",
        "Lo/aad$ActionBar;",
        ">;",
        "Lo/aai;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/aad;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->d(I)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/LongStream;)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->b(Lo/LongStream;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/aaj;
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lo/aad;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/aaj;
    .locals 0

    .line 164
    invoke-virtual {p0}, Lo/aaj;->i()V

    .line 165
    iput-object p1, p0, Lo/aad;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(ILo/aad$ActionBar;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/aaj;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Lo/aad;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/aad$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/aaj;->a(Lo/Consumer;Lo/aad$ActionBar;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/aad$ActionBar;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 47
    invoke-virtual {p0, p1, p3}, Lo/aaj;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lo/aad;->a(Lo/OfPrimitive;)V

    .line 41
    invoke-virtual {p0, p1}, Lo/aaj;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/aaj;->c(J)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(I)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->e(I)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->a(Ljava/lang/CharSequence;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lo/aaj;
    .locals 0

    .line 175
    invoke-virtual {p0}, Lo/aaj;->i()V

    .line 176
    iput-object p1, p0, Lo/aad;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lo/LongStream;)Lo/aaj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;)",
            "Lo/aaj;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lo/aaj;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 144
    invoke-super {p0, p1}, Lo/aad;->c(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/aad;->c(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/aad$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/aaj;->a(ILo/aad$ActionBar;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/aad$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/aaj;->d(Lo/aad$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->a(Ljava/lang/CharSequence;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->e(Lo/BiConsumer$Activity;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->a(Ljava/lang/String;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/EncryptedPrivateKeyInfo;)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->e(Lo/EncryptedPrivateKeyInfo;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/aaj;
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Lo/aad;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/aad$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aaj;->d(FFIILo/aad$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/aad$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/aaj;->a(ILo/aad$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/aad$ActionBar;

    invoke-virtual {p0, p1}, Lo/aaj;->d(Lo/aad$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/String;)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->g(Ljava/lang/String;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/aaj;
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lo/aad;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p5, Lo/aad$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/aaj;->d(FFIILo/aad$ActionBar;)V

    return-void
.end method

.method public d(FFIILo/aad$ActionBar;)V
    .locals 7

    .line 119
    iget-object v0, p0, Lo/aaj;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 120
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 122
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/aad;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/aad$ActionBar;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lo/aad;->e(Lo/TimeUnit;)V

    .line 75
    iget-object v0, p0, Lo/aaj;->h:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lo/aad$ActionBar;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/aaj;->i:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 55
    invoke-virtual {p0, p1, p2}, Lo/aaj;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Ljava/lang/String;)Lo/aai;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aaj;->b(Ljava/lang/String;)Lo/aaj;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lo/aaj;
    .locals 0

    .line 186
    invoke-virtual {p0}, Lo/aaj;->i()V

    .line 187
    invoke-super {p0, p1}, Lo/aad;->c(I)V

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/aaj;
    .locals 0

    .line 252
    invoke-super {p0, p1}, Lo/aad;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/EncryptedPrivateKeyInfo;)Lo/aaj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;)",
            "Lo/aaj;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lo/aaj;->i()V

    .line 134
    iput-object p1, p0, Lo/aaj;->g:Lo/EncryptedPrivateKeyInfo;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/aad$ActionBar;

    invoke-virtual {p0, p1}, Lo/aaj;->d(Lo/aad$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 299
    :cond_0
    instance-of v1, p1, Lo/aaj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 302
    :cond_1
    invoke-super {p0, p1}, Lo/aad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 305
    :cond_2
    check-cast p1, Lo/aaj;

    .line 306
    iget-object v1, p0, Lo/aaj;->i:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aaj;->i:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 309
    :cond_5
    iget-object v1, p0, Lo/aaj;->h:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aaj;->h:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 312
    :cond_8
    iget-object v1, p0, Lo/aaj;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aaj;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 315
    :cond_b
    iget-object v1, p0, Lo/aaj;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aaj;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 318
    :cond_e
    invoke-virtual {p0}, Lo/aaj;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/aaj;->h()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eq v1, v3, :cond_11

    return v2

    .line 321
    :cond_11
    iget-object v1, p0, Lo/aaj;->a:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p1, Lo/aaj;->a:Ljava/lang/String;

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_14

    return v2

    .line 324
    :cond_14
    iget-object v1, p0, Lo/aaj;->c:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lo/aaj;->c:Ljava/lang/String;

    iget-object v3, p1, Lo/aaj;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_c

    :cond_15
    iget-object v1, p1, Lo/aaj;->c:Ljava/lang/String;

    if-eqz v1, :cond_16

    :goto_c
    return v2

    .line 327
    :cond_16
    invoke-virtual {p0}, Lo/aaj;->k()I

    move-result v1

    invoke-virtual {p1}, Lo/aaj;->k()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 330
    :cond_17
    iget-object v1, p0, Lo/aaj;->b:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lo/aaj;->b:Ljava/lang/String;

    iget-object p1, p1, Lo/aaj;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_d

    :cond_18
    iget-object p1, p1, Lo/aaj;->b:Ljava/lang/String;

    if-eqz p1, :cond_19

    :goto_d
    return v2

    :cond_19
    return v0
.end method

.method public g(Ljava/lang/String;)Lo/aaj;
    .locals 0

    .line 196
    invoke-virtual {p0}, Lo/aaj;->i()V

    .line 197
    iput-object p1, p0, Lo/aad;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 338
    invoke-super {p0}, Lo/aad;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-object v1, p0, Lo/aaj;->i:Lo/AEADBadTagException;

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

    .line 340
    iget-object v1, p0, Lo/aaj;->h:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget-object v1, p0, Lo/aaj;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    iget-object v1, p0, Lo/aaj;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    invoke-virtual {p0}, Lo/aaj;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 344
    iget-object v1, p0, Lo/aaj;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    iget-object v1, p0, Lo/aaj;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/aaj;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 346
    invoke-virtual {p0}, Lo/aaj;->k()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 347
    iget-object v1, p0, Lo/aaj;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/aaj;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_7
    add-int/2addr v0, v3

    return v0
.end method

.method protected m()Lo/aad$ActionBar;
    .locals 1

    .line 276
    new-instance v0, Lo/aad$ActionBar;

    invoke-direct {v0}, Lo/aad$ActionBar;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/aaj;->m()Lo/aad$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreQuerySearchGridModel_{clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lo/aaj;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p0}, Lo/aaj;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxArtImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-super {p0}, Lo/aad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
