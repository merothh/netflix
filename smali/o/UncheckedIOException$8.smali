.class Lo/UncheckedIOException$8;
.super Lo/StringReader;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UncheckedIOException;->g()Lo/StringReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/UncheckedIOException;


# direct methods
.method constructor <init>(Lo/UncheckedIOException;)V
    .locals 0

    .line 2845
    iput-object p1, p0, Lo/UncheckedIOException$8;->a:Lo/UncheckedIOException;

    invoke-direct {p0}, Lo/StringReader;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 2851
    iget-object p1, p0, Lo/UncheckedIOException$8;->a:Lo/UncheckedIOException;

    iget-object p1, p1, Lo/UncheckedIOException;->o:Lo/StringBufferInputStream;

    iget-object v0, p0, Lo/UncheckedIOException$8;->a:Lo/UncheckedIOException;

    iget-object v0, v0, Lo/UncheckedIOException;->o:Lo/StringBufferInputStream;

    invoke-virtual {v0}, Lo/StringBufferInputStream;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lo/StringBufferInputStream;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
