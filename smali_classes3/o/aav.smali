.class public Lo/aav;
.super Lo/aap;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aaq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aap;",
        "Lo/IntToLongFunction<",
        "Lo/aap$Application;",
        ">;",
        "Lo/aaq;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aav;",
            "Lo/aap$Application;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aav;",
            "Lo/aap$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aav;",
            "Lo/aap$Application;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aav;",
            "Lo/aap$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/aap;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aav;->c(I)Lo/aav;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View$OnClickListener;)Lo/aav;
    .locals 0

    .line 152
    invoke-virtual {p0}, Lo/aav;->i()V

    .line 153
    invoke-super {p0, p1}, Lo/aap;->b(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/aav;
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lo/aap;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/aap$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/aav;->d(Lo/Consumer;Lo/aap$Application;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/aap;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/aav;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public a(Lo/aap$Application;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/aav;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/aav;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/aav;->c(J)Lo/aav;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/aav;
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lo/aap;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(FFIILo/aap$Application;)V
    .locals 7

    .line 118
    iget-object v0, p0, Lo/aav;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 119
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 121
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/aap;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/aap$Application;

    invoke-virtual {p0, p1, p2}, Lo/aav;->b(ILo/aap$Application;)V

    return-void
.end method

.method public b(ILo/aap$Application;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/aav;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lo/aap;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/aap$Application;

    invoke-virtual {p0, p1, p2}, Lo/aav;->a(Lo/aap$Application;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aav;->a(Ljava/lang/CharSequence;)Lo/aav;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aav;->b(Lo/BiConsumer$Activity;)Lo/aav;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/aav;
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lo/aap;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public c(J)Lo/aav;
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lo/aap;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/aap$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aav;->b(FFIILo/aap$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/aap$Application;

    invoke-virtual {p0, p1, p2}, Lo/aav;->b(ILo/aap$Application;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aap$Application;

    invoke-virtual {p0, p1}, Lo/aav;->e(Lo/aap$Application;)V

    return-void
.end method

.method public synthetic d(Landroid/view/View$OnClickListener;)Lo/aaq;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aav;->a(Landroid/view/View$OnClickListener;)Lo/aav;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/aap$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aav;->b(FFIILo/aap$Application;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/aap$Application;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/aav;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/aaq;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/aav;->a(Ljava/lang/CharSequence;)Lo/aav;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aap$Application;

    invoke-virtual {p0, p1}, Lo/aav;->e(Lo/aap$Application;)V

    return-void
.end method

.method public e(Lo/aap$Application;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/aap;->e(Lo/TimeUnit;)V

    .line 74
    iget-object v0, p0, Lo/aav;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 251
    :cond_0
    instance-of v1, p1, Lo/aav;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 254
    :cond_1
    invoke-super {p0, p1}, Lo/aap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 257
    :cond_2
    check-cast p1, Lo/aav;

    .line 258
    iget-object v1, p0, Lo/aav;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aav;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 261
    :cond_5
    iget-object v1, p0, Lo/aav;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aav;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 264
    :cond_8
    iget-object v1, p0, Lo/aav;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aav;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 267
    :cond_b
    iget-object v1, p0, Lo/aav;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aav;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 270
    :cond_e
    invoke-virtual {p0}, Lo/aav;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/aav;->h()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 278
    invoke-super {p0}, Lo/aap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-object v1, p0, Lo/aav;->c:Lo/AEADBadTagException;

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

    .line 280
    iget-object v1, p0, Lo/aav;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-object v1, p0, Lo/aav;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object v1, p0, Lo/aav;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 283
    invoke-virtual {p0}, Lo/aav;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method protected l()Lo/aap$Application;
    .locals 1

    .line 232
    new-instance v0, Lo/aap$Application;

    invoke-direct {v0}, Lo/aap$Application;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/aav;->l()Lo/aap$Application;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeeMoreButtonModel_{clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lo/aav;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-super {p0}, Lo/aap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
