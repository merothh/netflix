.class public Lo/DatabaseObjectNotClosedException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/ObbScanner;

.field private b:Lo/MergeCursor;

.field private final c:Lo/CursorJoiner;

.field private final d:Lo/SQLiteAccessPermException;

.field private e:Lo/IBulkCursor;

.field private f:Lo/SQLiteAbortException;

.field private g:Lo/StaleDataException;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/MatrixCursor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lo/ParameterUtils;


# direct methods
.method public constructor <init>(Lo/ObbScanner;Lo/CursorJoiner;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/DatabaseObjectNotClosedException;->a:Lo/ObbScanner;

    .line 40
    iput-object p2, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    .line 41
    new-instance p1, Lo/SQLiteAccessPermException;

    invoke-direct {p1}, Lo/SQLiteAccessPermException;-><init>()V

    iput-object p1, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    return-void
.end method

.method private b()V
    .locals 4

    .line 129
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->f:Lo/SQLiteAbortException;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lo/SQLiteAbortException;

    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->a:Lo/ObbScanner;

    iget-object v2, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    invoke-direct {v0, v1, v2, p0}, Lo/SQLiteAbortException;-><init>(Lo/ObbScanner;Lo/SQLiteAccessPermException;Lo/DatabaseObjectNotClosedException;)V

    iput-object v0, p0, Lo/DatabaseObjectNotClosedException;->f:Lo/SQLiteAbortException;

    .line 133
    :cond_0
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->g:Lo/StaleDataException;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lo/StaleDataException;

    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->a:Lo/ObbScanner;

    iget-object v2, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    invoke-direct {v0, v1, v2}, Lo/StaleDataException;-><init>(Lo/ObbScanner;Lo/SQLiteAccessPermException;)V

    iput-object v0, p0, Lo/DatabaseObjectNotClosedException;->g:Lo/StaleDataException;

    .line 136
    :cond_1
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->e:Lo/IBulkCursor;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lo/SQLException;

    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    invoke-direct {v0, v1, p0}, Lo/SQLException;-><init>(Lo/SQLiteAccessPermException;Lo/DatabaseObjectNotClosedException;)V

    iput-object v0, p0, Lo/DatabaseObjectNotClosedException;->e:Lo/IBulkCursor;

    .line 139
    :cond_2
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->b:Lo/MergeCursor;

    if-nez v0, :cond_3

    .line 140
    new-instance v0, Lo/MergeCursor;

    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    .line 141
    invoke-virtual {v1}, Lo/CursorJoiner;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/DatabaseObjectNotClosedException;->e:Lo/IBulkCursor;

    invoke-direct {v0, v1, v2}, Lo/MergeCursor;-><init>(Ljava/lang/String;Lo/IBulkCursor;)V

    iput-object v0, p0, Lo/DatabaseObjectNotClosedException;->b:Lo/MergeCursor;

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v1}, Lo/CursorJoiner;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/MergeCursor;->d(Ljava/lang/String;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->j:Lo/ParameterUtils;

    if-nez v0, :cond_4

    .line 147
    new-instance v0, Lo/ParameterUtils;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/PerfMeasurement;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/DatabaseObjectNotClosedException;->g:Lo/StaleDataException;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/DatabaseObjectNotClosedException;->b:Lo/MergeCursor;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lo/ParameterUtils;-><init>([Lo/PerfMeasurement;)V

    iput-object v0, p0, Lo/DatabaseObjectNotClosedException;->j:Lo/ParameterUtils;

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lo/DatabaseObjectNotClosedException;->e()V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lo/DatabaseObjectNotClosedException;->c(Z)V

    .line 155
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {v0}, Lo/SQLiteAccessPermException;->e()V

    return-void
.end method

.method public b(Lo/MatrixCursor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    .line 77
    :cond_1
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 45
    iput-boolean p1, p0, Lo/DatabaseObjectNotClosedException;->i:Z

    if-eqz p1, :cond_2

    .line 47
    invoke-direct {p0}, Lo/DatabaseObjectNotClosedException;->b()V

    .line 48
    iget-object p1, p0, Lo/DatabaseObjectNotClosedException;->e:Lo/IBulkCursor;

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0, p1}, Lo/CursorJoiner;->c(Lo/IBulkCursor;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lo/DatabaseObjectNotClosedException;->f:Lo/SQLiteAbortException;

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0, p1}, Lo/CursorJoiner;->b(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    .line 54
    :cond_1
    iget-object p1, p0, Lo/DatabaseObjectNotClosedException;->j:Lo/ParameterUtils;

    if-eqz p1, :cond_5

    .line 55
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0, p1}, Lo/CursorJoiner;->b(Lo/PerfMeasurement;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lo/DatabaseObjectNotClosedException;->e:Lo/IBulkCursor;

    if-eqz p1, :cond_3

    .line 59
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0, p1}, Lo/CursorJoiner;->b(Lo/IBulkCursor;)V

    .line 61
    :cond_3
    iget-object p1, p0, Lo/DatabaseObjectNotClosedException;->f:Lo/SQLiteAbortException;

    if-eqz p1, :cond_4

    .line 62
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0, p1}, Lo/CursorJoiner;->e(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    .line 64
    :cond_4
    iget-object p1, p0, Lo/DatabaseObjectNotClosedException;->j:Lo/ParameterUtils;

    if-eqz p1, :cond_5

    .line 65
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0, p1}, Lo/CursorJoiner;->d(Lo/PerfMeasurement;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 120
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->c:Lo/CursorJoiner;

    invoke-virtual {v0}, Lo/CursorJoiner;->o()Lo/DdmHandleHeap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lo/DdmHandleHeap;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Lo/DdmHandleHeap;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/SQLiteAccessPermException;->b(I)V

    .line 124
    iget-object v1, p0, Lo/DatabaseObjectNotClosedException;->d:Lo/SQLiteAccessPermException;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/SQLiteAccessPermException;->e(I)V

    :cond_0
    return-void
.end method

.method public d(Lo/SQLiteAccessPermException;I)V
    .locals 2

    .line 94
    invoke-virtual {p1, p2}, Lo/SQLiteAccessPermException;->c(I)V

    .line 95
    iget-boolean v0, p0, Lo/DatabaseObjectNotClosedException;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lo/DatabaseObjectNotClosedException;->d()V

    .line 101
    :cond_1
    invoke-virtual {p1}, Lo/SQLiteAccessPermException;->b()Lo/Observable;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MatrixCursor;

    .line 103
    invoke-interface {v1, p1, p2}, Lo/MatrixCursor;->c(Lo/Observable;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public e(Lo/SQLiteAccessPermException;I)V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lo/DatabaseObjectNotClosedException;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p1}, Lo/SQLiteAccessPermException;->b()Lo/Observable;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lo/DatabaseObjectNotClosedException;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MatrixCursor;

    .line 115
    invoke-interface {v1, p1, p2}, Lo/MatrixCursor;->d(Lo/Observable;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
