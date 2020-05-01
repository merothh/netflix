.class public final Lcom/uber/rxdogtag/RxDogTag$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uber/rxdogtag/RxDogTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:Z

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uber/rxdogtag/ObserverHandler;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lcom/uber/rxdogtag/RxDogTag$Builder;->a:Z

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Builder;->c:Ljava/util/List;

    .line 337
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Builder;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lcom/uber/rxdogtag/RxDogTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/uber/rxdogtag/ObserverHandler;",
            ">;)",
            "Lcom/uber/rxdogtag/RxDogTag$Builder;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public c(Lcom/uber/rxdogtag/RxDogTag$Configurer;)Lcom/uber/rxdogtag/RxDogTag$Builder;
    .locals 0

    .line 399
    invoke-interface {p1, p0}, Lcom/uber/rxdogtag/RxDogTag$Configurer;->a(Lcom/uber/rxdogtag/RxDogTag$Builder;)V

    return-object p0
.end method

.method public c(Ljava/util/Collection;)Lcom/uber/rxdogtag/RxDogTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uber/rxdogtag/RxDogTag$Builder;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Builder;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public d()V
    .locals 1

    .line 420
    new-instance v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;

    invoke-direct {v0, p0}, Lcom/uber/rxdogtag/RxDogTag$Configuration;-><init>(Lcom/uber/rxdogtag/RxDogTag$Builder;)V

    invoke-static {v0}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    return-void
.end method

.method public varargs e([Lcom/uber/rxdogtag/ObserverHandler;)Lcom/uber/rxdogtag/RxDogTag$Builder;
    .locals 0

    .line 359
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uber/rxdogtag/RxDogTag$Builder;->a(Ljava/util/Collection;)Lcom/uber/rxdogtag/RxDogTag$Builder;

    move-result-object p1

    return-object p1
.end method
