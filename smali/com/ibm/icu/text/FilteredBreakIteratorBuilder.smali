.class public abstract Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    new-instance v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public abstract build(Lcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
