.class public Lo/ExceptionInInitializerError;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ExceptionInInitializerError;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method final b(Ljava/lang/String;)Lo/Enum;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/ExceptionInInitializerError;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Enum;

    return-object p1
.end method

.method final c(Ljava/lang/String;Lo/Enum;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ExceptionInInitializerError;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Enum;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lo/Enum;->onCleared()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 61
    iget-object v0, p0, Lo/ExceptionInInitializerError;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Enum;

    .line 62
    invoke-virtual {v1}, Lo/Enum;->clear()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lo/ExceptionInInitializerError;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
