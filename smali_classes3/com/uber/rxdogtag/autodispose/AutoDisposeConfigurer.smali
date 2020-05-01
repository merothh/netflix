.class public final Lcom/uber/rxdogtag/autodispose/AutoDisposeConfigurer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/uber/autodispose/AutoDispose;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/uber/rxdogtag/autodispose/AutoDisposeConfigurer;->a:Ljava/util/Set;

    return-void
.end method

.method public static e(Lcom/uber/rxdogtag/RxDogTag$Builder;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/uber/rxdogtag/ObserverHandler;

    .line 45
    sget-object v1, Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;->e:Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    invoke-virtual {p0, v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;->e([Lcom/uber/rxdogtag/ObserverHandler;)Lcom/uber/rxdogtag/RxDogTag$Builder;

    move-result-object p0

    sget-object v0, Lcom/uber/rxdogtag/autodispose/AutoDisposeConfigurer;->a:Ljava/util/Set;

    .line 47
    invoke-virtual {p0, v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;->c(Ljava/util/Collection;)Lcom/uber/rxdogtag/RxDogTag$Builder;

    return-void
.end method
