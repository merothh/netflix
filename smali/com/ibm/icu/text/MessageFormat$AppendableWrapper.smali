.class final Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppendableWrapper"
.end annotation


# instance fields
.field private app:Ljava/lang/Appendable;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;",
            ">;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 2565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    .line 2567
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    const/4 p1, 0x0

    .line 2568
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 2559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    .line 2561
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    const/4 p1, 0x0

    .line 2562
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;
    .locals 0

    .line 2558
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I
    .locals 0

    .line 2558
    iget p0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    return p0
.end method

.method public static append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I
    .locals 4

    .line 2599
    :try_start_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 2600
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    sub-int v2, v1, v0

    if-ge v0, v1, :cond_0

    .line 2603
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 2605
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return v2

    :catch_0
    move-exception p0

    .line 2610
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2577
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2578
    iget v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2580
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 2586
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 2587
    iget p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2589
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public append(Ljava/text/CharacterIterator;)V
    .locals 2

    .line 2594
    iget v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    return-void
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V
    .locals 10

    .line 2615
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2616
    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2618
    :cond_0
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    .line 2619
    iget p2, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2620
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/text/CharacterIterator;)V

    .line 2622
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 2623
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 2624
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    sub-int/2addr p2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2627
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 2628
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v3

    .line 2629
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2630
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2631
    iget-object v5, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    new-instance v6, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    .line 2633
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    add-int v8, p2, v0

    add-int v9, p2, v3

    invoke-direct {v6, v7, v4, v8, v9}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 2631
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2638
    :cond_1
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    move v0, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 2645
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2647
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public useAttributes()V
    .locals 1

    .line 2572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-void
.end method
