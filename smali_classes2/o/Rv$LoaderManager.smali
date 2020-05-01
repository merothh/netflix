.class final Lo/Rv$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rv;->e(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lio/reactivex/MaybeSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic e:Lo/Rv;


# direct methods
.method constructor <init>(Lo/Rv;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lo/Rv$LoaderManager;->e:Lo/Rv;

    iput-object p2, p0, Lo/Rv$LoaderManager;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lo/NfcActivityManager$ActionBar;

    invoke-virtual {p0, p1}, Lo/Rv$LoaderManager;->b(Lo/NfcActivityManager$ActionBar;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo/NfcActivityManager$ActionBar;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NfcActivityManager$ActionBar;",
            ")",
            "Lio/reactivex/Maybe<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lo/Rv$LoaderManager;->e:Lo/Rv;

    invoke-static {v0}, Lo/Rv;->b(Lo/Rv;)Lo/ErrorCodes;

    move-result-object v0

    invoke-interface {v0}, Lo/ErrorCodes;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lo/NfcActivityManager$ActionBar;->b()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lo/Rv$LoaderManager;->a:Ljava/io/File;

    invoke-static {p1, v0}, Lo/adE;->d(Ljava/io/File;Ljava/io/File;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toMaybe()Lio/reactivex/Maybe;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lo/NfcActivityManager$ActionBar;->b()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lo/Rv$LoaderManager;->a:Ljava/io/File;

    invoke-static {p1, v0}, Lo/adE;->c(Ljava/io/File;Ljava/io/File;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toMaybe()Lio/reactivex/Maybe;

    move-result-object p1

    :goto_0
    return-object p1
.end method
