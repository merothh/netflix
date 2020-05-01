.class final Lo/AbsSpinner$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsSpinner;->a(Ljava/lang/String;)Lio/reactivex/Single;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Lo/AbsSpinner;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/AbsSpinner;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lo/AbsSpinner$ActionBar;->c:Lo/AbsSpinner;

    iput-object p2, p0, Lo/AbsSpinner$ActionBar;->d:Ljava/lang/String;

    iput-wide p3, p0, Lo/AbsSpinner$ActionBar;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/AbsSpinner$ActionBar;->c([B)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final c([B)Ljava/io/File;
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lo/AbsSpinner$ActionBar;->c:Lo/AbsSpinner;

    iget-object v2, p0, Lo/AbsSpinner$ActionBar;->d:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/AbsSpinner;->a(Lo/AbsSpinner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/io/FileOutputStream;

    .line 87
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-static {v1, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 91
    sget-object p1, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-object v0

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
