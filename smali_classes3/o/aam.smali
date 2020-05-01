.class public Lo/aam;
.super Lo/aan;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aan;",
        "Lo/IntToLongFunction<",
        "Lo/aan$ActionBar;",
        ">;",
        "Lo/aao;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aam;",
            "Lo/aan$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aam;",
            "Lo/aan$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aam;",
            "Lo/aan$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aam;",
            "Lo/aan$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/aan;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aam;->d(I)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/aan$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/aam;->a(Lo/Consumer;Lo/aan$ActionBar;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/aan$ActionBar;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 47
    invoke-virtual {p0, p1, p3}, Lo/aam;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lo/aan;->a(Lo/OfPrimitive;)V

    .line 41
    invoke-virtual {p0, p1}, Lo/aam;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/aam;->e(J)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lo/aao;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aam;->c(Ljava/lang/String;)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/aan$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/aam;->b(ILo/aan$ActionBar;)V

    return-void
.end method

.method public b(ILo/aan$ActionBar;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/aam;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lo/aan;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/aan$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/aam;->d(Lo/aan$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aam;->e(Ljava/lang/CharSequence;)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aam;->d(Lo/BiConsumer$Activity;)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/aam;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lo/aam;->i()V

    .line 142
    iput-object p1, p0, Lo/aan;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic c(Lo/LongStream;)Lo/aao;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aam;->e(Lo/LongStream;)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/aan$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aam;->d(FFIILo/aan$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/aan$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/aam;->b(ILo/aan$ActionBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/aan$ActionBar;

    invoke-virtual {p0, p1}, Lo/aam;->c(Lo/aan$ActionBar;)V

    return-void
.end method

.method public c(Lo/aan$ActionBar;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lo/aan;->e(Lo/TimeUnit;)V

    .line 76
    iget-object v0, p0, Lo/aam;->g:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(I)Lo/aam;
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lo/aan;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/aam;
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lo/aan;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(Ljava/lang/CharSequence;)Lo/aao;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/aam;->e(Ljava/lang/CharSequence;)Lo/aam;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p5, Lo/aan$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/aam;->d(FFIILo/aan$ActionBar;)V

    return-void
.end method

.method public d(FFIILo/aan$ActionBar;)V
    .locals 7

    .line 121
    iget-object v0, p0, Lo/aam;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 122
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 124
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/aan;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/aan$ActionBar;I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/aam;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 56
    invoke-virtual {p0, p1, p2}, Lo/aam;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(J)Lo/aam;
    .locals 0

    .line 189
    invoke-super {p0, p1, p2}, Lo/aan;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/aam;
    .locals 0

    .line 207
    invoke-super {p0, p1}, Lo/aan;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/LongStream;)Lo/aam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/aam;",
            "Lo/aan$ActionBar;",
            ">;)",
            "Lo/aam;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lo/aam;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 157
    invoke-super {p0, p1}, Lo/aan;->c(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/aan;->c(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/aan$ActionBar;

    invoke-virtual {p0, p1}, Lo/aam;->c(Lo/aan$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 278
    :cond_0
    instance-of v1, p1, Lo/aam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 281
    :cond_1
    invoke-super {p0, p1}, Lo/aan;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 284
    :cond_2
    check-cast p1, Lo/aam;

    .line 285
    iget-object v1, p0, Lo/aam;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aam;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 288
    :cond_5
    iget-object v1, p0, Lo/aam;->g:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aam;->g:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 291
    :cond_8
    iget-object v1, p0, Lo/aam;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aam;->i:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 294
    :cond_b
    iget-object v1, p0, Lo/aam;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aam;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 297
    :cond_e
    iget-object v1, p0, Lo/aam;->b:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/aam;->b:Ljava/lang/String;

    iget-object v3, p1, Lo/aam;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/aam;->b:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 300
    :cond_10
    invoke-virtual {p0}, Lo/aam;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lo/aam;->h()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    if-eq v1, v3, :cond_13

    return v2

    .line 303
    :cond_13
    iget-object v1, p0, Lo/aam;->c:Ljava/lang/String;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    :goto_b
    iget-object p1, p1, Lo/aam;->c:Ljava/lang/String;

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_c

    :cond_15
    const/4 p1, 0x0

    :goto_c
    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 311
    invoke-super {p0}, Lo/aan;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 312
    iget-object v1, p0, Lo/aam;->a:Lo/AEADBadTagException;

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
    iget-object v1, p0, Lo/aam;->g:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 314
    iget-object v1, p0, Lo/aam;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 315
    iget-object v1, p0, Lo/aam;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    iget-object v1, p0, Lo/aam;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/aam;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 317
    invoke-virtual {p0}, Lo/aam;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    iget-object v1, p0, Lo/aam;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method protected k()Lo/aan$ActionBar;
    .locals 1

    .line 257
    new-instance v0, Lo/aan$ActionBar;

    invoke-direct {v0}, Lo/aan$ActionBar;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/aam;->k()Lo/aan$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSuggestionViewModel_{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lo/aam;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aam;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-super {p0}, Lo/aan;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
