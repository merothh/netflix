.class public Lo/aaJ;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aaG;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/aaK;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/aaK;",
        ">;",
        "Lo/aaG;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aaJ;",
            "Lo/aaK;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aaJ;",
            "Lo/aaK;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private f:Ljava/lang/String;

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaJ;",
            "Lo/aaK;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aaJ;",
            "Lo/aaK;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private l:Landroid/view/View$OnClickListener;

.field private o:Lo/By;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 31
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 43
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/aaJ;->j:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lo/aaJ;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lo/aaJ;->h:I

    .line 62
    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->d(I)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/aaJ;
    .locals 0

    .line 314
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/aaJ;
    .locals 2

    .line 232
    iget-object v0, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 233
    invoke-virtual {p0}, Lo/aaJ;->i()V

    .line 234
    iput-object p1, p0, Lo/aaJ;->f:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p2, Lo/aaK;

    invoke-virtual {p0, p1, p2, p3}, Lo/aaJ;->c(Lo/Consumer;Lo/aaK;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 68
    invoke-virtual {p0, p1}, Lo/aaJ;->e(Lo/OfPrimitive;)V

    .line 69
    iget-object p1, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setSearchSuggestion"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 1

    .line 384
    sget v0, Lo/aax$TaskDescription;->b:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lo/aaJ;->a(J)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->a(Ljava/lang/String;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lo/EncryptedPrivateKeyInfo;)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->e(Lo/EncryptedPrivateKeyInfo;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/aaJ;
    .locals 2

    .line 249
    iget-object v0, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 250
    invoke-virtual {p0}, Lo/aaJ;->i()V

    .line 251
    iput p1, p0, Lo/aaJ;->h:I

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/aaJ;
    .locals 2

    .line 301
    iget-object v0, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 302
    invoke-virtual {p0}, Lo/aaJ;->i()V

    .line 303
    iput-object p1, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public b(Lo/By;)Lo/aaJ;
    .locals 2

    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 270
    invoke-virtual {p0}, Lo/aaJ;->i()V

    .line 271
    iput-object p1, p0, Lo/aaJ;->o:Lo/By;

    return-object p0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "searchSuggestion cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lo/aaK;

    invoke-virtual {p0, p1, p2}, Lo/aaJ;->d(ILo/aaK;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaK;

    invoke-virtual {p0, p1, p2}, Lo/aaJ;->b(Lo/aaK;I)V

    return-void
.end method

.method public b(Lo/aaK;I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/aaJ;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string v0, "The model was changed during the bind call."

    .line 125
    invoke-virtual {p0, v0, p2}, Lo/aaJ;->d(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p1}, Lo/aaK;->c()V

    return-void
.end method

.method public b(Lo/aaK;Lo/BiConsumer;)V
    .locals 4

    .line 92
    instance-of v0, p2, Lo/aaJ;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lo/aaJ;->d(Lo/aaK;)V

    return-void

    .line 96
    :cond_0
    check-cast p2, Lo/aaJ;

    .line 97
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 99
    iget v0, p0, Lo/aaJ;->h:I

    iget v1, p2, Lo/aaJ;->h:I

    if-eq v0, v1, :cond_1

    .line 100
    invoke-virtual {p1, v0}, Lo/aaK;->setRank(I)V

    .line 103
    :cond_1
    iget-object v0, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_4

    .line 104
    iget-object v0, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaK;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_4
    iget-object v0, p0, Lo/aaJ;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v3, p2, Lo/aaJ;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_5
    iget-object v0, p2, Lo/aaJ;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 108
    :goto_2
    iget-object v0, p0, Lo/aaJ;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaK;->setLabel(Ljava/lang/String;)V

    .line 111
    :cond_6
    iget-object v0, p0, Lo/aaJ;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v3, p2, Lo/aaJ;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_7
    iget-object v0, p2, Lo/aaJ;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 112
    :goto_3
    iget-object v0, p0, Lo/aaJ;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaK;->setQuery(Ljava/lang/String;)V

    .line 115
    :cond_8
    iget-object v0, p0, Lo/aaJ;->o:Lo/By;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iget-object p2, p2, Lo/aaJ;->o:Lo/By;

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-eq v0, v1, :cond_b

    .line 116
    iget-object p2, p0, Lo/aaJ;->o:Lo/By;

    invoke-virtual {p1, p2}, Lo/aaK;->setSearchSuggestion(Lo/By;)V

    :cond_b
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->d(Ljava/lang/CharSequence;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->e(Lo/BiConsumer$Activity;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroid/view/View$OnClickListener;)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->b(Landroid/view/View$OnClickListener;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaK;

    invoke-virtual {p0, p1}, Lo/aaJ;->e(Lo/aaK;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/aaK;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 77
    invoke-virtual {p0, p1, p3}, Lo/aaJ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic d(Ljava/lang/String;)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->e(Ljava/lang/String;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lo/By;)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->b(Lo/By;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/aaJ;
    .locals 0

    .line 352
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/aaJ;
    .locals 0

    .line 332
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 30
    move-object v5, p5

    check-cast v5, Lo/aaK;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aaJ;->e(FFIILo/aaK;)V

    return-void
.end method

.method public d(ILo/aaK;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lo/aaJ;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaK;

    invoke-virtual {p0, p1}, Lo/aaJ;->d(Lo/aaK;)V

    return-void
.end method

.method public d(Lo/aaK;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 83
    iget v0, p0, Lo/aaJ;->h:I

    invoke-virtual {p1, v0}, Lo/aaK;->setRank(I)V

    .line 84
    iget-object v0, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaK;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lo/aaJ;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaK;->setLabel(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lo/aaJ;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaK;->setQuery(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lo/aaJ;->o:Lo/By;

    invoke-virtual {p1, v0}, Lo/aaK;->setSearchSuggestion(Lo/By;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public synthetic e(I)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->b(I)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/aaG;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaJ;->d(Ljava/lang/CharSequence;)Lo/aaJ;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lo/aaJ;
    .locals 2

    .line 215
    iget-object v0, p0, Lo/aaJ;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 216
    invoke-virtual {p0}, Lo/aaJ;->i()V

    .line 217
    iput-object p1, p0, Lo/aaJ;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/aaJ;
    .locals 0

    .line 359
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/EncryptedPrivateKeyInfo;)Lo/aaJ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaJ;",
            "Lo/aaK;",
            ">;)",
            "Lo/aaJ;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lo/aaJ;->i()V

    .line 205
    iput-object p1, p0, Lo/aaJ;->g:Lo/EncryptedPrivateKeyInfo;

    return-object p0
.end method

.method public e(FFIILo/aaK;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lo/aaJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 191
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 193
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaK;

    invoke-virtual {p0, p1, p2}, Lo/aaJ;->b(Lo/aaK;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/aaK;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lo/aaJ;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 149
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaK;->setClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 408
    :cond_0
    instance-of v1, p1, Lo/aaJ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 411
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 414
    :cond_2
    check-cast p1, Lo/aaJ;

    .line 415
    iget-object v1, p0, Lo/aaJ;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aaJ;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 418
    :cond_5
    iget-object v1, p0, Lo/aaJ;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aaJ;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 421
    :cond_8
    iget-object v1, p0, Lo/aaJ;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aaJ;->i:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 424
    :cond_b
    iget-object v1, p0, Lo/aaJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aaJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 427
    :cond_e
    iget-object v1, p0, Lo/aaJ;->j:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/aaJ;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/aaJ;->j:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 430
    :cond_10
    iget-object v1, p0, Lo/aaJ;->f:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v3, p1, Lo/aaJ;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/aaJ;->f:Ljava/lang/String;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 433
    :cond_12
    iget-object v1, p0, Lo/aaJ;->o:Lo/By;

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p1, Lo/aaJ;->o:Lo/By;

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_15

    return v2

    .line 436
    :cond_15
    iget-object v1, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    :goto_c
    iget-object p1, p1, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_d

    :cond_17
    const/4 p1, 0x0

    :goto_d
    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public h()I
    .locals 1

    .line 256
    iget v0, p0, Lo/aaJ;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 444
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    iget-object v1, p0, Lo/aaJ;->b:Lo/AEADBadTagException;

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

    .line 446
    iget-object v1, p0, Lo/aaJ;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    iget-object v1, p0, Lo/aaJ;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 448
    iget-object v1, p0, Lo/aaJ;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 449
    iget-object v1, p0, Lo/aaJ;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 450
    iget-object v1, p0, Lo/aaJ;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 451
    iget-object v1, p0, Lo/aaJ;->o:Lo/By;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 452
    iget-object v1, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public o()Lo/By;
    .locals 1

    .line 277
    iget-object v0, p0, Lo/aaJ;->o:Lo/By;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchRelatedResultViewModel_{label_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaJ;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", query_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaJ;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rank_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/aaJ;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchSuggestion_SearchSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaJ;->o:Lo/By;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaJ;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
