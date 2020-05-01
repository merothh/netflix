.class public Lo/SQLException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IBulkCursor;


# instance fields
.field private final a:Lo/DatabaseObjectNotClosedException;

.field private final b:Lo/SQLiteAccessPermException;


# direct methods
.method public constructor <init>(Lo/SQLiteAccessPermException;Lo/DatabaseObjectNotClosedException;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/SQLException;->b:Lo/SQLiteAccessPermException;

    .line 23
    iput-object p2, p0, Lo/SQLException;->a:Lo/DatabaseObjectNotClosedException;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lo/SQLException;->b:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->d(I)V

    .line 33
    iget-object p1, p0, Lo/SQLException;->b:Lo/SQLiteAccessPermException;

    invoke-virtual {p1, p4}, Lo/SQLiteAccessPermException;->d(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lo/SQLException;->a:Lo/DatabaseObjectNotClosedException;

    iget-object p2, p0, Lo/SQLException;->b:Lo/SQLiteAccessPermException;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lo/DatabaseObjectNotClosedException;->d(Lo/SQLiteAccessPermException;I)V

    return-void
.end method
