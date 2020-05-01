.class public abstract Lo/alc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alj$StateListAnimator;


# instance fields
.field private final key:Lo/alj$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alj$Application<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/alj$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/alc;->key:Lo/alj$Application;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/alj$StateListAnimator;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1, p2}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->a(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lo/alj$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alj$Application<",
            "*>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/alc;->key:Lo/alj$Application;

    return-object v0
.end method

.method public minusKey(Lo/alj$Application;)Lo/alj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lo/alj;)Lo/alj;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Lo/alj;)Lo/alj;

    move-result-object p1

    return-object p1
.end method
