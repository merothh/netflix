.class final Lo/VE$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/UP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/VE;


# direct methods
.method constructor <init>(Lo/VE;)V
    .locals 0

    iput-object p1, p0, Lo/VE$ActionBar;->e:Lo/VE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lo/VE$ActionBar;->e:Lo/VE;

    invoke-virtual {v0}, Lo/VE;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/UP$DialogInterface;->d:Lo/UP$DialogInterface;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lo/VE$ActionBar;->e:Lo/VE;

    invoke-virtual {p1}, Lo/VE;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/VE$ActionBar;->d(Lo/UP;)Z

    move-result p1

    return p1
.end method
