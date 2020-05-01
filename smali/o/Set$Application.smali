.class Lo/Set$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/Consumer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Set;

.field private d:I


# direct methods
.method private constructor <init>(Lo/Set;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/Set$Application;->b:Lo/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lo/Set$Application;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lo/Set;Lo/Set$3;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/Set$Application;-><init>(Lo/Set;)V

    return-void
.end method


# virtual methods
.method public b()Lo/Consumer;
    .locals 3

    .line 52
    invoke-virtual {p0}, Lo/Set$Application;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/Set$Application;->b:Lo/Set;

    invoke-static {v0}, Lo/Set;->d(Lo/Set;)Lo/Params;

    move-result-object v0

    iget v1, p0, Lo/Set$Application;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/Set$Application;->d:I

    invoke-virtual {v0, v1}, Lo/Params;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Consumer;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 47
    iget v0, p0, Lo/Set$Application;->d:I

    iget-object v1, p0, Lo/Set$Application;->b:Lo/Set;

    invoke-static {v1}, Lo/Set;->d(Lo/Set;)Lo/Params;

    move-result-object v1

    invoke-virtual {v1}, Lo/Params;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/Set$Application;->b()Lo/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
