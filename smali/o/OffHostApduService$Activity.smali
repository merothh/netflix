.class final Lo/OffHostApduService$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService;->b(Lo/NfcActivityManager$Activity;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/OffHostApduService;

.field final synthetic c:Lo/NfcActivityManager$Activity;


# direct methods
.method constructor <init>(Lo/OffHostApduService;Lo/NfcActivityManager$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$Activity;->b:Lo/OffHostApduService;

    iput-object p2, p0, Lo/OffHostApduService$Activity;->c:Lo/NfcActivityManager$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/xZ;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/xZ;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lo/OffHostApduService$Activity;->b:Lo/OffHostApduService;

    invoke-static {v0, p1}, Lo/OffHostApduService;->a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lo/OffHostApduService$Activity;->c:Lo/NfcActivityManager$Activity;

    invoke-virtual {v0}, Lo/NfcActivityManager$Activity;->d()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lo/OffHostApduService$Activity;->c:Lo/NfcActivityManager$Activity;

    invoke-virtual {v1}, Lo/NfcActivityManager$Activity;->b()I

    move-result v1

    .line 96
    iget-object v2, p0, Lo/OffHostApduService$Activity;->c:Lo/NfcActivityManager$Activity;

    invoke-virtual {v2}, Lo/NfcActivityManager$Activity;->c()I

    move-result v2

    const/4 v3, 0x0

    .line 93
    invoke-interface {p1, v0, v1, v2, v3}, Lo/TransceiveResult;->b(Ljava/lang/String;III)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lo/xZ;

    invoke-virtual {p0, p1}, Lo/OffHostApduService$Activity;->a(Lo/xZ;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
