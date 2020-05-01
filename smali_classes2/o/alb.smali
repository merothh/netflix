.class public abstract Lo/alb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alj$Application;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lo/alj$StateListAnimator;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lo/alj$Application<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/alj$StateListAnimator;",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lo/alj$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alj$Application<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/alj$Application;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "TB;>;",
            "Lo/alA<",
            "-",
            "Lo/alj$StateListAnimator;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/alb;->a:Lo/alA;

    .line 52
    instance-of p2, p1, Lo/alb;

    if-eqz p2, :cond_0

    check-cast p1, Lo/alb;

    iget-object p1, p1, Lo/alb;->b:Lo/alj$Application;

    :cond_0
    iput-object p1, p0, Lo/alb;->b:Lo/alj$Application;

    return-void
.end method


# virtual methods
.method public final b(Lo/alj$StateListAnimator;)Lo/alj$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$StateListAnimator;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lo/alb;->a:Lo/alA;

    invoke-interface {v0, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/alj$StateListAnimator;

    return-object p1
.end method

.method public final e(Lo/alj$Application;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    check-cast v0, Lo/alb;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lo/alb;->b:Lo/alj$Application;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
