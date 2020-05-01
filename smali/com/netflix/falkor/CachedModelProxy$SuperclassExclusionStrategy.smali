.class Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;
.super Ljava/lang/Object;
.source "CachedModelProxy.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/CachedModelProxy;)V
    .locals 0

    .prologue
    .line 4338
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$1;)V
    .locals 0

    .prologue
    .line 4338
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;-><init>(Lcom/netflix/falkor/CachedModelProxy;)V

    return-void
.end method

.method private getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 4375
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4379
    :goto_0
    return-object v0

    .line 4377
    :catch_0
    move-exception v0

    .line 4379
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFieldInSuperclass(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4355
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 4358
    :goto_0
    if-eqz v0, :cond_1

    .line 4360
    invoke-direct {p0, v0, p2}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4362
    if-eqz v1, :cond_0

    .line 4363
    const/4 v0, 0x1

    .line 4368
    :goto_1
    return v0

    .line 4365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 4368
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4342
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 2

    .prologue
    .line 4347
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4348
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 4350
    invoke-direct {p0, v1, v0}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;->isFieldInSuperclass(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
