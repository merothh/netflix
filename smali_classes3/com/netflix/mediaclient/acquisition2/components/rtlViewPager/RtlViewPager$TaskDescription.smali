.class Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;
.super Lo/WordIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;Lo/RSAOtherPrimeInfo;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    .line 270
    invoke-direct {p0, p2}, Lo/WordIterator;-><init>(Lo/RSAOtherPrimeInfo;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 334
    :cond_0
    invoke-super {p0, p1, p2}, Lo/WordIterator;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 286
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/WordIterator;->a(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 278
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/WordIterator;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 291
    invoke-super {p0, p1}, Lo/WordIterator;->b(Ljava/lang/Object;)I

    move-result p1

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    :cond_2
    :goto_1
    return p1
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 310
    :cond_0
    invoke-super {p0, p1}, Lo/WordIterator;->b(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 326
    :cond_0
    invoke-super {p0, p1, p2}, Lo/WordIterator;->b(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 350
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/WordIterator;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public c(I)F
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 318
    :cond_0
    invoke-super {p0, p1}, Lo/WordIterator;->c(I)F

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->d()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 342
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/WordIterator;->c(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method
