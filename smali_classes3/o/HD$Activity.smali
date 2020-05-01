.class final Lo/HD$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HD;->x()Lo/HC;
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
        "Lo/GY;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/HD;


# direct methods
.method constructor <init>(Lo/HD;)V
    .locals 0

    iput-object p1, p0, Lo/HD$Activity;->a:Lo/HD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/GY;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    instance-of v0, p1, Lo/GY$Fragment;

    if-eqz v0, :cond_0

    check-cast p1, Lo/GY$Fragment;

    invoke-virtual {p1}, Lo/GY$Fragment;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/HD$Activity;->a:Lo/HD;

    invoke-virtual {v0}, Lo/HD;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lo/HD$Activity;->d(Lo/GY;)Z

    move-result p1

    return p1
.end method
