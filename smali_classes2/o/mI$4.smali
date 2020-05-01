.class Lo/mI$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahu$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/mI;->d()Lo/ahu$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/mI;

.field final synthetic d:Lo/B;

.field e:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lo/mI;Lo/B;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/mI$4;->a:Lo/mI;

    iput-object p2, p0, Lo/mI$4;->d:Lo/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lo/mI$4;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public b()Ljava/io/InputStream;
    .locals 2

    .line 88
    iget-object v0, p0, Lo/mI$4;->e:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lo/mI$4;->d:Lo/B;

    invoke-interface {v1}, Lo/B;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lo/mI$4;->e:Ljava/io/InputStream;

    .line 91
    :cond_0
    iget-object v0, p0, Lo/mI$4;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public d()Ljava/io/OutputStream;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/mI$4;->d:Lo/B;

    invoke-interface {v0}, Lo/B;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
