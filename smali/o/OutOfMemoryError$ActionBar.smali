.class public final Lo/OutOfMemoryError$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OutOfMemoryError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/OutOfMemoryError;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Lo/OutOfMemoryError;->e()V

    .line 232
    iget-object v0, p1, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    :cond_0
    return-void

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Ljava/util/Collection;)Lo/OutOfMemoryError$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/OutOfMemoryError$ActionBar;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-virtual {p0, v0}, Lo/OutOfMemoryError$ActionBar;->c(Ljava/lang/String;)Lo/OutOfMemoryError$ActionBar;

    goto :goto_0

    :cond_0
    return-object p0

    .line 269
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "categories must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lo/OutOfMemoryError$ActionBar;
    .locals 1

    if-eqz p1, :cond_2

    .line 250
    iget-object v0, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    .line 253
    :cond_0
    iget-object v0, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 247
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "category must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lo/OutOfMemoryError;
    .locals 3

    .line 301
    iget-object v0, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 302
    sget-object v0, Lo/OutOfMemoryError;->a:Lo/OutOfMemoryError;

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    iget-object v1, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    const-string v2, "controlCategories"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 306
    new-instance v1, Lo/OutOfMemoryError;

    iget-object v2, p0, Lo/OutOfMemoryError$ActionBar;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lo/OutOfMemoryError;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v1
.end method

.method public e(Lo/OutOfMemoryError;)Lo/OutOfMemoryError$ActionBar;
    .locals 1

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p1}, Lo/OutOfMemoryError;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/OutOfMemoryError$ActionBar;->b(Ljava/util/Collection;)Lo/OutOfMemoryError$ActionBar;

    return-object p0

    .line 289
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
