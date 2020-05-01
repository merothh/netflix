.class public final Lcom/ibm/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/ListFormatter$Cache;,
        Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;,
        Lcom/ibm/icu/text/ListFormatter$Style;
    }
.end annotation


# static fields
.field static cache:Lcom/ibm/icu/text/ListFormatter$Cache;


# instance fields
.field private final end:Ljava/lang/String;

.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private final middle:Ljava/lang/String;

.field private final start:Ljava/lang/String;

.field private final two:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 333
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$Cache;-><init>(Lcom/ibm/icu/text/ListFormatter$1;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->cache:Lcom/ibm/icu/text/ListFormatter$Cache;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/ibm/icu/text/ListFormatter;->two:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/ibm/icu/text/ListFormatter;->start:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/ibm/icu/text/ListFormatter;->middle:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/ibm/icu/text/ListFormatter;->end:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/ibm/icu/text/ListFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 130
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Style;)Lcom/ibm/icu/text/ListFormatter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->cache:Lcom/ibm/icu/text/ListFormatter$Cache;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$Style;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/ListFormatter$Cache;->get(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method format(Ljava/util/Collection;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;I)",
            "Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    .line 220
    new-instance v4, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v4, v5, v6}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    .line 221
    iget-object v5, p0, Lcom/ibm/icu/text/ListFormatter;->start:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne p2, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v5, v6, v7}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    :goto_2
    add-int/lit8 v5, p1, -0x1

    if-ge v3, v5, :cond_3

    .line 223
    iget-object v5, p0, Lcom/ibm/icu/text/ListFormatter;->middle:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne p2, v3, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4, v5, v6, v7}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 225
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter;->end:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v4, p1, v0, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    return-object p1

    .line 218
    :cond_5
    new-instance p1, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-direct {p1, v3, v4}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/ibm/icu/text/ListFormatter;->two:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p1, v3, v0, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    return-object p1

    .line 216
    :cond_8
    new-instance p1, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    .line 214
    :cond_a
    new-instance p1, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    const-string p2, ""

    invoke-direct {p1, p2, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public format(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
