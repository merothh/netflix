.class Lcom/facebook/datasource/AbstractDataSource$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/AbstractDataSource;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/BulkCursorNative;

.field final synthetic e:Lcom/facebook/datasource/AbstractDataSource;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/AbstractDataSource;Lo/BulkCursorNative;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource$5;->e:Lcom/facebook/datasource/AbstractDataSource;

    iput-object p2, p0, Lcom/facebook/datasource/AbstractDataSource$5;->b:Lo/BulkCursorNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$5;->b:Lo/BulkCursorNative;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$5;->e:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lo/BulkCursorNative;->b(Lo/XmlResourceParser;)V

    return-void
.end method
