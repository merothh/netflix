.class public Lo/DataSetObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IBulkCursor;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lo/DataSetObserver;->b:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 26
    iget v0, p0, Lo/DataSetObserver;->b:I

    invoke-static {v0}, Lo/DefaultDatabaseErrorHandler;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 22
    iput p2, p0, Lo/DataSetObserver;->b:I

    return-void
.end method
