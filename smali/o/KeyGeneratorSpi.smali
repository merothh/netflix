.class public final Lo/KeyGeneratorSpi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeyGeneratorSpi$TaskDescription;
    }
.end annotation


# instance fields
.field private final b:Lo/Locale;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/KeyGeneratorSpi$TaskDescription;",
            "Ljava/util/List<",
            "Lo/SealedObject<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final e:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Landroid/content/Context;",
            "Ljava/lang/RuntimeException;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Locale;Lo/alN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Locale;",
            "Lo/alN<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/RuntimeException;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/KeyGeneratorSpi;->b:Lo/Locale;

    iput-object p2, p0, Lo/KeyGeneratorSpi;->e:Lo/alN;

    .line 32
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/KeyGeneratorSpi;->c:Ljava/util/Map;

    return-void
.end method

.method private final a(Landroid/view/View;Ljava/util/List;Lo/BiConsumer;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/BiConsumer<",
            "*>;>(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TT;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 120
    check-cast p2, Ljava/lang/Iterable;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 201
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 200
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 122
    iget-object v3, p0, Lo/KeyGeneratorSpi;->e:Lo/alN;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/airbnb/epoxy/preload/EpoxyPreloadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be found."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/airbnb/epoxy/preload/EpoxyPreloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final a(Lo/ExemptionMechanism;Lo/BiConsumer;Lo/KeyGeneratorSpi$TaskDescription;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/BiConsumer<",
            "*>;U::",
            "Lo/NullCipher;",
            "P::",
            "Lo/KeyGenerator;",
            ">(",
            "Lo/ExemptionMechanism<",
            "TT;TU;TP;>;TT;",
            "Lo/KeyGeneratorSpi$TaskDescription;",
            ")",
            "Ljava/util/List<",
            "Lo/SealedObject<",
            "TU;>;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/KeyGeneratorSpi;->b:Lo/Locale;

    invoke-static {v0}, Lo/UnaryOperator;->c(Lo/Locale;)Lo/Set;

    move-result-object v0

    const-string v1, "adapter.boundViewHoldersInternal()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lo/Consumer;

    const-string v5, "it"

    .line 80
    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v7

    invoke-static {v6, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 84
    iget-object v6, v4, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-static {v6}, Lo/FilterWriter;->C(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    iget-object v6, v4, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-static {v6}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    invoke-virtual {v4}, Lo/Consumer;->getAdapterPosition()I

    move-result v4

    invoke-direct {p0, p1, v5, v4}, Lo/KeyGeneratorSpi;->b(Lo/ExemptionMechanism;Lo/BiConsumer;I)Lo/KeyGeneratorSpi$TaskDescription;

    move-result-object v4

    invoke-static {v4, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 79
    :goto_0
    check-cast v1, Lo/Consumer;

    if-eqz v1, :cond_a

    .line 92
    iget-object p3, v1, Lo/Consumer;->itemView:Landroid/view/View;

    if-eqz p3, :cond_a

    const-string v0, "holderMatch?.itemView ?: return null"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {v1}, Lo/UnaryOperator;->a(Lo/Consumer;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lo/ExemptionMechanism;->c()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {p1}, Lo/ExemptionMechanism;->c()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-direct {p0, p3, v0, p2}, Lo/KeyGeneratorSpi;->a(Landroid/view/View;Ljava/util/List;Lo/BiConsumer;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_3
    instance-of v1, p3, Lo/KeyAgreementSpi;

    if-eqz v1, :cond_4

    move-object v0, p3

    check-cast v0, Lo/KeyAgreementSpi;

    invoke-interface {v0}, Lo/KeyAgreementSpi;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_4
    instance-of v1, v0, Lo/KeyAgreementSpi;

    if-eqz v1, :cond_5

    check-cast v0, Lo/KeyAgreementSpi;

    invoke-interface {v0}, Lo/KeyAgreementSpi;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 103
    :cond_5
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 107
    iget-object v1, p0, Lo/KeyGeneratorSpi;->e:Lo/alN;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "rootView.context"

    invoke-static {p3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/airbnb/epoxy/preload/EpoxyPreloadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No preloadable views were found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/epoxy/preload/EpoxyPreloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p3, v2}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    .line 168
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 175
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 176
    check-cast v1, Landroid/view/View;

    .line 111
    invoke-direct {p0, v1}, Lo/KeyGeneratorSpi;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 177
    invoke-static {p3, v1}, Lo/akz;->c(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 179
    :cond_7
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 189
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 188
    check-cast v1, Landroid/view/View;

    .line 112
    invoke-direct {p0, v1, p1, p2}, Lo/KeyGeneratorSpi;->a(Landroid/view/View;Lo/ExemptionMechanism;Lo/BiConsumer;)Lo/SealedObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 188
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    :cond_9
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_a
    return-object v3
.end method

.method private final a(Landroid/view/View;Lo/ExemptionMechanism;Lo/BiConsumer;)Lo/SealedObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/BiConsumer<",
            "*>;U::",
            "Lo/NullCipher;",
            "P::",
            "Lo/KeyGenerator;",
            ">(",
            "Landroid/view/View;",
            "Lo/ExemptionMechanism<",
            "TT;TU;TP;>;TT;)",
            "Lo/SealedObject<",
            "TU;>;"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance p3, Lo/SealedObject;

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 156
    invoke-virtual {p2, p1}, Lo/ExemptionMechanism;->c(Landroid/view/View;)Lo/NullCipher;

    move-result-object p1

    .line 152
    invoke-direct {p3, v2, v0, v1, p1}, Lo/SealedObject;-><init>(IIILo/NullCipher;)V

    return-object p3

    .line 148
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/KeyGeneratorSpi;->e:Lo/alN;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/airbnb/epoxy/preload/EpoxyPreloadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has zero size. A size must be set to allow preloading."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/airbnb/epoxy/preload/EpoxyPreloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 129
    instance-of v0, p1, Lo/KeyAgreementSpi;

    if-eqz v0, :cond_1

    .line 130
    check-cast p1, Lo/KeyAgreementSpi;

    invoke-interface {p1}, Lo/KeyAgreementSpi;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 211
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 212
    check-cast v1, Landroid/view/View;

    .line 130
    invoke-direct {p0, v1}, Lo/KeyGeneratorSpi;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 213
    invoke-static {v0, v1}, Lo/akz;->c(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 215
    :cond_0
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 132
    :cond_1
    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final b(Lo/ExemptionMechanism;Lo/BiConsumer;I)Lo/KeyGeneratorSpi$TaskDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/BiConsumer<",
            "*>;>(",
            "Lo/ExemptionMechanism<",
            "TT;**>;TT;I)",
            "Lo/KeyGeneratorSpi$TaskDescription;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/KeyGeneratorSpi;->b:Lo/Locale;

    invoke-virtual {v0}, Lo/Locale;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lo/KeyGeneratorSpi;->b:Lo/Locale;

    invoke-virtual {v0}, Lo/Locale;->b()I

    move-result v0

    iget-object v1, p0, Lo/KeyGeneratorSpi;->b:Lo/Locale;

    invoke-virtual {v1}, Lo/Locale;->getItemCount()I

    move-result v1

    invoke-virtual {p2, v0, p3, v1}, Lo/BiConsumer;->a(III)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 61
    :goto_0
    new-instance v0, Lo/KeyGeneratorSpi$TaskDescription;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 64
    invoke-static {p2}, Lo/UnaryOperator;->a(Lo/BiConsumer;)I

    move-result v2

    .line 65
    invoke-virtual {p1, p2}, Lo/ExemptionMechanism;->d(Lo/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    invoke-direct {v0, v1, p3, v2, p1}, Lo/KeyGeneratorSpi$TaskDescription;-><init>(Ljava/lang/Class;IILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final e(Lo/ExemptionMechanism;Lo/BiConsumer;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/BiConsumer<",
            "*>;U::",
            "Lo/NullCipher;",
            "P::",
            "Lo/KeyGenerator;",
            ">(",
            "Lo/ExemptionMechanism<",
            "TT;TU;TP;>;TT;I)",
            "Ljava/util/List<",
            "Lo/SealedObject<",
            "TU;>;>;"
        }
    .end annotation

    const-string v0, "preloader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epoxyModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lo/KeyGeneratorSpi;->b(Lo/ExemptionMechanism;Lo/BiConsumer;I)Lo/KeyGeneratorSpi$TaskDescription;

    move-result-object p3

    .line 43
    iget-object v0, p0, Lo/KeyGeneratorSpi;->c:Ljava/util/Map;

    .line 161
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lo/KeyGeneratorSpi;->a(Lo/ExemptionMechanism;Lo/BiConsumer;Lo/KeyGeneratorSpi$TaskDescription;)Ljava/util/List;

    move-result-object v1

    .line 164
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    instance-of p1, v1, Ljava/util/List;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    return-object v1

    .line 47
    :cond_2
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
