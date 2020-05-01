.class public Lo/aaC;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aaD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/aaB;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/aaB;",
        ">;",
        "Lo/aaD;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aaC;",
            "Lo/aaB;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aaC;",
            "Lo/aaB;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaC;",
            "Lo/aaB;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aaC;",
            "Lo/aaB;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Z

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 28
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 40
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/aaC;->i:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lo/aaC;->j:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lo/aaC;->h:I

    .line 54
    iput-boolean v1, p0, Lo/aaC;->n:Z

    .line 58
    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    .line 63
    iput-object v0, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->e(Landroid/view/ViewGroup;)Lo/aaB;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->b(I)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View$OnClickListener;)Lo/aaC;
    .locals 2

    .line 314
    iget-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 315
    invoke-virtual {p0}, Lo/aaC;->i()V

    .line 316
    iput-object p1, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->e(Ljava/lang/CharSequence;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->d(Ljava/lang/String;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/aaB;

    invoke-virtual {p0, p1, p2, p3}, Lo/aaC;->b(Lo/Consumer;Lo/aaB;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 69
    invoke-virtual {p0, p1}, Lo/aaC;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public a(Lo/aaB;I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lo/aaC;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string v0, "The model was changed during the bind call."

    .line 140
    invoke-virtual {p0, v0, p2}, Lo/aaC;->d(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p1}, Lo/aaB;->c()V

    return-void
.end method

.method public a(Lo/aaB;Lo/BiConsumer;)V
    .locals 4

    .line 103
    instance-of v0, p2, Lo/aaC;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lo/aaC;->b(Lo/aaB;)V

    return-void

    .line 107
    :cond_0
    check-cast p2, Lo/aaC;

    .line 108
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 110
    iget v0, p0, Lo/aaC;->h:I

    iget v1, p2, Lo/aaC;->h:I

    if-eq v0, v1, :cond_1

    .line 111
    invoke-virtual {p1, v0}, Lo/aaB;->setRank(I)V

    .line 114
    :cond_1
    iget-boolean v0, p0, Lo/aaC;->n:Z

    iget-boolean v1, p2, Lo/aaC;->n:Z

    if-eq v0, v1, :cond_2

    .line 115
    invoke-virtual {p1, v0}, Lo/aaB;->setVideoAvailable(Z)V

    .line 118
    :cond_2
    iget-object v0, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_5

    .line 119
    iget-object v0, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaB;->setQuerySuggestionItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_5
    iget-object v0, p0, Lo/aaC;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v3, p2, Lo/aaC;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_6
    iget-object v0, p2, Lo/aaC;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 123
    :goto_2
    iget-object v0, p0, Lo/aaC;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaB;->setLabel(Ljava/lang/String;)V

    .line 126
    :cond_7
    iget-object v0, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p2, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eq v0, v1, :cond_a

    .line 127
    iget-object v0, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaB;->setTapToCompleteQueryClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_a
    iget-object v0, p0, Lo/aaC;->j:Ljava/lang/String;

    iget-object p2, p2, Lo/aaC;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_5

    :cond_b
    if-eqz p2, :cond_c

    .line 131
    :goto_5
    iget-object p2, p0, Lo/aaC;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/aaB;->setQuery(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected b()I
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/aaC;->c(J)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/aaC;
    .locals 1

    .line 399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)Lo/aaC;
    .locals 2

    .line 282
    iget-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 283
    invoke-virtual {p0}, Lo/aaC;->i()V

    .line 284
    iput-boolean p1, p0, Lo/aaC;->n:Z

    return-object p0
.end method

.method public synthetic b(Landroid/view/View$OnClickListener;)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->a(Landroid/view/View$OnClickListener;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->c(Ljava/lang/String;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/aaB;

    invoke-virtual {p0, p1, p2}, Lo/aaC;->b(ILo/aaB;)V

    return-void
.end method

.method public b(ILo/aaB;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lo/aaC;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 188
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaB;

    invoke-virtual {p0, p1, p2}, Lo/aaC;->a(Lo/aaB;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/aaB;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 87
    invoke-virtual {p0, p1, p3}, Lo/aaC;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/aaB;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 93
    iget v0, p0, Lo/aaC;->h:I

    invoke-virtual {p1, v0}, Lo/aaB;->setRank(I)V

    .line 94
    iget-boolean v0, p0, Lo/aaC;->n:Z

    invoke-virtual {p1, v0}, Lo/aaB;->setVideoAvailable(Z)V

    .line 95
    iget-object v0, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaB;->setQuerySuggestionItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lo/aaC;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaB;->setLabel(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaB;->setTapToCompleteQueryClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lo/aaC;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/aaB;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->e(Ljava/lang/CharSequence;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->d(Lo/BiConsumer$Activity;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/aaC;
    .locals 0

    .line 360
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo/aaC;
    .locals 2

    .line 249
    iget-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 250
    invoke-virtual {p0}, Lo/aaC;->i()V

    .line 251
    iput-object p1, p0, Lo/aaC;->j:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic c(I)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->e(I)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaB;

    invoke-virtual {p0, p1}, Lo/aaC;->c(Lo/aaB;)V

    return-void
.end method

.method public c(Lo/aaB;)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lo/aaC;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 164
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/aaB;->setQuerySuggestionItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p1, v0}, Lo/aaB;->setTapToCompleteQueryClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/aaC;
    .locals 2

    .line 232
    iget-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 233
    invoke-virtual {p0}, Lo/aaC;->i()V

    .line 234
    iput-object p1, p0, Lo/aaC;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/aaC;
    .locals 0

    .line 405
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(Landroid/view/View$OnClickListener;)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->e(Landroid/view/View$OnClickListener;)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Z)Lo/aaD;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/aaC;->b(Z)Lo/aaC;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p5, Lo/aaB;

    invoke-virtual/range {p0 .. p5}, Lo/aaC;->d(FFIILo/aaB;)V

    return-void
.end method

.method public d(FFIILo/aaB;)V
    .locals 7

    .line 207
    iget-object v0, p0, Lo/aaC;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 208
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 210
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaB;

    invoke-virtual {p0, p1}, Lo/aaC;->b(Lo/aaB;)V

    return-void
.end method

.method protected e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method protected e(Landroid/view/ViewGroup;)Lo/aaB;
    .locals 3

    .line 79
    new-instance v0, Lo/aaB;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/aaB;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/aaB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public e(I)Lo/aaC;
    .locals 2

    .line 266
    iget-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 267
    invoke-virtual {p0}, Lo/aaC;->i()V

    .line 268
    iput p1, p0, Lo/aaC;->h:I

    return-object p0
.end method

.method public e(Landroid/view/View$OnClickListener;)Lo/aaC;
    .locals 2

    .line 347
    iget-object v0, p0, Lo/aaC;->b:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 348
    invoke-virtual {p0}, Lo/aaC;->i()V

    .line 349
    iput-object p1, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/aaC;
    .locals 0

    .line 379
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 27
    check-cast p1, Lo/aaB;

    invoke-virtual {p0, p1, p2}, Lo/aaC;->a(Lo/aaB;Lo/BiConsumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 455
    :cond_0
    instance-of v1, p1, Lo/aaC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 458
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 461
    :cond_2
    check-cast p1, Lo/aaC;

    .line 462
    iget-object v1, p0, Lo/aaC;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aaC;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 465
    :cond_5
    iget-object v1, p0, Lo/aaC;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aaC;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 468
    :cond_8
    iget-object v1, p0, Lo/aaC;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aaC;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 471
    :cond_b
    iget-object v1, p0, Lo/aaC;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aaC;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 474
    :cond_e
    iget-object v1, p0, Lo/aaC;->i:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lo/aaC;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/aaC;->i:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 477
    :cond_10
    iget-object v1, p0, Lo/aaC;->j:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v3, p1, Lo/aaC;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/aaC;->j:Ljava/lang/String;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 480
    :cond_12
    iget v1, p0, Lo/aaC;->h:I

    iget v3, p1, Lo/aaC;->h:I

    if-eq v1, v3, :cond_13

    return v2

    .line 483
    :cond_13
    iget-boolean v1, p0, Lo/aaC;->n:Z

    iget-boolean v3, p1, Lo/aaC;->n:Z

    if-eq v1, v3, :cond_14

    return v2

    .line 486
    :cond_14
    iget-object v1, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p1, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_17

    return v2

    .line 489
    :cond_17
    iget-object v1, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_c

    :cond_18
    const/4 v1, 0x0

    :goto_c
    iget-object p1, p1, Lo/aaC;->o:Landroid/view/View$OnClickListener;

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
    .locals 4

    .line 497
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 498
    iget-object v1, p0, Lo/aaC;->a:Lo/AEADBadTagException;

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

    .line 499
    iget-object v1, p0, Lo/aaC;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 500
    iget-object v1, p0, Lo/aaC;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 501
    iget-object v1, p0, Lo/aaC;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 502
    iget-object v1, p0, Lo/aaC;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 503
    iget-object v1, p0, Lo/aaC;->j:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 504
    iget v1, p0, Lo/aaC;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 505
    iget-boolean v1, p0, Lo/aaC;->n:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 506
    iget-object v1, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 507
    iget-object v1, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchQueryCompletionResultsViewModel_{label_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaC;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", query_String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaC;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rank_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/aaC;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoAvailable_Boolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/aaC;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", querySuggestionItemClickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaC;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tapToCompleteQueryClickListener_OnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaC;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
