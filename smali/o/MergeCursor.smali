.class public Lo/MergeCursor;
.super Lo/RequestHandlerThread;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private final d:Lo/IBulkCursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/IBulkCursor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/RequestHandlerThread;-><init>()V

    .line 23
    iput-object p2, p0, Lo/MergeCursor;->d:Lo/IBulkCursor;

    .line 24
    invoke-virtual {p0, p1}, Lo/MergeCursor;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 39
    iget-object p1, p0, Lo/MergeCursor;->d:Lo/IBulkCursor;

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lo/MergeCursor;->a:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lo/DefaultDatabaseErrorHandler;->d(Ljava/lang/String;)I

    move-result v1

    .line 40
    invoke-interface {p1, v0, v1, p3, p2}, Lo/IBulkCursor;->b(Ljava/lang/String;IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/MergeCursor;->a:Ljava/lang/String;

    return-void
.end method
