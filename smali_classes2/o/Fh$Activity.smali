.class final Lo/Fh$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fh;->a(Ljava/lang/String;)V
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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Fh;


# direct methods
.method constructor <init>(Lo/Fh;)V
    .locals 0

    iput-object p1, p0, Lo/Fh$Activity;->e:Lo/Fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/Fh$Activity;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lo/Fh$Activity;->e:Lo/Fh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Fh;->d(Lo/Fh;Z)V

    .line 84
    iget-object p1, p0, Lo/Fh$Activity;->e:Lo/Fh;

    invoke-virtual {p1}, Lo/Fh;->b()V

    return-void
.end method
