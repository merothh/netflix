.class public Lo/SectionIndexer;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/SearchView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/RtlSpacingHelper;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/RtlSpacingHelper;",
        ">;",
        "Lo/SearchView;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SectionIndexer;",
            "Lo/RtlSpacingHelper;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SectionIndexer;",
            "Lo/RtlSpacingHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private f:Z

.field private g:F

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SectionIndexer;",
            "Lo/RtlSpacingHelper;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SectionIndexer;",
            "Lo/RtlSpacingHelper;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Lcom/airbnb/epoxy/Carousel$Padding;

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 32
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/SectionIndexer;->f:Z

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lo/SectionIndexer;->g:F

    .line 52
    iput v0, p0, Lo/SectionIndexer;->i:I

    .line 56
    iput v0, p0, Lo/SectionIndexer;->n:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lo/SectionIndexer;->k:I

    const/4 v0, 0x0

    .line 68
    check-cast v0, Lcom/airbnb/epoxy/Carousel$Padding;

    iput-object v0, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->e(Landroid/view/ViewGroup;)Lo/RtlSpacingHelper;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->d(I)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/util/List;)Lo/SearchView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->e(Ljava/util/List;)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/SectionIndexer;
    .locals 0

    .line 429
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p2, Lo/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2, p3}, Lo/SectionIndexer;->b(Lo/Consumer;Lo/RtlSpacingHelper;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 79
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->e(Lo/OfPrimitive;)V

    .line 80
    iget-object p1, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lo/RtlSpacingHelper;Lo/BiConsumer;)V
    .locals 4

    .line 133
    instance-of v0, p2, Lo/SectionIndexer;

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->b(Lo/RtlSpacingHelper;)V

    return-void

    .line 137
    :cond_0
    check-cast p2, Lo/SectionIndexer;

    .line 138
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget v0, p0, Lo/SectionIndexer;->n:I

    iget v1, p2, Lo/SectionIndexer;->n:I

    if-eq v0, v1, :cond_7

    .line 142
    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPaddingRes(I)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget v0, p0, Lo/SectionIndexer;->k:I

    iget v1, p2, Lo/SectionIndexer;->k:I

    if-eq v0, v1, :cond_7

    .line 147
    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPaddingDp(I)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p2, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    if-eqz v0, :cond_3

    iget-object v1, p2, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/Carousel$Padding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    if-eqz v0, :cond_7

    .line 152
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPadding(Lcom/airbnb/epoxy/Carousel$Padding;)V

    goto :goto_1

    .line 156
    :cond_5
    iget-object v0, p2, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    :cond_6
    iget v0, p0, Lo/SectionIndexer;->k:I

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPaddingDp(I)V

    .line 160
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lo/SectionIndexer;->f:Z

    iget-boolean v1, p2, Lo/SectionIndexer;->f:Z

    if-eq v0, v1, :cond_8

    .line 161
    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setHasFixedSize(Z)V

    .line 164
    :cond_8
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    iget v0, p2, Lo/SectionIndexer;->g:F

    iget v1, p0, Lo/SectionIndexer;->g:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_c

    .line 166
    iget v0, p0, Lo/SectionIndexer;->g:F

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setNumViewsToShowOnScreen(F)V

    goto :goto_2

    .line 169
    :cond_9
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    iget v0, p0, Lo/SectionIndexer;->i:I

    iget v1, p2, Lo/SectionIndexer;->i:I

    if-eq v0, v1, :cond_c

    .line 171
    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setInitialPrefetchItemCount(I)V

    goto :goto_2

    .line 175
    :cond_a
    iget-object v0, p2, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p2, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    :cond_b
    iget v0, p0, Lo/SectionIndexer;->g:F

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setNumViewsToShowOnScreen(F)V

    .line 179
    :cond_c
    :goto_2
    iget-object v0, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    iget-object p2, p2, Lo/SectionIndexer;->o:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_e

    .line 180
    :goto_3
    iget-object p2, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    invoke-virtual {p1, p2}, Lo/RtlSpacingHelper;->setModels(Ljava/util/List;)V

    :cond_e
    return-void
.end method

