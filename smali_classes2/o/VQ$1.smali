.class final Lo/VQ$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VQ;-><init>(Lo/WH;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
        "Lo/UU;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/VQ;


# direct methods
.method constructor <init>(Lo/VQ;)V
    .locals 0

    iput-object p1, p0, Lo/VQ$1;->e:Lo/VQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/UU;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lo/VQ$1;->e:Lo/VQ;

    invoke-virtual {p1}, Lo/VQ;->b()Z

    move-result p1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lo/VQ$1;->a(Lo/UU;)Z

    move-result p1

    return p1
.end method
