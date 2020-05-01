.class final Lo/VE$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE;-><init>(Lo/Wu;Lio/reactivex/Observable;Lo/UserManager;)V
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
.field final synthetic d:Lo/VE;


# direct methods
.method constructor <init>(Lo/VE;)V
    .locals 0

    iput-object p1, p0, Lo/VE$4;->d:Lo/VE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)Z
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p1, Lo/UP$CursorFactory;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/VE$4;->d:Lo/VE;

    invoke-static {v2}, Lo/VE;->b(Lo/VE;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Tv;->l()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/VE$4;->a(Lo/UP;)Z

    move-result p1

    return p1
.end method
