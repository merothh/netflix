.class Lo/MimeTypeMap$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MimeTypeMap;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/MimeTypeMap;


# direct methods
.method constructor <init>(Lo/MimeTypeMap;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lo/MimeTypeMap$6;->d:Lo/MimeTypeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    iget-object v0, p0, Lo/MimeTypeMap$6;->d:Lo/MimeTypeMap;

    iget-object v0, v0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/JavascriptInterface;

    .line 354
    iget-object v2, p0, Lo/MimeTypeMap$6;->d:Lo/MimeTypeMap;

    invoke-interface {v1, v2}, Lo/JavascriptInterface;->d(Lo/Plugin;)V

    goto :goto_0

    :cond_0
    return-void
.end method
