.class public Lcom/uber/rxdogtag/RxDogTag$Configuration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uber/rxdogtag/RxDogTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# static fields
.field private static final a:Lcom/uber/rxdogtag/ObserverHandler;

.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uber/rxdogtag/ObserverHandler;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 456
    const-class v1, Lio/reactivex/Observable;

    .line 459
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/uber/rxdogtag/DogTagObserver;

    .line 461
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 457
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->b:Ljava/util/Collection;

    .line 463
    new-instance v0, Lcom/uber/rxdogtag/RxDogTag$Configuration$1;

    invoke-direct {v0}, Lcom/uber/rxdogtag/RxDogTag$Configuration$1;-><init>()V

    sput-object v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->a:Lcom/uber/rxdogtag/ObserverHandler;

    return-void
.end method

.method constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Builder;)V
    .locals 2

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iget-boolean v0, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->a:Z

    iput-boolean v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->e:Z

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 472
    sget-object v1, Lcom/uber/rxdogtag/RxDogTag$Configuration;->a:Lcom/uber/rxdogtag/ObserverHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object p1, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->e:Ljava/util/Set;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 475
    sget-object p1, Lcom/uber/rxdogtag/RxDogTag$Configuration;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 476
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->c:Ljava/util/List;

    .line 477
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->d:Ljava/util/Set;

    return-void
.end method
