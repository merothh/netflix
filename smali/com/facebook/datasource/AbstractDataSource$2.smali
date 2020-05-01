.class Lcom/facebook/datasource/AbstractDataSource$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/AbstractDataSource;->e(Lo/BulkCursorNative;Ljava/util/concurrent/Executor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/facebook/datasource/AbstractDataSource;

.field final synthetic c:Lo/BulkCursorNative;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/facebook/datasource/AbstractDataSource;ZLo/BulkCursorNative;Z)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource$2;->b:Lcom/facebook/datasource/AbstractDataSource;

    iput-boolean p2, p0, Lcom/facebook/datasource/AbstractDataSource$2;->d:Z

    iput-object p3, p0, Lcom/facebook/datasource/AbstractDataSource$2;->c:Lo/BulkCursorNative;

    iput-boolean p4, p0, Lcom/facebook/datasource/AbstractDataSource$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource$2;->d:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$2;->c:Lo/BulkCursorNative;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$2;->b:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lo/BulkCursorNative;->d(Lo/XmlResourceParser;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource$2;->a:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$2;->c:Lo/BulkCursorNative;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$2;->b:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lo/BulkCursorNative;->c(Lo/XmlResourceParser;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$2;->c:Lo/BulkCursorNative;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$2;->b:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lo/BulkCursorNative;->a(Lo/XmlResourceParser;)V

    :goto_0
    return-void
.end method
