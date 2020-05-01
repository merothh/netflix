.class public final Lo/amW$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/amW;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/amW;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/amW;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lo/amW$TaskDescription;->a:Lo/amW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-static {p1}, Lo/amW;->c(Lo/amW;)Lo/anb;

    move-result-object p1

    invoke-interface {p1}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/amW$TaskDescription;->b:Ljava/util/Iterator;

    return-void
.end method

.method private final a()Z
    .locals 4

    .line 269
    iget-object v0, p0, Lo/amW$TaskDescription;->e:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 270
    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lo/amW$TaskDescription;->e:Ljava/util/Iterator;

    .line 272
    :cond_0
    iget-object v0, p0, Lo/amW$TaskDescription;->e:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lo/amW$TaskDescription;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 276
    :cond_1
    iget-object v0, p0, Lo/amW$TaskDescription;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 277
    iget-object v2, p0, Lo/amW$TaskDescription;->a:Lo/amW;

    invoke-static {v2}, Lo/amW;->b(Lo/amW;)Lo/alA;

    move-result-object v2

    iget-object v3, p0, Lo/amW$TaskDescription;->a:Lo/amW;

    invoke-static {v3}, Lo/amW;->a(Lo/amW;)Lo/alA;

    move-result-object v3

    invoke-interface {v3, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iput-object v0, p0, Lo/amW$TaskDescription;->e:Ljava/util/Iterator;

    :cond_2
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 265
    invoke-direct {p0}, Lo/amW$TaskDescription;->a()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lo/amW$TaskDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lo/amW$TaskDescription;->e:Ljava/util/Iterator;

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 260
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