.method protected b()I
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lo/SectionIndexer;->c(J)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lo/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lo/SectionIndexer;->e(ILo/RtlSpacingHelper;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p1, Lo/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lo/SectionIndexer;->e(Lo/RtlSpacingHelper;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/RtlSpacingHelper;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 100
    invoke-virtual {p0, p1, p3}, Lo/SectionIndexer;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/RtlSpacingHelper;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lo/SectionIndexer;->n:I

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPaddingRes(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget v0, p0, Lo/SectionIndexer;->k:I

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPaddingDp(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPadding(Lcom/airbnb/epoxy/Carousel$Padding;)V

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Lo/SectionIndexer;->k:I

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setPaddingDp(I)V

    .line 118
    :goto_0
    iget-boolean v0, p0, Lo/SectionIndexer;->f:Z

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setHasFixedSize(Z)V

    .line 119
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget v0, p0, Lo/SectionIndexer;->g:F

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setNumViewsToShowOnScreen(F)V

    goto :goto_1

    .line 122
    :cond_3
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget v0, p0, Lo/SectionIndexer;->i:I

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setInitialPrefetchItemCount(I)V

    goto :goto_1

    .line 126
    :cond_4
    iget v0, p0, Lo/SectionIndexer;->g:F

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setNumViewsToShowOnScreen(F)V

    .line 128
    :goto_1
    iget-object v0, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Lo/RtlSpacingHelper;->setModels(Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->a(Ljava/lang/CharSequence;)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->d(Lo/BiConsumer$Activity;)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/AEADBadTagException;)Lo/SearchView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->d(Lo/AEADBadTagException;)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/SectionIndexer;
    .locals 2

    .line 351
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 352
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    const/4 v0, 0x0

    .line 353
    iput v0, p0, Lo/SectionIndexer;->n:I

    .line 354
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    const/4 v0, 0x0

    .line 355
    check-cast v0, Lcom/airbnb/epoxy/Carousel$Padding;

    iput-object v0, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    .line 356
    invoke-virtual {p0}, Lo/SectionIndexer;->i()V

    .line 357
    iput p1, p0, Lo/SectionIndexer;->k:I

    return-object p0
.end method

.method public c(J)Lo/SectionIndexer;
    .locals 0

    .line 411
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/RtlSpacingHelper;

    invoke-virtual {p0, p1}, Lo/SectionIndexer;->c(Lo/RtlSpacingHelper;)V

    return-void
.end method

.method public c(Lo/RtlSpacingHelper;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lo/SectionIndexer;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    .line 212
    :cond_0
    invoke-virtual {p1}, Lo/RtlSpacingHelper;->e()V

    return-void
.end method

.method public synthetic d(Ljava/lang/CharSequence;)Lo/SearchView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->a(Ljava/lang/CharSequence;)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/SectionIndexer;
    .locals 1

    .line 447
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lo/AEADBadTagException;)Lo/SectionIndexer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AEADBadTagException<",
            "Lo/SectionIndexer;",
            "Lo/RtlSpacingHelper;",
            ">;)",
            "Lo/SectionIndexer;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lo/SectionIndexer;->i()V

    .line 202
    iput-object p1, p0, Lo/SectionIndexer;->b:Lo/AEADBadTagException;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/SectionIndexer;
    .locals 0

    .line 452
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 31
    move-object v5, p5

    check-cast v5, Lo/RtlSpacingHelper;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SectionIndexer;->e(FFIILo/RtlSpacingHelper;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/RtlSpacingHelper;

    invoke-virtual {p0, p1}, Lo/SectionIndexer;->b(Lo/RtlSpacingHelper;)V

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

.method protected e(Landroid/view/ViewGroup;)Lo/RtlSpacingHelper;
    .locals 3

    .line 92
    new-instance v0, Lo/RtlSpacingHelper;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/RtlSpacingHelper;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/RtlSpacingHelper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic e(I)Lo/SearchView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SectionIndexer;->c(I)Lo/SectionIndexer;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)Lo/SectionIndexer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)",
            "Lo/SectionIndexer;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 398
    iget-object v0, p0, Lo/SectionIndexer;->c:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 399
    invoke-virtual {p0}, Lo/SectionIndexer;->i()V

    .line 400
    iput-object p1, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    return-object p0

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "models cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(FFIILo/RtlSpacingHelper;)V
    .locals 7

    .line 253
    iget-object v0, p0, Lo/SectionIndexer;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 254
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 256
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public e(ILo/RtlSpacingHelper;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lo/SectionIndexer;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 234
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 31
    check-cast p1, Lo/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lo/SectionIndexer;->a(Lo/RtlSpacingHelper;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/RtlSpacingHelper;I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lo/SectionIndexer;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 189
    invoke-virtual {p0, p1, p2}, Lo/SectionIndexer;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 503
    :cond_0
    instance-of v1, p1, Lo/SectionIndexer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 506
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 509
    :cond_2
    check-cast p1, Lo/SectionIndexer;

    .line 510
    iget-object v1, p0, Lo/SectionIndexer;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SectionIndexer;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 513
    :cond_5
    iget-object v1, p0, Lo/SectionIndexer;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SectionIndexer;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 516
    :cond_8
    iget-object v1, p0, Lo/SectionIndexer;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SectionIndexer;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 519
    :cond_b
    iget-object v1, p0, Lo/SectionIndexer;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SectionIndexer;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 522
    :cond_e
    iget-boolean v1, p0, Lo/SectionIndexer;->f:Z

    iget-boolean v3, p1, Lo/SectionIndexer;->f:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 525
    :cond_f
    iget v1, p1, Lo/SectionIndexer;->g:F

    iget v3, p0, Lo/SectionIndexer;->g:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    .line 528
    :cond_10
    iget v1, p0, Lo/SectionIndexer;->i:I

    iget v3, p1, Lo/SectionIndexer;->i:I

    if-eq v1, v3, :cond_11

    return v2

    .line 531
    :cond_11
    iget v1, p0, Lo/SectionIndexer;->n:I

    iget v3, p1, Lo/SectionIndexer;->n:I

    if-eq v1, v3, :cond_12

    return v2

    .line 534
    :cond_12
    iget v1, p0, Lo/SectionIndexer;->k:I

    iget v3, p1, Lo/SectionIndexer;->k:I

    if-eq v1, v3, :cond_13

    return v2

    .line 537
    :cond_13
    iget-object v1, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    if-eqz v1, :cond_14

    iget-object v3, p1, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    invoke-virtual {v1, v3}, Lcom/airbnb/epoxy/Carousel$Padding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_8

    :cond_14
    iget-object v1, p1, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    if-eqz v1, :cond_15

    :goto_8
    return v2

    .line 540
    :cond_15
    iget-object v1, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    iget-object p1, p1, Lo/SectionIndexer;->o:Ljava/util/List;

    if-eqz v1, :cond_16

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_9

    :cond_16
    if-eqz p1, :cond_17

    :goto_9
    return v2

    :cond_17
    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 548
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 549
    iget-object v1, p0, Lo/SectionIndexer;->b:Lo/AEADBadTagException;

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

    .line 550
    iget-object v1, p0, Lo/SectionIndexer;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 551
    iget-object v1, p0, Lo/SectionIndexer;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 552
    iget-object v1, p0, Lo/SectionIndexer;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 553
    iget-boolean v1, p0, Lo/SectionIndexer;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 554
    iget v1, p0, Lo/SectionIndexer;->g:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 555
    iget v1, p0, Lo/SectionIndexer;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 556
    iget v1, p0, Lo/SectionIndexer;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 557
    iget v1, p0, Lo/SectionIndexer;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 558
    iget-object v1, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/airbnb/epoxy/Carousel$Padding;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 559
    iget-object v1, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_6
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarouselNoSnapModel_{hasFixedSize_Boolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/SectionIndexer;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", numViewsToShowOnScreen_Float="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SectionIndexer;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", initialPrefetchItemCount_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SectionIndexer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingRes_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SectionIndexer;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingDp_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SectionIndexer;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", padding_Padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SectionIndexer;->l:Lcom/airbnb/epoxy/Carousel$Padding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", models_List="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SectionIndexer;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
